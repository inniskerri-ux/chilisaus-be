import { Resend } from 'resend';

const resend = new Resend(process.env.RESEND_API_KEY);

export async function sendEmail({
  to,
  subject,
  html,
}: {
  to: string | string[];
  subject: string;
  html: string;
}) {
  try {
    const data = await resend.emails.send({
      from: 'Chilisaus.be <noreply@chilisaus.be>', // Assuming verified domain
      to,
      subject,
      html,
    });

    return { success: true, data };
  } catch (error) {
    console.error('[Emails] Failed to send email:', error);
    return { success: false, error };
  }
}

export const SELLER_EMAIL = process.env.SELLER_EMAIL || 'sales@chilisaus.be';
