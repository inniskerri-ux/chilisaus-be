import { requireShopOwner } from "../lib/auth";
import OrdersClient from "./OrdersClient";
import { ShoppingBag } from "lucide-react";

function mapLegacyStatus(wcStatus: string): string {
  switch (wcStatus) {
    case "wc-completed":  return "shipped";
    case "wc-cancelled":  return "cancelled";
    case "wc-refunded":   return "refunded";
    case "wc-processing": return "paid";
    default:              return "paid";
  }
}

export default async function AdminOrdersPage({
  params,
}: {
  params: Promise<{ locale: string }>;
}) {
  const { locale } = await params as { locale: string };
  const { supabase } = await requireShopOwner(locale);

  const [{ data: orders }, { data: legacyOrders }] = await Promise.all([
    supabase
      .from("orders")
      .select("id, order_number, customer_email, shipping_name, shipping_country, total_cents, currency, status, created_at")
      .order("created_at", { ascending: false })
      .limit(500),
    supabase
      .from("legacy_orders")
      .select("id, wc_order_id, customer_email, billing_first_name, billing_last_name, billing_country, total_cents, currency, status, ordered_at")
      .order("ordered_at", { ascending: false })
      .limit(1000),
  ]);

  const normalizedLegacy = (legacyOrders ?? []).map((lo) => ({
    id: lo.id as string,
    order_number: null as number | null,
    wc_order_id: lo.wc_order_id as number,
    customer_email: (lo.customer_email ?? "") as string,
    shipping_name: ([lo.billing_first_name, lo.billing_last_name].filter(Boolean).join(" ") || null) as string | null,
    shipping_country: (lo.billing_country ?? null) as string | null,
    total_cents: lo.total_cents as number,
    currency: lo.currency as string,
    status: mapLegacyStatus(lo.status as string),
    created_at: lo.ordered_at ? `${lo.ordered_at}T12:00:00Z` : new Date().toISOString(),
    source: "legacy" as const,
  }));

  const allOrders = [
    ...(orders ?? []).map((o) => ({ ...o, wc_order_id: null as number | null, source: "new" as const })),
    ...normalizedLegacy,
  ].sort((a, b) => new Date(b.created_at).getTime() - new Date(a.created_at).getTime());

  return (
    <div className="space-y-6">
      <div className="flex items-center gap-3">
        <div className="bg-zinc-100 p-2 rounded-lg">
          <ShoppingBag size={20} className="text-zinc-600" />
        </div>
        <div>
          <h1 className="text-2xl font-bold text-zinc-900">Orders</h1>
          <p className="text-sm text-zinc-400">{allOrders.length} total orders</p>
        </div>
      </div>

      <OrdersClient orders={allOrders} locale={locale} />
    </div>
  );
}
