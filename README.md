# Next Commerce Template (Next.js + Supabase SSR + Tailwind + i18n + RTL)

- Generated with official Next.js CLI (Tailwind intact).
- Supabase Auth (email/password) with SSR cookies via @supabase/ssr.
- GDPR-friendly schema with RLS.
- next-intl with locales and RTL (`tailwindcss-rtl`).
- Minimal /shop, /cart, /checkout (checkout is protected).
- Auth pages (/auth/sign-in, /auth/sign-up, /auth/reset-password).

> IMPORTANT: Do not replace Tailwind/PostCSS/tsconfig scaffolds. Extend only.

## First run
1. Verify `.env.local` already contains the Supabase keys you entered during scaffolding.
2. `pnpm dev`

## After user signs up
POST `/api/profile` once to create the `profiles` row for the current user (id = auth.user.id).

## Production
Use `SUPABASE_SERVICE_ROLE_KEY` only in server contexts (never in the browser).
