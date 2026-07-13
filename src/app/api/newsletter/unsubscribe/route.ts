import { NextRequest, NextResponse } from "next/server";
import { verifyUnsubscribeToken } from "@/lib/emails/newsletter-builder";
import { unsubscribeFromMailingList } from "@/lib/marketing/mailing-list";

export async function GET(req: NextRequest) {
  const { searchParams } = new URL(req.url);
  const email = searchParams.get("email");
  const token = searchParams.get("token");

  if (!email || !token || !verifyUnsubscribeToken(email, token)) {
    return new NextResponse("Invalid unsubscribe link.", { status: 400 });
  }

  await unsubscribeFromMailingList(email);

  return new NextResponse(
    `<!DOCTYPE html><html><body style="font-family:sans-serif;text-align:center;padding:60px 20px;">
      <h2>You've been unsubscribed.</h2>
      <p style="color:#666;">You won't receive any more marketing emails from Chilisaus.be.</p>
    </body></html>`,
    { headers: { "Content-Type": "text/html" } },
  );
}
