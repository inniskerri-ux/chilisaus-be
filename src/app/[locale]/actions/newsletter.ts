'use server';

import { createClient } from '@supabase/supabase-js';
import { sendEmail } from '@/lib/emails/client';
import { getNewsletterVerificationHtml } from '@/lib/emails/templates';
import crypto from 'crypto';
import { headers } from 'next/headers';

// Admin client to manage signups table
const supabaseAdmin = createClient(
  process.env.NEXT_PUBLIC_SUPABASE_URL!,
  process.env.SUPABASE_SERVICE_ROLE_KEY!
);

export async function subscribeToNewsletter(email: string, locale: string) {
  if (!email || !email.includes('@')) {
    return { error: 'Invalid email address' };
  }

  try {
    // 1. Check if already confirmed or exists
    const { data: existing } = await supabaseAdmin
      .from('newsletter_signups')
      .select('confirmed_at')
      .eq('email', email)
      .maybeSingle();

    if (existing?.confirmed_at) {
      return { error: 'This email is already subscribed!' };
    }

    // 2. Generate DOI token
    const token = crypto.randomBytes(32).toString('hex');
    const origin = (await headers()).get('origin');
    const confirmUrl = `${origin}/api/newsletter/confirm?token=${token}&locale=${locale}`;

    // 3. Upsert signup record
    const { error: upsertError } = await supabaseAdmin
      .from('newsletter_signups')
      .upsert({ email, token, confirmed_at: null }, { onConflict: 'email' });

    if (upsertError) throw upsertError;

    // 4. Send Verification Email
    const { success, error: emailError } = await sendEmail({
      to: email,
      subject: 'Action Required: Confirm your spicy subscription 🌶️',
      html: getNewsletterVerificationHtml(confirmUrl),
    });

    if (!success) {
      console.error('[Newsletter] Email send failed:', emailError);
      return { error: 'Failed to send confirmation email. Please try again.' };
    }

    return { success: true };
  } catch (err: any) {
    console.error('[Newsletter] Error:', err);
    return { error: 'Something went wrong. Please try again later.' };
  }
}
