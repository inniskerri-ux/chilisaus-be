# Bot & spam protection for all public write/mail endpoints

_Status: audited + planned 2026-09-09, approved by owner, **implemented 2026-09-09**. See the session summary for the full per-file diff; migrations `0168_rate_limiting.sql` and `0169_lock_down_rate_limit_check.sql` are applied to the remote Supabase project. Remaining manual step: set `TURNSTILE_SECRET_KEY` and `NEXT_PUBLIC_TURNSTILE_SITE_KEY` in the deployment environment — sign-up and password-reset fail closed (blocked) until those are configured._

## Context

Chilisaus.be has several unauthenticated (or lightly-authenticated) entry points that write to Supabase or send email, with little to no bot/spam defense today. An audit found:

- **Newsletter signup** (`subscribeToNewsletter` server action) — only a regex email check; no rate limit, no honeypot. A bot can trigger unlimited DOI confirmation emails to any address for free.
- **Sign-up** and **password reset** pages call `supabase.auth.signUp()` / `supabase.auth.resetPasswordForEmail()` **directly from client JS** — no server code of ours runs before the write/email, so today there's no hook point at all for validation, rate limiting, or Turnstile.
- **Review submission** (`ProductReviews.tsx`) inserts into `reviews` directly from the client via the Supabase SDK (RLS-gated, requires login) — no content validation, no rate limit, no hook point either.
- **Checkout** (`createCheckoutSession`), **cart actions** (`addToCart`/`removeFromCart`/`updateCartQuantity`), and **`updateProfile`** are server actions with effectively no input validation and no rate limiting.
- Webhooks (Stripe, Resend), the cron endpoint, and admin-only routes are already properly protected (signature/secret/auth-gated) and are out of scope.
- There is no contact form in this codebase (only a `mailto:` link) — nothing to protect there.

Three decisions were made with the owner during plan approval:
1. **Rate-limit store**: a Supabase Postgres table + atomic RPC (no new infra/service).
2. **Disposable-email detection**: the `disposable-email-domains` npm package, plus a small hand-maintained role-based prefix list (admin@, info@, etc.).
3. **Reviews are in scope**: convert the direct client→Supabase review insert into a server action so the same layered defenses apply.

Goal: add Zod validation, Postgres-backed rate limiting, honeypot + min-time checks, Cloudflare Turnstile (sign-up + password reset only — no other form is "registration"), Origin/Referer checks, disposable/role email rejection (signup + newsletter), and structured rejection logging — server-side, on every endpoint above — without degrading UX for real users (no visible captcha except Turnstile's near-invisible "managed" widget on the two auth forms), plus tests and a new `.env.example`.

## New shared security infrastructure

All new, reusable, framework-agnostic helpers under `src/lib/security/`:

- **`ip.ts`** — `getClientIp()`: reads `x-forwarded-for` (Vercel-populated) from `next/headers`.
- **`rateLimit.ts`** — `checkRateLimit({ key, windowSeconds, maxHits })` calling a new Postgres RPC `rate_limit_check(p_key, p_window_seconds, p_max_hits)` via the existing `createAdminClient()` (`src/lib/supabase/admin.ts`). The RPC does an atomic `INSERT ... ON CONFLICT (key) DO UPDATE` (row lock) that resets the counter if the window has elapsed, otherwise increments, and returns whether the caller is still within `maxHits`. New migration `supabase/migrations/0168_rate_limiting.sql` creates table `rate_limit_hits (key text primary key, window_start timestamptz, hit_count int)` + the function + grants (following the existing grant pattern from migration `0148_grant_data_api_access.sql`).
- **`formGuards.ts`** — `isHoneypotTripped(value)` and `isTooFast(renderedAt, minMs = 2000)`.
- **`turnstile.ts`** — `verifyTurnstile(token, ip)`: POSTs to `https://challenges.cloudflare.com/turnstile/v0/siteverify`; **fails closed** (any error/non-200/missing secret ⇒ `false`).
- **`origin.ts`** — `assertSameOrigin()`: reads `Origin` (falls back to `Referer`) from `next/headers` and compares its host against `NEXT_PUBLIC_SITE_URL` (and the request's own host, to work across preview URLs).
- **`email.ts`** — `isDisposableOrRoleEmail(email)`: checks the domain against `disposable-email-domains`'s exported list, and the local-part against a short hardcoded role-based list (`admin`, `info`, `support`, `sales`, `noreply`, `webmaster`, `postmaster`, `abuse`, `contact`).
- **`log.ts`** — `logRejection({ route, ip, reason })`: `console.warn(JSON.stringify({ event: "security_rejection", timestamp, route, ip, reason }))`. Never includes email/PII in what's returned to the client — callers keep client-facing error strings generic ("Something went wrong, please try again"), reason detail stays server-side only.

Client-side helper `src/components/security/useFormGuard.ts` (a small hook) returns `{ honeypotValue, setHoneypotValue, renderedAt, honeypotFieldProps }` so every form wires up the hidden field + timestamp the same way, and a `src/components/security/TurnstileWidget.tsx` client component that lazy-loads `https://challenges.cloudflare.com/turnstile/v0/api.js` and renders the managed (near-invisible) widget, calling `onVerify(token)`.

## Per-endpoint changes

**Newsletter signup** — `src/app/[locale]/actions/newsletter.ts`: extend `subscribeToNewsletter` to accept `{ email, locale, honeypot, renderedAt }`, validate with a `.strict()` Zod schema, check honeypot/min-time/rate-limit (IP + email)/disposable-email before the existing upsert+email logic. Update `src/components/FooterNewsletterForm.tsx` and `src/components/store/NewsletterPopup.tsx` to use `useFormGuard` and pass the new fields.

**Sign-up** — new `src/app/[locale]/actions/auth.ts` exporting `signUp({ email, password, locale, honeypot, renderedAt, turnstileToken })`: Zod-validate, honeypot/min-time, rate-limit (IP + email), Turnstile verify (fail closed), disposable/role email reject, then call `supabase.auth.signUp()` using `createClient()` from `src/lib/supabase/server.ts` (so the write/email only happens after all checks pass). Update `src/app/[locale]/auth/sign-up/page.tsx` to call this action instead of the direct `supabase.auth.signUp()` call, and render the honeypot field + `TurnstileWidget`.

**Password reset** — same `actions/auth.ts`, add `requestPasswordReset({ email, locale, honeypot, renderedAt, turnstileToken })`: same guard stack minus the disposable-email check (would only false-block legitimate recovery attempts, doesn't reduce abuse since it doesn't gate on account existence). Update `src/app/[locale]/auth/reset-password/page.tsx` similarly.

**Review submission** — new `src/app/[locale]/actions/submitReview.ts` exporting `submitReview({ productId, rating, content, customerName, honeypot, renderedAt })`: uses `createClient()` (cookie-bound, so RLS still applies exactly as today — no admin client), requires `auth.getUser()`, Zod-validates content/rating bounds, honeypot/min-time, rate-limits per user id (not IP, since authenticated). Update `src/components/store/ProductReviews.tsx` to call this action instead of inserting directly via the client SDK; add the honeypot field to the review form.

**Checkout** — `src/app/[locale]/checkout/actions.ts`: Zod-validate the extracted form fields (name/street/city/zip/country/email/locale — reasonable length/format bounds), add an IP rate limit and `assertSameOrigin()` check at the top of `createCheckoutSession`. No honeypot/Turnstile (payment-gated already; per the approved plan table).

**Cart actions** — `src/app/[locale]/cart/actions.ts`: Zod-validate `productId`/`variantId` (uuid), `quantity` (int 1–99), `size`/`color` (short strings) in all three exports; add IP rate limit + `assertSameOrigin()`.

**`updateProfile`** — `src/app/[locale]/actions/updateProfile.ts`: Zod-validate the FormData fields (name/phone/dob/address, with length/format bounds); add a per-user rate limit + `assertSameOrigin()`.

**Newsletter confirm/unsubscribe** (`src/app/api/newsletter/confirm/route.ts`, `src/app/api/newsletter/unsubscribe/route.ts`) — add an IP rate limit on invalid-token attempts and `logRejection` calls for invalid/not-found tokens; no honeypot/Turnstile/Origin (these are GET link-clicks from email clients).

## Dependencies

- **`disposable-email-domains`** (new, small, maintained blocklist) — used by `src/lib/security/email.ts`.
- **`vitest`** (new dev dependency — no test framework exists in this repo today) + `@vitest/coverage-v8` not required; keep it minimal. Used for the required test suite (server actions and `src/lib/security/*` are plain async functions, easy to unit test with mocked Supabase/fetch).
- Zod is already installed (`zod ^4.3.6`) — no new dependency there.

`.env.example` will be created (none exists today) covering all existing secrets found in `.env.local` plus the two new ones: `TURNSTILE_SECRET_KEY`, `NEXT_PUBLIC_TURNSTILE_SITE_KEY`.

## Tests

New `vitest.config.ts` (Node environment, path alias `@` → `src`). Test files colocated under `src/lib/security/__tests__/` and next to the modified actions, covering the four required scenarios per guarded endpoint (newsletter signup + sign-up at minimum, as the two representative flows — one email-only, one with Turnstile):
- Valid submission passes (mocking Supabase/Resend/Turnstile as success).
- Honeypot filled ⇒ rejected, no DB write, no email sent (assert mocks not called).
- Rate limit trips ⇒ rejected once the RPC mock reports over-limit.
- Missing/invalid Turnstile token ⇒ rejected (sign-up/reset-password only), including a network-error-from-Cloudflare case proving fail-closed behavior.

## Verification

- `pnpm install` after adding the two new dependencies.
- `pnpm exec vitest run` for the new test suite.
- `pnpm build` / `pnpm typecheck` (whichever is configured) to confirm no type errors from the new Zod schemas.
- Manually apply the new migration to the local/remote Supabase project (`supabase db push` or `mcp__supabase__apply_migration`) and spot-check `rate_limit_check` via `mcp__supabase__execute_sql`.
- Present the diff per file to the user as required, and call out the two new dependencies explicitly with what they're for.
