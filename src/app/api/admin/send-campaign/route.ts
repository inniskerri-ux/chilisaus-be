import { NextRequest, NextResponse } from "next/server";
import { createClient } from "@supabase/supabase-js";
import { Resend } from "resend";
import { ensureShopOwner } from "@/app/[locale]/admin/lib/auth";
import { generateNewsletterHtml, type Block } from "@/lib/emails/newsletter-builder";

const supabaseAdmin = createClient(
  process.env.NEXT_PUBLIC_SUPABASE_URL!,
  process.env.SUPABASE_SERVICE_ROLE_KEY!,
);

const resend = new Resend(process.env.RESEND_API_KEY);
const AUDIENCE_ID = process.env.RESEND_AUDIENCE_ID!;
const SITE_URL = process.env.NEXT_PUBLIC_SITE_URL || "https://chilisaus.be";

// Resend merge tags — substituted per-recipient when the broadcast sends.
// https://resend.com/docs/api-reference/broadcasts/create-broadcast
const FIRST_NAME_TAG = "{{{contact.first_name|there}}}";
const UNSUBSCRIBE_URL_TAG = "{{{RESEND_UNSUBSCRIBE_URL}}}";

export async function POST(req: NextRequest) {
  const { error: authError, user } = await ensureShopOwner();
  if (authError || !user) {
    const status = authError === "UNAUTHENTICATED" ? 401 : 403;
    const message =
      authError === "MFA_REQUIRED"
        ? "Two-factor authentication required — please complete MFA verification and try again."
        : "Not authorized";
    return NextResponse.json({ error: message }, { status });
  }

  const { subject, previewText, blocks } = (await req.json()) as {
    subject: string;
    previewText?: string;
    blocks: Block[];
  };

  if (!subject || !blocks?.length) {
    return NextResponse.json({ error: "Subject and blocks are required" }, { status: 400 });
  }

  const { count: recipientCount } = await supabaseAdmin
    .from("mailing_list")
    .select("*", { count: "exact", head: true })
    .eq("status", "subscribed");

  const html = generateNewsletterHtml({
    blocks,
    firstName: FIRST_NAME_TAG,
    unsubscribeUrl: UNSUBSCRIBE_URL_TAG,
    siteUrl: SITE_URL,
  });

  const { data, error } = await resend.broadcasts.create({
    segmentId: AUDIENCE_ID,
    from: "Chilisaus.be <sales@chilisaus.be>",
    subject,
    previewText,
    html,
    send: true,
  });

  if (error || !data) {
    console.error("[SendCampaign] Resend broadcast failed:", error);
    await supabaseAdmin.from("campaigns").insert({
      subject,
      preview_text: previewText || null,
      blocks,
      status: "failed",
      recipient_count: recipientCount || 0,
      created_by: user.id,
    });
    return NextResponse.json({ error: "Failed to send broadcast" }, { status: 500 });
  }

  await supabaseAdmin.from("campaigns").insert({
    subject,
    preview_text: previewText || null,
    blocks,
    status: "sent",
    sent_at: new Date().toISOString(),
    recipient_count: recipientCount || 0,
    created_by: user.id,
    resend_broadcast_id: data.id,
  });

  return NextResponse.json({ success: true, broadcastId: data.id, recipientCount });
}
