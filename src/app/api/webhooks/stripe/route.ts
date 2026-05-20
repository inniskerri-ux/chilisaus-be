"use server";

import { NextRequest, NextResponse } from "next/server";
import { getStripeServerClient } from "@/lib/stripe/server";
import { createClient } from "@supabase/supabase-js";
import { sendEmail, SELLER_EMAIL } from "@/lib/emails/client";
import {
  getPackingSlipHtml,
  getOrderConfirmationHtml,
  getLowStockEmailHtml,
} from "@/lib/emails/templates";
import { subscribeToMailingList } from "@/lib/marketing/mailing-list";
import { calculateTaxFromTotal } from "@/lib/checkout/pricing";

const stripe = getStripeServerClient();

// Use service role key to bypass RLS for webhook
const supabaseAdmin = createClient(
  process.env.NEXT_PUBLIC_SUPABASE_URL!,
  process.env.SUPABASE_SERVICE_ROLE_KEY!,
);

export async function POST(req: NextRequest) {
  console.log("[Webhook] POST received");

  const body = await req.text();
  const signature = req.headers.get("stripe-signature");

  if (!signature) {
    console.error("[Webhook] Missing stripe-signature header");
    return NextResponse.json({ error: "No signature" }, { status: 400 });
  }

  const secretInUse = process.env.STRIPE_WEBHOOK_SECRET_STAGING
    ? "STRIPE_WEBHOOK_SECRET_STAGING"
    : "STRIPE_WEBHOOK_SECRET";
  console.log(`[Webhook] Verifying signature using ${secretInUse}`);

  let event;
  try {
    event = stripe.webhooks.constructEvent(
      body,
      signature,
      (process.env.STRIPE_WEBHOOK_SECRET_STAGING ?? process.env.STRIPE_WEBHOOK_SECRET)!,
    );
  } catch (err: any) {
    console.error(`[Webhook] Signature verification failed: ${err.message}`);
    await supabaseAdmin.from("webhook_logs").insert({
      source: "stripe",
      status: "failed",
      error: `Signature verification failed: ${err.message}`,
      payload: { raw_body_length: body.length },
    });
    return NextResponse.json(
      { error: `Webhook Error: ${err.message}` },
      { status: 400 },
    );
  }

  console.log(`[Webhook] Event verified: ${event.type} (${event.id})`);

  // Log receipt immediately so we have a record even if processing fails
  const { data: logEntry } = await supabaseAdmin
    .from("webhook_logs")
    .insert({
      source: "stripe",
      event_id: event.id,
      event_type: event.type,
      status: "received",
      payload: event.data.object,
    })
    .select("id")
    .single();

  const logId = logEntry?.id;

  if (event.type === "checkout.session.completed") {
    const session = event.data.object as any;
    console.log(`[Webhook] Processing checkout.session.completed — session: ${session.id}, total: ${session.amount_total}`);

    try {
      await handleOrderCompleted(session);
      console.log(`[Webhook] Order processing complete for session ${session.id}`);
      if (logId) await supabaseAdmin.from("webhook_logs").update({ status: "processed" }).eq("id", logId);
      return NextResponse.json({ received: true });
    } catch (error: any) {
      console.error("[Webhook] Order processing failed:", error);
      if (logId) await supabaseAdmin.from("webhook_logs").update({ status: "failed", error: error?.message ?? String(error) }).eq("id", logId);
      return NextResponse.json(
        { error: "Order processing failed" },
        { status: 500 },
      );
    }
  }

  console.log(`[Webhook] Unhandled event type: ${event.type} — ignoring`);
  if (logId) await supabaseAdmin.from("webhook_logs").update({ status: "processed" }).eq("id", logId);
  return NextResponse.json({ received: true });
}

async function handleOrderCompleted(session: any) {
  const {
    customer_details,
    shipping_details,
    metadata,
    amount_total,
    amount_subtotal,
    shipping_cost,
    total_details,
  } = session;

  const cartSessionId = metadata?.cart_session_id;
  const userId = metadata?.user_id;
  console.log(`[Webhook] cart_session_id: ${cartSessionId}, user_id: ${userId || "guest"}`);

  // Check if a promotion code was used
  const discount = total_details?.breakdown?.discounts?.[0]?.discount;
  const promoCodeId = discount?.promotion_code;
  const promoCodeStr = promoCodeId
    ? (await stripe.promotionCodes.retrieve(promoCodeId)).code
    : null;

  if (promoCodeId) {
    console.log(`[Webhook] Promo code used: ${promoCodeStr}`);
    const { error: rpcError } = await supabaseAdmin.rpc("increment_voucher_redemption", {
      p_promo_code_id: promoCodeId,
    });
    if (rpcError) console.error("[Webhook] Failed to increment voucher redemption:", rpcError);
  }

  // Fetch full session with line items
  console.log(`[Webhook] Fetching full session with line items for ${session.id}`);
  const fullSession = await stripe.checkout.sessions.retrieve(session.id, {
    expand: ["line_items.data.price.product"],
  });

  const lineItems = fullSession.line_items?.data || [];
  console.log(`[Webhook] Line items fetched: ${lineItems.length} item(s)`);

  // Prepare order data
  const subtotalCents = amount_subtotal || 0;
  const shippingCents = shipping_cost?.amount_total || 0;
  const totalCents = amount_total || 0;
  const taxCents = calculateTaxFromTotal(subtotalCents);
  console.log(`[Webhook] Order totals — subtotal: ${subtotalCents}, shipping: ${shippingCents}, tax: ${taxCents}, total: ${totalCents}`);

  // Store order in database
  console.log("[Webhook] Inserting order into DB");
  const { data: order, error: orderError } = await supabaseAdmin
    .from("orders")
    .insert({
      user_id: userId,
      stripe_session_id: session.id,
      stripe_payment_intent_id: session.payment_intent,
      status: "paid",
      voucher_code: promoCodeStr,
      subtotal_cents: subtotalCents,
      shipping_cents: shippingCents,
      tax_cents: taxCents,
      total_cents: totalCents,
      customer_email: customer_details.email,
      shipping_name: shipping_details.name,
      shipping_street: shipping_details.address.line1,
      shipping_city: shipping_details.address.city,
      shipping_postal_code: shipping_details.address.postal_code,
      shipping_country: shipping_details.address.country,
      currency: session.currency.toUpperCase(),
    })
    .select()
    .single();

  if (orderError) {
    console.error("[Webhook] Order insert failed:", orderError);
    throw orderError;
  }
  console.log(`[Webhook] Order created: ${order.id}`);

  // Store order items
  const orderItems = lineItems
    .filter((item: any) => item.price.product.name !== "Shipping")
    .map((item: any) => ({
      order_id: order.id,
      product_name: item.price.product.name,
      quantity: item.quantity,
      price_cents: item.amount_total,
      tax_cents: calculateTaxFromTotal(item.amount_total),
    }));

  console.log(`[Webhook] Inserting ${orderItems.length} order item(s)`);
  const { error: itemsError } = await supabaseAdmin
    .from("order_items")
    .insert(orderItems);
  if (itemsError) {
    console.error("[Webhook] Order items insert failed:", itemsError);
    throw itemsError;
  }
  console.log("[Webhook] Order items inserted");

  // Update inventory and check for low stock
  for (const item of lineItems as any[]) {
    const productName = item.price?.product?.name;
    if (!productName || productName === "Shipping") continue;

    console.log(`[Webhook] Reducing stock: "${productName}" x${item.quantity}`);
    const { data: updatedProduct, error: stockError } = await supabaseAdmin.rpc(
      "reduce_stock",
      { p_name: productName, p_quantity: item.quantity },
    );

    if (stockError) {
      console.error(`[Webhook] Stock reduction failed for "${productName}":`, stockError);
    } else if (updatedProduct) {
      console.log(`[Webhook] Stock updated for "${productName}": ${updatedProduct.stock} remaining`);

      if (updatedProduct.stock <= updatedProduct.low_stock_threshold) {
        console.log(`[Webhook] Low stock alert for "${productName}" (${updatedProduct.stock} left)`);
        await sendEmail({
          to: SELLER_EMAIL,
          subject: `⚠️ Low Stock Alert: ${productName}`,
          html: getLowStockEmailHtml(productName, updatedProduct.stock),
        });

        const { data: owners } = await supabaseAdmin
          .from("profiles")
          .select("id")
          .eq("role", "shop_owner");

        if (owners?.length) {
          const notifications = owners.map((owner) => ({
            user_id: owner.id,
            title: "Low Stock Alert",
            message: `Product "${productName}" is running low (${updatedProduct.stock} left).`,
            type: "warning",
          }));
          await supabaseAdmin.from("notifications").insert(notifications);
        }
      }
    }
  }

  // Send emails
  const emailPayload = {
    id: order.id,
    customerEmail: order.customer_email,
    shippingName: order.shipping_name,
    shippingStreet: order.shipping_street,
    shippingCity: order.shipping_city,
    shippingPostalCode: order.shipping_postal_code,
    shippingCountry: order.shipping_country,
    subtotalCents: order.subtotal_cents,
    shippingCents: order.shipping_cents,
    taxCents: order.tax_cents,
    totalCents: order.total_cents,
    items: orderItems.map((item: any) => ({
      name: item.product_name,
      quantity: item.quantity,
      priceCents: item.price_cents,
      taxCents: item.tax_cents,
    })),
  };

  console.log(`[Webhook] Sending packing slip to seller (${SELLER_EMAIL})`);
  const packingSlipResult = await sendEmail({
    to: SELLER_EMAIL,
    subject: `[Packing Slip] Order #${order.id} - ${order.shipping_name}`,
    html: getPackingSlipHtml(emailPayload),
  });
  console.log(`[Webhook] Packing slip result:`, packingSlipResult.success ? "sent" : `failed — ${packingSlipResult.error}`);

  console.log(`[Webhook] Sending order confirmation to customer`);
  const confirmationResult = await sendEmail({
    to: order.customer_email,
    subject: `Order Confirmation - Chilisaus.be (#${order.id})`,
    html: getOrderConfirmationHtml(emailPayload),
  });
  console.log(`[Webhook] Confirmation result:`, confirmationResult.success ? "sent" : `failed — ${confirmationResult.error}`);

  // Add to mailing list
  console.log("[Webhook] Subscribing customer to mailing list");
  const mailingResult = await subscribeToMailingList({
    email: order.customer_email,
    firstName: order.shipping_name.split(" ")[0],
    source: "order",
  });
  console.log(`[Webhook] Mailing list result:`, mailingResult.success ? "subscribed" : `failed — ${mailingResult.error}`);

  // Clean up cart
  if (cartSessionId) {
    console.log(`[Webhook] Clearing cart for session ${cartSessionId}`);
    const { error: cartError } = await supabaseAdmin
      .from("cart_items")
      .delete()
      .eq("cart_session_id", cartSessionId);
    if (cartError) console.error("[Webhook] Cart cleanup failed:", cartError);
    else console.log("[Webhook] Cart cleared");
  } else {
    console.log("[Webhook] No cart_session_id in metadata — skipping cart cleanup");
  }
}
