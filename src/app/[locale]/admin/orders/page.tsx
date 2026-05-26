import { requireShopOwner } from "../lib/auth";
import OrdersClient from "./OrdersClient";
import { ShoppingBag } from "lucide-react";

export default async function AdminOrdersPage({
  params,
}: {
  params: Promise<{ locale: string }>;
}) {
  const { locale } = await params as { locale: string };
  const { supabase } = await requireShopOwner(locale);

  const { data: orders } = await supabase
    .from("orders")
    .select(
      "id, order_number, customer_email, shipping_name, shipping_country, total_cents, currency, status, created_at"
    )
    .order("created_at", { ascending: false });

  return (
    <div className="space-y-6">
      <div className="flex items-center gap-3">
        <div className="bg-zinc-100 p-2 rounded-lg">
          <ShoppingBag size={20} className="text-zinc-600" />
        </div>
        <div>
          <h1 className="text-2xl font-bold text-zinc-900">Orders</h1>
          <p className="text-sm text-zinc-400">{orders?.length ?? 0} total orders</p>
        </div>
      </div>

      <OrdersClient orders={(orders as any) ?? []} locale={locale} />
    </div>
  );
}
