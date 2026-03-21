import { NextRequest, NextResponse } from "next/server";
import { createClient } from "@supabase/supabase-js";
import { verifyUnsubscribeToken } from "@/lib/emails/newsletter-builder";

const supabaseAdmin = createClient(
  process.env.NEXT_PUBLIC_SUPABASE_URL!,
  process.env.SUPABASE_SERVICE_ROLE_KEY!,
);

export async function GET(req: NextRequest) {
  const { searchParams } = new URL(req.url);
  const email = searchParams.get("email");
  const token = searchParams.get("token");

  if (!email || !token || !verifyUnsubscribeToken(email, token)) {
    return new NextResponse("Invalid unsubscribe link.", { status: 400 });
  }

  await supabaseAdmin
    .from("mailing_list")
    .update({ status: "unsubscribed", unsubscribed_at: new Date().toISOString() })
    .eq("email", email.toLowerCase());

  return new NextResponse(
    `<!DOCTYPE html><html><body style="font-family:sans-serif;text-align:center;padding:60px 20px;">
      <h2>You've been unsubscribed.</h2>
      <p style="color:#666;">You won't receive any more marketing emails from Chilisaus.be.</p>
    </body></html>`,
    { headers: { "Content-Type": "text/html" } },
  );
}
