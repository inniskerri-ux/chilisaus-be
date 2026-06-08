import { notFound } from "next/navigation";
import Link from "next/link";
import { requireShopOwner } from "../../../lib/auth";
import { formatPrice } from "@/lib/format";
import { ArrowLeft, Mail, MapPin, Package, ShoppingBag } from "lucide-react";

const WC_STATUS: Record<string, { label: string; className: string }> = {
  "wc-completed":  { label: "Completed",  className: "bg-blue-50 text-blue-700 border-blue-200" },
  "wc-cancelled":  { label: "Cancelled",  className: "bg-red-50 text-red-600 border-red-200" },
  "wc-refunded":   { label: "Refunded",   className: "bg-orange-50 text-orange-700 border-orange-200" },
  "wc-processing": { label: "Processing", className: "bg-green-50 text-green-700 border-green-200" },
};

export default async function LegacyOrderDetailPage({
  params,
}: {
  params: Promise<{ locale: string; id: string }>;
}) {
  const { locale, id } = await params;
  const { supabase } = await requireShopOwner(locale);

  const { data: order } = await supabase
    .from("legacy_orders")
    .select("*, legacy_order_items(*)")
    .eq("id", id)
    .single();

  if (!order) notFound();

  const status = WC_STATUS[order.status] ?? { label: order.status, className: "bg-zinc-50 text-zinc-500 border-zinc-200" };
  const items = (order.legacy_order_items as any[]) ?? [];
  const billingName = [order.billing_first_name, order.billing_last_name].filter(Boolean).join(" ") || "—";
  const shippingName = [order.shipping_first_name, order.shipping_last_name].filter(Boolean).join(" ") || billingName;

  return (
    <div className="space-y-6 max-w-3xl">
      {/* Back + header */}
      <div>
        <Link
          href={`/${locale}/admin/orders`}
          className="inline-flex items-center gap-1.5 text-xs font-bold text-zinc-400 hover:text-brand-red transition-colors mb-4"
        >
          <ArrowLeft size={13} />
          Back to Orders
        </Link>

        <div className="flex items-start justify-between gap-4 flex-wrap">
          <div className="flex items-center gap-3">
            <div className="bg-zinc-100 p-2 rounded-lg">
              <ShoppingBag size={20} className="text-zinc-600" />
            </div>
            <div>
              <div className="flex items-center gap-2 flex-wrap">
                <h1 className="text-2xl font-bold text-zinc-900">Order #WC-{order.wc_order_id}</h1>
                <span className="text-[10px] font-bold uppercase tracking-wide px-1.5 py-0.5 rounded bg-zinc-100 text-zinc-400 border border-zinc-200">
                  WooCommerce
                </span>
              </div>
              {order.ordered_at && (
                <p className="text-sm text-zinc-400">
                  {new Date(order.ordered_at).toLocaleDateString("en-GB", {
                    weekday: "long",
                    day: "numeric",
                    month: "long",
                    year: "numeric",
                  })}
                </p>
              )}
            </div>
          </div>
          <span className={`text-xs font-bold uppercase px-3 py-1 rounded-full border ${status.className}`}>
            {status.label}
          </span>
        </div>
      </div>

      <div className="grid grid-cols-1 sm:grid-cols-2 gap-5">
        {/* Customer */}
        <div className="rounded-xl border border-border bg-white p-5 space-y-3">
          <h2 className="text-xs font-bold uppercase tracking-widest text-zinc-400 flex items-center gap-2">
            <Mail size={12} /> Customer
          </h2>
          <div className="space-y-1 text-sm">
            <p className="font-bold text-zinc-900">{billingName}</p>
            {order.customer_email && (
              <a href={`mailto:${order.customer_email}`} className="text-brand-red hover:underline block">
                {order.customer_email}
              </a>
            )}
            {order.billing_phone && <p className="text-zinc-500">{order.billing_phone}</p>}
            {order.payment_method && (
              <p className="text-xs text-zinc-400 mt-1">Paid via {order.payment_method}</p>
            )}
          </div>
        </div>

        {/* Shipping address */}
        <div className="rounded-xl border border-border bg-white p-5 space-y-3">
          <h2 className="text-xs font-bold uppercase tracking-widest text-zinc-400 flex items-center gap-2">
            <MapPin size={12} /> Shipping Address
          </h2>
          <div className="space-y-0.5 text-sm text-zinc-700">
            <p className="font-semibold">{shippingName}</p>
            {order.shipping_company && <p className="text-zinc-400">{order.shipping_company}</p>}
            <p>{[order.shipping_address_1, order.shipping_address_2].filter(Boolean).join(", ") || "—"}</p>
            <p>{[order.shipping_postcode, order.shipping_city].filter(Boolean).join(" ") || "—"}</p>
            <p className="font-medium">{order.shipping_country || "—"}</p>
          </div>
        </div>
      </div>

      {/* Order items */}
      <div className="rounded-xl border border-border bg-white overflow-hidden">
        <div className="px-5 py-4 border-b border-zinc-100 flex items-center gap-2">
          <Package size={15} className="text-zinc-500" />
          <h2 className="font-bold text-sm text-zinc-900">Items ({items.length})</h2>
        </div>

        {items.length === 0 ? (
          <p className="px-5 py-6 text-sm text-zinc-400">No line items recorded for this order.</p>
        ) : (
          <div className="divide-y divide-zinc-100">
            {items.map((item: any) => (
              <div key={item.id} className="px-5 py-4 flex items-center gap-4">
                <div className="w-10 h-10 rounded-lg bg-zinc-100 shrink-0 flex items-center justify-center text-lg">
                  🌶️
                </div>
                <div className="flex-1 min-w-0">
                  <p className="font-semibold text-sm text-zinc-900 truncate">{item.product_name}</p>
                  <p className="text-xs text-zinc-400">Qty: {item.quantity}</p>
                </div>
                <div className="text-right shrink-0">
                  <p className="font-bold text-sm text-zinc-900">
                    {formatPrice(item.price_cents * item.quantity, order.currency)}
                  </p>
                  {item.quantity > 1 && (
                    <p className="text-xs text-zinc-400">
                      {formatPrice(item.price_cents, order.currency)} each
                    </p>
                  )}
                </div>
              </div>
            ))}
          </div>
        )}

        {/* Totals */}
        <div className="px-5 py-4 border-t border-zinc-100 bg-zinc-50 space-y-2">
          {order.shipping_cents > 0 && (
            <div className="flex justify-between text-sm text-zinc-600">
              <span>Shipping</span>
              <span>{formatPrice(order.shipping_cents, order.currency)}</span>
            </div>
          )}
          {order.discount_cents > 0 && (
            <div className="flex justify-between text-sm text-green-700">
              <span>Discount</span>
              <span>−{formatPrice(order.discount_cents, order.currency)}</span>
            </div>
          )}
          <div className="flex justify-between font-bold text-base text-zinc-900 pt-2 border-t border-zinc-200">
            <span>Total</span>
            <span>{formatPrice(order.total_cents, order.currency)}</span>
          </div>
        </div>
      </div>

      {/* Reference */}
      <div className="rounded-xl border border-border bg-white p-5">
        <h2 className="text-xs font-bold uppercase tracking-widest text-zinc-400 mb-3">Reference</h2>
        <div className="space-y-2 text-xs text-zinc-500 font-mono">
          <div className="flex gap-2">
            <span className="text-zinc-400 font-sans font-bold uppercase tracking-wider w-28 shrink-0">WC Order ID</span>
            <span>{order.wc_order_id}</span>
          </div>
          {order.completed_at && (
            <div className="flex gap-2">
              <span className="text-zinc-400 font-sans font-bold uppercase tracking-wider w-28 shrink-0">Completed</span>
              <span>{new Date(order.completed_at).toLocaleDateString("en-GB")}</span>
            </div>
          )}
          <div className="flex gap-2">
            <span className="text-zinc-400 font-sans font-bold uppercase tracking-wider w-28 shrink-0">Internal ID</span>
            <span className="select-all">{order.id}</span>
          </div>
        </div>
      </div>
    </div>
  );
}
