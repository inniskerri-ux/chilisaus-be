'use server';

import { revalidatePath } from 'next/cache';
import { ensureShopOwner } from '../lib/auth';
import { createCampaign, setCampaignContent } from '@/lib/marketing/mailchimp';

export async function createNewsletter(formData: FormData) {
  const { error } = await ensureShopOwner();
  if (error) return { error: 'Not authorized' };

  const title = formData.get('title')?.toString() || '';
  const subject = formData.get('subject')?.toString() || '';
  const previewText = formData.get('previewText')?.toString() || '';
  const content = formData.get('content')?.toString() || '';
  const fromName = formData.get('fromName')?.toString() || 'Chilisaus.be';
  const replyTo = formData.get('replyTo')?.toString() || 'sales@chilisaus.be';

  if (!title || !subject || !content) {
    return { error: 'Title, subject, and content are required' };
  }

  // 1. Create the campaign
  const campaignResult = await createCampaign({
    title,
    subject,
    previewText,
    fromName,
    replyTo
  });

  if (!campaignResult.success || !campaignResult.campaign) {
    return { error: 'Failed to create campaign in Mailchimp' };
  }

  // 2. Set the content
  const contentResult = await setCampaignContent(campaignResult.campaign.id, content);

  if (!contentResult.success) {
    return { error: 'Campaign created but failed to set content' };
  }

  revalidatePath('/admin/marketing');
  return { success: true, campaignId: campaignResult.campaign.id };
}
