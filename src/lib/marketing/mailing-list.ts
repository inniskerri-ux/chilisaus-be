import { createClient } from "@supabase/supabase-js";

const supabaseAdmin = createClient(
  process.env.NEXT_PUBLIC_SUPABASE_URL!,
  process.env.SUPABASE_SERVICE_ROLE_KEY!,
);

export async function subscribeToMailingList({
  email,
  firstName,
  lastName,
  source = "manual",
}: {
  email: string;
  firstName?: string;
  lastName?: string;
  source?: "order" | "newsletter_signup" | "mailchimp_import" | "legacy" | "manual";
}) {
  const { error } = await supabaseAdmin.from("mailing_list").upsert(
    {
      email: email.toLowerCase(),
      first_name: firstName || null,
      last_name: lastName || null,
      status: "subscribed",
      source,
      subscribed_at: new Date().toISOString(),
    },
    { onConflict: "email" },
  );

  if (error) {
    console.error("[MailingList] Subscribe failed:", error);
    return { success: false, error };
  }

  return { success: true };
}

export async function unsubscribeFromMailingList(email: string) {
  const { error } = await supabaseAdmin
    .from("mailing_list")
    .update({
      status: "unsubscribed",
      unsubscribed_at: new Date().toISOString(),
    })
    .eq("email", email.toLowerCase());

  if (error) {
    console.error("[MailingList] Unsubscribe failed:", error);
    return { success: false, error };
  }

  return { success: true };
}
