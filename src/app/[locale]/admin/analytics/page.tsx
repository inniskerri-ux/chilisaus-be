import { requireShopOwner } from "../lib/auth";
import { Suspense } from "react";
import AnalyticsClient from "./AnalyticsClient";

export const dynamic = "force-dynamic";

export default async function AnalyticsPage({
  params,
}: {
  params: Promise<{ locale: string }>;
}) {
  const { locale } = await params;
  const { supabase } = await requireShopOwner(locale);

  const [
    { data: yearsData },
    { data: allProducts },
    { data: salesData },
    { data: legacyStats },
    { count: reviewCount },
    { count: legacyCustomerCount },
    { count: productCount },
  ] = await Promise.all([
    supabase.rpc("get_legacy_order_years"),
    supabase.from("products").select("id, name").eq("is_active", true).order("name"),
    supabase.from("orders").select("total_cents").eq("status", "paid"),
    supabase.rpc("get_legacy_order_stats", { p_year: null }),
    supabase.from("reviews").select("id", { count: "exact", head: true }),
    supabase.from("legacy_customers").select("id", { count: "exact", head: true }),
    supabase.from("products").select("id", { count: "exact", head: true }),
  ]);

  const years = ((yearsData as any[]) ?? []).map((r: any) => Number(r.year)).sort((a, b) => b - a);

  const stripeRevenue = (salesData as any[] ?? []).reduce((acc, o) => acc + o.total_cents, 0);
  const stripeOrders = salesData?.length ?? 0;
  const legacyRow = Array.isArray(legacyStats) ? legacyStats[0] : null;
  const legacyRevenue = Number(legacyRow?.total_revenue ?? 0);
  const legacyOrders = Number(legacyRow?.completed_orders ?? 0);

  return (
    <Suspense>
      <AnalyticsClient
        years={years}
        allProducts={(allProducts ?? []) as { id: string; name: string }[]}
        totalRevenue={stripeRevenue + legacyRevenue}
        stripeRevenue={stripeRevenue}
        legacyRevenue={legacyRevenue}
        totalOrders={stripeOrders + legacyOrders}
        stripeOrders={stripeOrders}
        legacyOrders={legacyOrders}
        reviewCount={reviewCount ?? 0}
        customerCount={legacyCustomerCount ?? 0}
        productCount={productCount ?? 0}
      />
    </Suspense>
  );
}
