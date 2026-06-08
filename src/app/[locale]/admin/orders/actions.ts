"use server";

import { revalidatePath } from "next/cache";
import { ensureShopOwner } from "../lib/auth";
import { sendEmail } from "@/lib/emails/client";
import { getShippingConfirmationHtml } from "@/lib/emails/templates";

type OrderStatus = "pending" | "paid" | "shipped" | "cancelled" | "refunded";

export type Carrier = "postnl" | "bpost" | "dhl" | "dpd" | "other";

function getTrackingUrl(
  carrier: Carrier,
  trackingNumber: string,
  shippingCountry?: string | null,
  shippingPostalCode?: string | null,
): string | null {
  switch (carrier) {
    case "postnl": {
      const barcode = encodeURIComponent(trackingNumber);
      if (shippingCountry && shippingPostalCode) {
        const country = shippingCountry.toUpperCase();
        const zip = shippingPostalCode.replace(/\s/g, "").toUpperCase();
        return `https://tracking.postnl.nl/track-and-trace/${barcode}-${country}-${zip}`;
      }
      return `https://tracking.postnl.nl/track-and-trace/${barcode}`;
    }
    case "bpost":
      return `https://track.bpost.cloud/btr/web/#/search?itemCode=${encodeURIComponent(trackingNumber)}&lang=en`;
    case "dhl":
      return `https://www.dhl.com/be-en/home/tracking.html?tracking-id=${encodeURIComponent(trackingNumber)}`;
    case "dpd":
      return `https://www.dpd.com/be/en/receiving-a-parcel/tracking/?parcelCode=${encodeURIComponent(trackingNumber)}`;
    default:
      return null;
  }
}

export async function updateOrderStatus(orderId: string, status: OrderStatus) {
  const { error: authError, supabase } = await ensureShopOwner();
  if (authError || !supabase) return { error: authError ?? "Forbidden" };

  const { error } = await supabase
    .from("orders")
    .update({ status, updated_at: new Date().toISOString() })
    .eq("id", orderId);

  if (error) return { error: error.message };

  revalidatePath("/[locale]/admin/orders", "page");
  revalidatePath(`/[locale]/admin/orders/${orderId}`, "page");
  return { error: null };
}

export async function markOrderShipped(
  orderId: string,
  trackingNumber: string,
  carrier: Carrier
) {
  const { error: authError, supabase } = await ensureShopOwner();
  if (authError || !supabase) return { error: authError ?? "Forbidden" };

  // Fetch full order + items for the email
  const { data: order, error: fetchError } = await supabase
    .from("orders")
    .select("*, order_items(*)")
    .eq("id", orderId)
    .single();

  if (fetchError || !order) return { error: fetchError?.message ?? "Order not found" };

  const trackingUrl = trackingNumber
    ? getTrackingUrl(carrier, trackingNumber, order.shipping_country, order.shipping_postal_code)
    : null;

  // Update status + tracking info
  const { error: updateError } = await supabase
    .from("orders")
    .update({
      status: "shipped",
      tracking_number: trackingNumber || null,
      tracking_carrier: carrier,
      updated_at: new Date().toISOString(),
    })
    .eq("id", orderId);

  if (updateError) return { error: updateError.message };

  // Send shipping confirmation email to customer
  const items = ((order.order_items as any[]) ?? []).map((item: any) => ({
    name: item.product_name,
    quantity: item.quantity,
    priceCents: item.price_cents,
    imageUrl: item.image_url ?? undefined,
  }));

  const firstName = (order.shipping_name ?? "").split(" ")[0] || "there";

  const emailResult = await sendEmail({
    to: order.customer_email,
    subject: `Your Chilisaus.be order #${order.order_number ? String(order.order_number).padStart(4, "0") : orderId.slice(0, 8).toUpperCase()} is on its way!`,
    html: getShippingConfirmationHtml({
      firstName,
      orderNumber: order.order_number ?? null,
      orderId,
      items,
      totalCents: order.total_cents,
      currency: order.currency ?? "EUR",
      shippingName: order.shipping_name ?? "",
      shippingStreet: order.shipping_street ?? "",
      shippingPostalCode: order.shipping_postal_code ?? "",
      shippingCity: order.shipping_city ?? "",
      shippingCountry: order.shipping_country ?? "",
      trackingNumber: trackingNumber || null,
      trackingCarrier: carrier,
      trackingUrl,
    }),
  });

  revalidatePath("/[locale]/admin/orders", "page");
  revalidatePath(`/[locale]/admin/orders/${orderId}`, "page");

  return {
    error: null,
    emailSent: emailResult.success,
  };
}
