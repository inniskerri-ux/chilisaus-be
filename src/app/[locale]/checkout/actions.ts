"use server";

import { getStripeServerClient } from "@/lib/stripe/server";
import { createClient } from "@/lib/supabase/server";
import { createAdminClient } from "@/lib/supabase/admin";
import { calculateShippingCost } from "@/lib/checkout/pricing";
import { getEffectivePriceCents } from "@/lib/pricing";
import { calculatePackageWeight } from "@/lib/shipping/config";
import { headers, cookies } from "next/headers";
import { redirect } from "next/navigation";

const COUNTRY_CODE_MAP: Record<string, string> = {
  BEL: "BE", NLD: "NL", DEU: "DE", FRA: "FR", LUX: "LU",
  AUT: "AT", DNK: "DK", ITA: "IT", ESP: "ES", POL: "PL", CZE: "CZ",
  SWE: "SE", PRT: "PT", GBR: "GB", IRL: "IE", MLT: "MT",
  NOR: "NO", FIN: "FI", BGR: "BG", ROU: "RO", SVK: "SK",
  SVN: "SI", LTU: "LT", LVA: "LV", CYP: "CY", GRC: "GR",
  USA: "US",
};

export async function createCheckoutSession(formData: FormData) {
  console.log("[Checkout] createCheckoutSession called");
  const stripe = getStripeServerClient();
  const supabase = await createClient();

  // 1. Get current cart session
  const {
    data: { user },
  } = await supabase.auth.getUser();
  const cartSessionId = (await cookies()).get("cart_session_id")?.value;

  if (!cartSessionId) {
    console.error("[Checkout] No cart_session_id cookie found");
    throw new Error("No cart found");
  }
  console.log(`[Checkout] cart_session_id: ${cartSessionId}, user: ${user?.id || "guest"}`);

  // 2. Collect address from form
  const countryCode = (formData.get("country") as string) || "BEL";
  const country2 = COUNTRY_CODE_MAP[countryCode] || countryCode;
  const shippingName = (formData.get("name") as string) || "";
  const shippingStreet = (formData.get("street") as string) || "";
  const shippingCity = (formData.get("city") as string) || "";
  const shippingPostalCode = (formData.get("zip") as string) || "";
  const customerEmail = (formData.get("email") as string) || user?.email || "";

  // 3. Fetch cart items
  const adminSupabase = createAdminClient();
  const { data: cartItems, error } = await adminSupabase
    .from("cart_items")
    .select("*, product:products(*), variant:product_variants(id, label, price_cents, sale_price_cents, weight_grams)")
    .eq("cart_session_id", cartSessionId);

  if (error || !cartItems?.length) {
    console.error("[Checkout] Cart fetch failed or empty:", error);
    throw new Error("Cart is empty");
  }
  console.log(`[Checkout] Cart has ${cartItems.length} item(s)`);

  // 4. Calculate shipping
  const itemsForWeight = cartItems.map((item) => ({
    productName: item.product.name,
    quantity: item.quantity,
    capacityMl: item.product.capacity_ml,
    selectedSize: item.selected_size,
    weightGrams: (item.variant as any)?.weight_grams ?? item.product.weight_grams,
  }));

  const weightKg = calculatePackageWeight(itemsForWeight);
  const subtotalCents = cartItems.reduce(
    (acc, item) => acc + getEffectivePriceCents(item.product, item.variant as any) * item.quantity,
    0,
  );
  const shippingCents = calculateShippingCost(countryCode, weightKg, subtotalCents);
  console.log(`[Checkout] country: ${countryCode}, weight: ${weightKg}kg, subtotal: ${subtotalCents}, shipping: ${shippingCents}`);

  // 5. Build line items
  const origin = (await headers()).get("origin");
  const locale = (formData.get("locale") as string) || "en";

  const lineItems = cartItems.map((item) => {
    const variantLabel = (item.variant as any)?.label;
    return {
      price_data: {
        currency: "eur",
        product_data: {
          name: variantLabel ? `${item.product.name} (${variantLabel})` : item.product.name,
          ...(item.product.description ? { description: item.product.description } : {}),
          images: item.product.image_url ? [item.product.image_url] : [],
          metadata: { product_id: item.product.id },
        },
        unit_amount: getEffectivePriceCents(item.product, item.variant as any),
      },
      quantity: item.quantity,
    };
  });

  if (shippingCents > 0) {
    lineItems.push({
      price_data: {
        currency: "eur",
        product_data: { name: "Shipping", images: [], metadata: { product_id: "" } },
        unit_amount: shippingCents,
      },
      quantity: 1,
    });
  }

  // 6. Create Stripe session — address collected on our form, not in Stripe
  // Omitting payment_method_types lets Stripe show all Dashboard-enabled methods automatically
  const stripeSession = await stripe.checkout.sessions.create({
    line_items: lineItems,
    mode: "payment",
    allow_promotion_codes: true,
    success_url: `${origin}/${locale}/checkout/success?session_id={CHECKOUT_SESSION_ID}`,
    cancel_url: `${origin}/${locale}/cart`,
    customer_email: customerEmail || undefined,
    metadata: {
      cart_session_id: cartSessionId,
      user_id: user?.id || "",
      locale,
      shipping_name: shippingName,
      shipping_street: shippingStreet,
      shipping_city: shippingCity,
      shipping_postal_code: shippingPostalCode,
      shipping_country: country2,
    },
  });

  if (!stripeSession.url) {
    console.error("[Checkout] Stripe session created but no URL returned");
    throw new Error("Failed to create stripe session");
  }

  console.log(`[Checkout] Stripe session created: ${stripeSession.id} — redirecting`);
  redirect(stripeSession.url);
}
