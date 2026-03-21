import { createClient } from "@supabase/supabase-js";
import EmailBuilder from "./EmailBuilder";

const supabaseAdmin = createClient(
  process.env.NEXT_PUBLIC_SUPABASE_URL!,
  process.env.SUPABASE_SERVICE_ROLE_KEY!,
);

export default async function NewCampaignPage({
  params,
}: {
  params: Promise<{ locale: string }>;
}) {
  const { locale } = await params;

  const [{ data: products }, { count: subscriberCount }] = await Promise.all([
    supabaseAdmin
      .from("products")
      .select("id, name, slug, image_url, price_cents")
      .eq("is_active", true)
      .order("name"),
    supabaseAdmin
      .from("mailing_list")
      .select("*", { count: "exact", head: true })
      .eq("status", "subscribed"),
  ]);

  return (
    <div className="py-6">
      <EmailBuilder
        locale={locale}
        products={products || []}
        subscriberCount={subscriberCount || 0}
      />
    </div>
  );
}
