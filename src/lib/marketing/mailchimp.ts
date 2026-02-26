import mailchimp from '@mailchimp/mailchimp_marketing';
import crypto from 'crypto';

mailchimp.setConfig({
  apiKey: process.env.MAILCHIMP_API_KEY,
  server: process.env.MAILCHIMP_SERVER_PREFIX, // e.g. us1
});

const AUDIENCE_ID = process.env.MAILCHIMP_AUDIENCE_ID;

export async function subscribeUser({
  email,
  firstName,
  lastName,
  tags = [],
}: {
  email: string;
  firstName?: string;
  lastName?: string;
  tags?: string[];
}) {
  if (!AUDIENCE_ID) {
    console.warn('[Mailchimp] Audience ID not configured');
    return { success: false, error: 'Not configured' };
  }

  try {
    const subscriberHash = crypto.createHash('md5').update(email.toLowerCase()).digest('hex');

    await mailchimp.lists.setListMember(AUDIENCE_ID, subscriberHash, {
      email_address: email,
      status_if_new: 'subscribed',
      merge_fields: {
        FNAME: firstName || '',
        LNAME: lastName || '',
      },
    });

    if (tags.length > 0) {
      await mailchimp.lists.updateListMemberTags(AUDIENCE_ID, subscriberHash, {
        tags: tags.map(tag => ({ name: tag, status: 'active' })),
      });
    }

    return { success: true };
  } catch (error) {
    console.error('[Mailchimp] Subscription failed:', error);
    return { success: false, error };
  }
}

export async function addOrderToMailchimp(orderData: any) {
  // Mailchimp E-commerce API could be used here for more advanced segments
  // For now, we just tag them as 'customer'
  return subscribeUser({
    email: orderData.customerEmail,
    firstName: orderData.shippingName.split(' ')[0],
    tags: ['customer', 'purchaser'],
  });
}
