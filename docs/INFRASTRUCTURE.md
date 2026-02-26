# Infrastructure & Deployment Notes

## DNS Configuration (chilisaus.be)

Add these records to your DNS provider (e.g., Cloudflare, Namecheap) to verify your domain for Resend email delivery.

### Resend / Amazon SES Verification

| Type | Name | Content / Value | TTL | Priority |
| :--- | :--- | :--- | :--- | :--- |
| **TXT** | `resend._domainkey` | `p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDXVXgIq3Ce+R4M4t+/+XwytSgcru1OxEoVYyKgCf1bfo5coBqqguSU7N8mMm872rLAf529qllNEPKmSNCqo8zU8xHzggTavDAhQihocDzd3fdraADydS8HxiEU5LWmifxYE/sCix6zXwNBKkq/gdN7wgtZ+uOUFJmmshkB968HyQIDAQAB` | Auto | - |
| **MX** | `send` | `feedback-smtp.eu-west-1.amazonses.com` | Auto | 10 |
| **TXT** | `send` | `v=spf1 include:amazonses.com ~all` | Auto | - |

---

## Required Environment Variables (Vercel)

Ensure these are set in your Vercel project settings for the production build.

### Payments (Stripe)
- `STRIPE_SECRET_KEY`: Your Stripe secret key (`sk_live_...`).
- `STRIPE_WEBHOOK_SECRET`: Obtained after adding the webhook endpoint in Stripe Dashboard.

### Emails (Resend)
- `RESEND_API_KEY`: Your Resend API key.
- `SELLER_EMAIL`: The email address where packing slips are sent (`sales@chilisaus.be`).

### Marketing (Mailchimp)
- `MAILCHIMP_API_KEY`: Your Mailchimp API key.
- `MAILCHIMP_SERVER_PREFIX`: Your Mailchimp server prefix (e.g., `us1`).
- `MAILCHIMP_AUDIENCE_ID`: The ID of your Mailchimp audience list.

### Database (Supabase)
- `NEXT_PUBLIC_SUPABASE_URL`: Your project URL.
- `NEXT_PUBLIC_SUPABASE_ANON_KEY`: Your public anon key.
- `SUPABASE_SERVICE_ROLE_KEY`: **CRITICAL** for webhooks (bypass RLS).
