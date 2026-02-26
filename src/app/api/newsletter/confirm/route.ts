import { NextRequest, NextResponse } from 'next/server';
import { createClient } from '@supabase/supabase-js';
import { sendEmail } from '@/lib/emails/client';
import { getNewsletterWelcomeHtml } from '@/lib/emails/templates';
import { subscribeUser } from '@/lib/marketing/mailchimp';

const supabaseAdmin = createClient(
  process.env.NEXT_PUBLIC_SUPABASE_URL!,
  process.env.SUPABASE_SERVICE_ROLE_KEY!
);

export async function GET(req: NextRequest) {
  const { searchParams } = new URL(req.url);
  const token = searchParams.get('token');
  const locale = searchParams.get('locale') || 'en';

  if (!token) {
    return NextResponse.redirect(new URL(`/${locale}?error=invalid_token`, req.url));
  }

  try {
    // 1. Verify token and find signup
    const { data: signup, error: fetchError } = await supabaseAdmin
      .from('newsletter_signups')
      .select('*')
      .eq('token', token)
      .maybeSingle();

    if (fetchError || !signup) {
      return NextResponse.redirect(new URL(`/${locale}?error=not_found`, req.url));
    }

    if (signup.confirmed_at) {
      return NextResponse.redirect(new URL(`/${locale}?status=already_confirmed`, req.url));
    }

    // 2. Update status to confirmed
    await supabaseAdmin
      .from('newsletter_signups')
      .update({ confirmed_at: new Date().toISOString() })
      .eq('id', signup.id);

    // 3. Subscribe to Mailchimp
    await subscribeUser({
      email: signup.email,
      tags: ['newsletter', 'confirmed'],
    });

    // 4. Send Welcome Email with Voucher Code
    // We assume WELCOME10 exists in Stripe/Vouchers
    const voucherCode = 'WELCOME10';
    await sendEmail({
      to: signup.email,
      subject: 'Welcome! Here is your 10% discount code 🎁',
      html: getNewsletterWelcomeHtml(voucherCode),
    });

    // 5. Redirect to home with success state
    return NextResponse.redirect(new URL(`/${locale}?status=newsletter_confirmed`, req.url));

  } catch (err) {
    console.error('[Newsletter Confirm] Error:', err);
    return NextResponse.redirect(new URL(`/${locale}?error=server_error`, req.url));
  }
}
