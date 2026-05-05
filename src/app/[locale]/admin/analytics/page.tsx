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

  const { data: yearsData } = await supabase.rpc("get_legacy_order_years");
  const years = ((yearsData as any[]) ?? []).map((r: any) => Number(r.year)).sort((a, b) => b - a);

  const { data: allProducts } = await supabase
    .from("products")
    .select("id, name")
    .eq("is_active", true)
    .order("name");

  return (
    <Suspense>
      <AnalyticsClient
        years={years}
        allProducts={(allProducts ?? []) as { id: string; name: string }[]}
      />
    </Suspense>
  );
}
