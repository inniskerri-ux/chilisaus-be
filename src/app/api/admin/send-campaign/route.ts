import { NextRequest, NextResponse } from "next/server";
import { createClient } from "@supabase/supabase-js";
import { createServerClient } from "@supabase/ssr";
import { cookies } from "next/headers";
import { Resend } from "resend";
import {
  generateNewsletterHtml,
  generateUnsubscribeToken,
  type Block,
} from "@/lib/emails/newsletter-builder";

const supabaseAdmin = createClient(
  process.env.NEXT_PUBLIC_SUPABASE_URL!,
  process.env.SUPABASE_SERVICE_ROLE_KEY!,
);

const resend = new Resend(process.env.RESEND_API_KEY);
const SITE_URL = process.env.NEXT_PUBLIC_SITE_URL || "https://chilisaus.be";
const BATCH_SIZE = 50;

export async function POST(req: NextRequest) {
  // Auth check
  const cookieStore = await cookies();
  const supabase = createServerClient(
    process.env.NEXT_PUBLIC_SUPABASE_URL!,
    process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!,
    { cookies: { getAll: () => cookieStore.getAll() } },
  );

  const { data: { user } } = await supabase.auth.getUser();
  if (!user) return NextResponse.json({ error: "Unauthorized" }, { status: 401 });

  const { data: profile } = await supabaseAdmin
    .from("profiles")
    .select("role")
    .eq("id", user.id)
    .single();

  if (profile?.role !== "shop_owner") {
    return NextResponse.json({ error: "Forbidden" }, { status: 403 });
  }

  const { subject, previewText, blocks } = (await req.json()) as {
    subject: string;
    previewText?: string;
    blocks: Block[];
  };

  if (!subject || !blocks?.length) {
    return NextResponse.json({ error: "Subject and blocks are required" }, { status: 400 });
  }

  // Fetch all subscribed contacts
  const { data: subscribers, error: subError } = await supabaseAdmin
    .from("mailing_list")
    .select("email, first_name")
    .eq("status", "subscribed");

  if (subError || !subscribers) {
    return NextResponse.json({ error: "Failed to fetch subscribers" }, { status: 500 });
  }

  // Send in batches
  let sent = 0;
  let failed = 0;

  for (let i = 0; i < subscribers.length; i += BATCH_SIZE) {
    const batch = subscribers.slice(i, i + BATCH_SIZE);

    const emails = batch.map((sub) => {
      const token = generateUnsubscribeToken(sub.email);
      const unsubscribeUrl = `${SITE_URL}/api/newsletter/unsubscribe?email=${encodeURIComponent(sub.email)}&token=${token}`;

      return {
        from: "Chilisaus.be <sales@chilisaus.be>",
        to: sub.email,
        subject,
        html: generateNewsletterHtml({
          blocks,
          firstName: sub.first_name || undefined,
          unsubscribeUrl,
          siteUrl: SITE_URL,
        }),
        headers: {
          "List-Unsubscribe": `<${unsubscribeUrl}>`,
        },
      };
    });

    try {
      await resend.batch.send(emails);
      sent += batch.length;
    } catch {
      failed += batch.length;
    }
  }

  // Store campaign record
  await supabaseAdmin.from("campaigns").insert({
    subject,
    preview_text: previewText || null,
    blocks,
    status: failed === subscribers.length ? "failed" : "sent",
    sent_at: new Date().toISOString(),
    recipient_count: sent,
    created_by: user.id,
  });

  return NextResponse.json({ success: true, sent, failed });
}
