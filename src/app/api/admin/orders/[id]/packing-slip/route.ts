import { NextRequest, NextResponse } from "next/server";
import { createClient } from "@supabase/supabase-js";
import { createServerClient } from "@supabase/ssr";
import { cookies } from "next/headers";
import { createElement } from "react";
import { renderToBuffer } from "@react-pdf/renderer";
import { PackingSlipDocument, type PackingSlipOrder } from "@/lib/pdf/PackingSlipDocument";

const supabaseAdmin = createClient(
  process.env.NEXT_PUBLIC_SUPABASE_URL!,
  process.env.SUPABASE_SERVICE_ROLE_KEY!,
);

export async function GET(
  req: NextRequest,
  { params }: { params: Promise<{ id: string }> },
) {
  const cookieStore = await cookies();
  const supabase = createServerClient(
    process.env.NEXT_PUBLIC_SUPABASE_URL!,
    process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!,
    { cookies: { getAll: () => cookieStore.getAll() } },
  );

  const { data: { user } } = await supabase.auth.getUser();
  if (!user) return NextResponse.json({ error: "Unauthorized" }, { status: 401 });

  const { data: profile } = await supabaseAdmin
    .from("profiles")
    .select("role")
    .eq("id", user.id)
    .single();

  if (profile?.role !== "shop_owner") {
    return NextResponse.json({ error: "Forbidden" }, { status: 403 });
  }

  const { id } = await params;
  const { data: order, error } = await supabaseAdmin
    .from("orders")
    .select("*, order_items(*)")
    .eq("id", id)
    .single();

  if (error || !order) {
    return NextResponse.json({ error: "Order not found" }, { status: 404 });
  }

  const orderPayload: PackingSlipOrder = {
    id: order.id,
    orderNumber: order.order_number,
    customerEmail: order.customer_email,
    shippingName: order.shipping_name,
    shippingStreet: order.shipping_street,
    shippingCity: order.shipping_city,
    shippingPostalCode: order.shipping_postal_code,
    shippingCountry: order.shipping_country,
    subtotalCents: order.subtotal_cents,
    shippingCents: order.shipping_cents,
    totalCents: order.total_cents,
    currency: order.currency,
    voucherCode: order.voucher_code,
    orderedAt: new Date(order.created_at).toLocaleString("en-GB", {
      day: "2-digit", month: "long", year: "numeric",
      hour: "2-digit", minute: "2-digit", timeZone: "Europe/Brussels",
    }),
    items: (order.order_items as any[]).map((item) => ({
      name: item.product_name,
      quantity: item.quantity,
      priceCents: item.price_cents,
      selectedSize: item.selected_size,
      selectedColor: item.selected_color,
    })),
  };

  const pdfBuffer = await renderToBuffer(
    createElement(PackingSlipDocument, { order: orderPayload }) as any,
  );
  const orderRef = order.order_number ?? order.id.slice(0, 8).toUpperCase();

  return new NextResponse(new Uint8Array(pdfBuffer), {
    status: 200,
    headers: {
      "Content-Type": "application/pdf",
      "Content-Disposition": `attachment; filename="packing-slip-${orderRef}.pdf"`,
    },
  });
}
