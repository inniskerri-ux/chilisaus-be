import { NextRequest, NextResponse } from 'next/server';
import { getStripeServerClient } from '@/lib/stripe/server';
import { createClient } from '@supabase/supabase-js';
import { sendEmail, SELLER_EMAIL } from '@/lib/emails/client';
import { getPackingSlipHtml, getOrderConfirmationHtml, getLowStockEmailHtml } from '@/lib/emails/templates';
import { subscribeUser } from '@/lib/marketing/mailchimp';
import { calculateTaxFromTotal } from '@/lib/checkout/pricing';

const stripe = getStripeServerClient();

// Use service role key to bypass RLS for webhook
const supabaseAdmin = createClient(
  process.env.NEXT_PUBLIC_SUPABASE_URL!,
  process.env.SUPABASE_SERVICE_ROLE_KEY!
);

export async function POST(req: NextRequest) {
  const body = await req.text();
  const signature = req.headers.get('stripe-signature');

  if (!signature) {
    return NextResponse.json({ error: 'No signature' }, { status: 400 });
  }

  let event;
  try {
    event = stripe.webhooks.constructEvent(
      body,
      signature,
      process.env.STRIPE_WEBHOOK_SECRET!
    );
  } catch (err: any) {
    console.error(`[Stripe Webhook] Error: ${err.message}`);
    return NextResponse.json({ error: `Webhook Error: ${err.message}` }, { status: 400 });
  }

  if (event.type === 'checkout.session.completed') {
    const session = event.data.object as any;

    try {
      // 1. Process the order
      await handleOrderCompleted(session);
      return NextResponse.json({ received: true });
    } catch (error) {
      console.error('[Stripe Webhook] Error processing order:', error);
      return NextResponse.json({ error: 'Order processing failed' }, { status: 500 });
    }
  }

  return NextResponse.json({ received: true });
}

async function handleOrderCompleted(session: any) {
  const { customer_details, shipping_details, metadata, amount_total, amount_subtotal, shipping_cost, total_details } = session;

  const cartSessionId = metadata?.cart_session_id;
  const userId = metadata?.user_id;

  // Check if a promotion code was used
  const promoCodeId = total_details?.breakdown?.discounts?.[0]?.discount?.promotion_code;
  if (promoCodeId) {
    // Increment redemption count in Supabase
    await supabaseAdmin
      .rpc('increment_voucher_redemption', { p_promo_code_id: promoCodeId });
  }

  // 2. Fetch full session with line items
  const fullSession = await stripe.checkout.sessions.retrieve(session.id, {
    expand: ['line_items.data.price.product'],
  });

  const lineItems = fullSession.line_items?.data || [];

  // 3. Prepare order data
  const subtotalCents = amount_subtotal || 0;
  const shippingCents = shipping_cost?.amount_total || 0;
  const totalCents = amount_total || 0;
  const taxCents = calculateTaxFromTotal(subtotalCents);

  // 4. Store order in database
  const { data: order, error: orderError } = await supabaseAdmin
    .from('orders')
    .insert({
      user_id: userId,
      stripe_session_id: session.id,
      stripe_payment_intent_id: session.payment_intent,
      status: 'paid',
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

  if (orderError) throw orderError;

  // 5. Store order items
  const orderItems = lineItems
    .filter((item: any) => item.price.product.name !== 'Shipping')
    .map((item: any) => ({
      order_id: order.id,
      product_name: item.price.product.name,
      quantity: item.quantity,
      price_cents: item.amount_total, // Note: this is quantity * unit_amount
      tax_cents: calculateTaxFromTotal(item.amount_total),
    }));

  const { error: itemsError } = await supabaseAdmin.from('order_items').insert(orderItems);
  if (itemsError) throw itemsError;

  // 6. Update Inventory and Check for Low Stock
  for (const item of lineItems) {
    if (item.price.product.name === 'Shipping') continue;
    
    // We use the product metadata or name to find the product
    // Note: Stripe product name is usually reliable if we don't have ID in metadata
    const productName = item.price.product.name;
    const quantitySold = item.quantity;

    // Use a transaction-like update with RPC or separate calls
    const { data: updatedProduct, error: stockError } = await supabaseAdmin.rpc('reduce_stock', {
      p_name: productName,
      p_quantity: quantitySold
    });

    if (!stockError && updatedProduct) {
      // Check for low stock alert
      if (updatedProduct.stock <= updatedProduct.low_stock_threshold) {
        // 6a. Send Low Stock Email
        await sendEmail({
          to: SELLER_EMAIL,
          subject: `⚠️ Low Stock Alert: ${productName}`,
          html: getLowStockEmailHtml(productName, updatedProduct.stock),
        });

        // 6b. Create In-App Notification
        // First find the shop owner(s)
        const { data: owners } = await supabaseAdmin
          .from('profiles')
          .select('id')
          .eq('role', 'shop_owner');

        if (owners) {
          const notifications = owners.map(owner => ({
            user_id: owner.id,
            title: 'Low Stock Alert',
            message: `Product "${productName}" is running low (${updatedProduct.stock} left).`,
            type: 'warning'
          }));
          await supabaseAdmin.from('notifications').insert(notifications);
        }
      }
    }
  }

  // 7. Send Emails
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

  // 6a. Packing Slip to Seller
  await sendEmail({
    to: SELLER_EMAIL,
    subject: `[Packing Slip] Order #${order.id} - ${order.shipping_name}`,
    html: getPackingSlipHtml(emailPayload),
  });

  // 6b. Confirmation to Purchaser
  await sendEmail({
    to: order.customer_email,
    subject: `Order Confirmation - Chilisaus.be (#${order.id})`,
    html: getOrderConfirmationHtml(emailPayload),
  });

  // 7. Sync to Mailchimp
  await subscribeUser({
    email: order.customer_email,
    firstName: order.shipping_name.split(' ')[0],
    tags: ['customer', 'purchaser'],
  });

  // 8. Clean up cart (optional but recommended)
  if (cartSessionId) {
    await supabaseAdmin.from('cart_items').delete().eq('cart_session_id', cartSessionId);
  }
}
