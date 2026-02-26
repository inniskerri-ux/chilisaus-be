'use server';

import { getStripeServerClient } from '@/lib/stripe/server';
import { createClient } from '@/lib/supabase/server';
import { calculateShippingCost } from '@/lib/checkout/pricing';
import { calculatePackageWeight } from '@/lib/shipping/config';
import { headers, cookies } from 'next/headers';
import { redirect } from 'next/navigation';

export async function createCheckoutSession(formData: FormData) {
  const stripe = getStripeServerClient();
  const supabase = await createClient();

  // 1. Get current cart session
  const { data: { session } } = await supabase.auth.getSession();
  const cartSessionId = (await cookies()).get('cart_session_id')?.value;

  if (!cartSessionId) {
    throw new Error('No cart found');
  }

  // 2. Fetch cart items
  const { data: cartItems, error } = await supabase
    .from('cart_items')
    .select('*, product:products(*)')
    .eq('cart_session_id', cartSessionId);

  if (error || !cartItems?.length) {
    throw new Error('Cart is empty');
  }

  // 3. Calculate shipping (assume default/local for now, or get from form)
  const countryCode = formData.get('country') as string || 'BEL';
  const itemsForWeight = cartItems.map(item => ({
    productName: item.product.name,
    quantity: item.quantity,
    capacityMl: item.product.capacity_ml,
    selectedSize: item.selected_size,
    weightGrams: item.product.weight_grams,
  }));
  
  const weightKg = calculatePackageWeight(itemsForWeight);
  const subtotalCents = cartItems.reduce((acc, item) => acc + (item.product.price_cents * item.quantity), 0);
  const shippingCents = calculateShippingCost(countryCode, weightKg, subtotalCents);

  // 4. Create Stripe Session
  const origin = (await headers()).get('origin');
  const locale = formData.get('locale') as string || 'en';

  const lineItems = cartItems.map(item => ({
    price_data: {
      currency: 'eur',
      product_data: {
        name: item.product.name,
        description: item.product.description || '',
        images: item.product.image_url ? [item.product.image_url] : [],
      },
      unit_amount: item.product.price_cents,
    },
    quantity: item.quantity,
  }));

  // Add shipping as a line item if not free
  if (shippingCents > 0) {
    lineItems.push({
      price_data: {
        currency: 'eur',
        product_data: {
          name: 'Shipping',
        },
        unit_amount: shippingCents,
      },
      quantity: 1,
    });
  }

  const stripeSession = await stripe.checkout.sessions.create({
    payment_method_types: ['card', 'ideal', 'bancontact'],
    line_items: lineItems,
    mode: 'payment',
    success_url: `${origin}/${locale}/checkout/success?session_id={CHECKOUT_SESSION_ID}`,
    cancel_url: `${origin}/${locale}/cart`,
    customer_email: session?.user?.email,
    metadata: {
      cart_session_id: cartSessionId,
      user_id: session?.user?.id || '',
      locale,
    },
    shipping_address_collection: {
      allowed_countries: ['BE', 'NL', 'DE', 'FR', 'LU', 'AT', 'ES', 'IT', 'DK', 'PL', 'CZ'],
    },
  });

  if (!stripeSession.url) {
    throw new Error('Failed to create stripe session');
  }

  redirect(stripeSession.url);
}
