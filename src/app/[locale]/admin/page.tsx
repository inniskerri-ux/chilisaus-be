import { getTranslations } from "next-intl/server";
import { requireShopOwner } from "./lib/auth";
import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card";
import {
  Package,
  TrendingUp,
  ShoppingBag,
  AlertTriangle,
  Clock,
  ArrowRight,
  Users,
  Star,
  Mail,
  BarChart3,
} from "lucide-react";
import LegacyStatsPanel from "@/components/admin/LegacyStatsPanel";
import { formatPrice } from "@/lib/format";
import Link from "next/link";
import { Button } from "@/components/ui/button";
import Image from "next/image";

export default async function AdminDashboard({
  params,
}: {
  params: Promise<{ locale: string }>;
}) {
  const { locale } = await params;
  const { supabase } = await requireShopOwner(locale);
  const t = await getTranslations({ locale, namespace: "Admin" });

  const [
    { count: productCount },
    { count: brandCount },
    { count: categoryCount },
    { data: salesData },
    { data: recentOrders },
    { data: lowStockProducts },
    { data: legacyStats },  // RPC — no row limit
    { data: topSellers },
    { count: reviewCount },
    { count: legacyCustomerCount },
    { data: yearsData },
  ] = await Promise.all([
    supabase.from("products").select("id", { count: "exact", head: true }),
    supabase.from("brands").select("id", { count: "exact", head: true }),
    supabase.from("categories").select("id", { count: "exact", head: true }),
    supabase.from("orders").select("total_cents").eq("status", "paid"),
    supabase
      .from("orders")
      .select("id, customer_email, total_cents, status, created_at")
      .order("created_at", { ascending: false })
      .limit(5),
    supabase
      .from("products")
      .select("name, stock, low_stock_threshold")
      .lte("stock", 2)
      .order("stock", { ascending: true })
      .limit(200),
    supabase.rpc("get_legacy_order_stats", { p_year: null }),

    supabase
      .from("product_sales_summary")
      .select("id, name, slug, image_url, legacy_units_sold, legacy_revenue_cents, avg_rating, review_count, wc_total_sales")
      .order("legacy_units_sold", { ascending: false })
      .limit(5),
    supabase.from("reviews").select("id", { count: "exact", head: true }),
    supabase.from("legacy_customers").select("id", { count: "exact", head: true }),
    supabase.rpc("get_legacy_order_years"),
  ]);

  const stripeRevenue = salesData?.reduce((acc, o) => acc + o.total_cents, 0) ?? 0;
  const stripeOrders = salesData?.length ?? 0;

  const legacyRow = Array.isArray(legacyStats) ? legacyStats[0] : null;
  const legacyRevenue = Number(legacyRow?.total_revenue ?? 0);
  const legacyOrders = Number(legacyRow?.completed_orders ?? 0);
  const legacyYears = ((yearsData as any[]) ?? []).map((r: any) => Number(r.year));

  const totalRevenue = stripeRevenue + legacyRevenue;
  const totalOrders = stripeOrders + legacyOrders;

  return (
    <div className="space-y-6 md:space-y-8">

      {/* Top stats */}
      <section className="grid grid-cols-1 gap-3 sm:grid-cols-2 lg:grid-cols-4">
        {[
          {
            label: "Total Revenue",
            value: formatPrice(totalRevenue),
            sub: `${formatPrice(stripeRevenue)} new · ${formatPrice(legacyRevenue)} legacy`,
            icon: TrendingUp,
            color: "text-green-600",
            bg: "bg-green-50",
          },
          {
            label: "Total Orders",
            value: totalOrders.toLocaleString(),
            sub: `${stripeOrders} new · ${legacyOrders} legacy`,
            icon: ShoppingBag,
            color: "text-red-600",
            bg: "bg-red-50",
          },
          {
            label: "Customers",
            value: (legacyCustomerCount ?? 0).toLocaleString(),
            sub: "legacy + new accounts",
            icon: Users,
            color: "text-blue-600",
            bg: "bg-blue-50",
          },
          {
            label: "Reviews",
            value: (reviewCount ?? 0).toLocaleString(),
            sub: `${productCount ?? 0} products catalogued`,
            icon: Star,
            color: "text-orange-500",
            bg: "bg-orange-50",
          },
        ].map((card) => (
          <Card key={card.label} className="border-none shadow-sm">
            <CardContent className="p-4">
              {/* Mobile: icon + text side by side */}
              <div className="flex items-center gap-4 sm:hidden">
                <div className={`${card.bg} p-3 rounded-xl shrink-0`}>
                  <card.icon className={`h-6 w-6 ${card.color}`} />
                </div>
                <div className="min-w-0 flex-1">
                  <p className="text-xs font-bold uppercase tracking-wider text-muted-foreground leading-tight">{card.label}</p>
                  <div className="text-2xl font-bold mt-0.5">{card.value}</div>
                  <p className="text-xs text-zinc-400 mt-0.5 leading-tight truncate">{card.sub}</p>
                </div>
              </div>
              {/* sm+: standard vertical layout */}
              <div className="hidden sm:block">
                <div className="flex items-center justify-between mb-2">
                  <p className="text-xs font-bold uppercase tracking-wider text-muted-foreground">{card.label}</p>
                  <div className={`${card.bg} p-2 rounded-lg`}>
                    <card.icon className={`h-4 w-4 ${card.color}`} />
                  </div>
                </div>
                <div className="text-2xl font-bold">{card.value}</div>
                <p className="text-xs text-zinc-400 mt-1">{card.sub}</p>
              </div>
            </CardContent>
          </Card>
        ))}
      </section>

      <div className="grid grid-cols-1 lg:grid-cols-2 gap-6 md:gap-8">

        {/* Top Selling Products */}
        <section className="space-y-4">
          <div className="flex items-center justify-between">
            <h2 className="text-lg font-bold flex items-center gap-2">
              <BarChart3 className="h-5 w-5 text-brand-red" />
              Top Selling Products
            </h2>
            <span className="text-xs text-zinc-400">by legacy order volume</span>
          </div>
          <Card>
            <CardContent className="p-0">
              {!topSellers || topSellers.length === 0 ? (
                <div className="p-8 text-center text-zinc-400 text-sm">No data yet.</div>
              ) : (
                <div className="divide-y">
                  {(topSellers as any[]).map((p, i) => (
                    <div key={p.id} className="p-3 flex items-center gap-2 md:p-4 md:gap-3">
                      <span className="text-xs font-black text-zinc-300 w-4 shrink-0 md:w-5">
                        {i + 1}
                      </span>
                      {p.image_url ? (
                        <Image
                          src={p.image_url}
                          alt={p.name}
                          width={32}
                          height={32}
                          className="rounded object-contain bg-zinc-50 shrink-0 w-8 h-8 md:w-9 md:h-9"
                        />
                      ) : (
                        <div className="w-8 h-8 rounded bg-zinc-100 shrink-0 flex items-center justify-center text-base md:w-9 md:h-9">
                          🌶️
                        </div>
                      )}
                      <div className="flex-1 min-w-0">
                        <p className="font-semibold text-xs text-zinc-900 truncate md:text-sm">
                          {p.name}
                        </p>
                        <div className="flex items-center gap-2 mt-0.5 flex-wrap">
                          <span className="text-[10px] text-zinc-500 md:text-xs">
                            {p.legacy_units_sold} sold
                          </span>
                          {p.review_count > 0 && (
                            <span className="flex items-center gap-0.5 text-[10px] text-orange-500 md:text-xs">
                              <Star size={9} fill="currentColor" />
                              {Number(p.avg_rating).toFixed(1)}
                              <span className="text-zinc-400">({p.review_count})</span>
                            </span>
                          )}
                        </div>
                      </div>
                      <div className="text-right shrink-0">
                        <p className="text-xs font-bold text-zinc-900 md:text-sm">
                          {formatPrice(p.legacy_revenue_cents)}
                        </p>
                      </div>
                    </div>
                  ))}
                </div>
              )}
            </CardContent>
            <div className="p-3 bg-zinc-50 border-t text-center">
              <Button variant="link" size="sm" asChild className="text-xs font-bold">
                <Link href={`/${locale}/admin/products`}>
                  View All Products <ArrowRight className="ml-1 h-3 w-3" />
                </Link>
              </Button>
            </div>
          </Card>
        </section>

        {/* Low Stock */}
        <section className="space-y-4">
          <div className="flex items-center justify-between">
            <h2 className="text-lg font-bold flex items-center gap-2 text-orange-700">
              <AlertTriangle className="h-5 w-5" />
              Low Stock Alerts
            </h2>
            {lowStockProducts && lowStockProducts.length > 0 && (
              <span className="bg-orange-100 text-orange-700 text-xs font-bold px-2 py-1 rounded-full">
                {lowStockProducts.length} Items
              </span>
            )}
          </div>
          <Card>
            <CardContent className="p-0">
              {!lowStockProducts || lowStockProducts.length === 0 ? (
                <div className="p-8 text-center text-zinc-400 text-sm">
                  All products are well stocked!
                </div>
              ) : (
                <div className="divide-y overflow-y-auto max-h-[320px] md:max-h-[512px]">
                  {lowStockProducts.map((product, idx) => (
                    <div key={idx} className="p-3 flex items-center justify-between md:p-4">
                      <div className="min-w-0 pr-2">
                        <p className="font-bold text-xs text-zinc-900 truncate md:text-sm">{product.name}</p>
                        <p className="text-[10px] text-zinc-500 md:text-xs">
                          Threshold: {(product as any).low_stock_threshold || 2}
                        </p>
                      </div>
                      <span className={`text-xs font-bold shrink-0 md:text-sm ${product.stock === 0 ? "text-red-600" : "text-orange-600"}`}>
                        {product.stock} left
                      </span>
                    </div>
                  ))}
                </div>
              )}
            </CardContent>
            {lowStockProducts && lowStockProducts.length > 0 && (
              <div className="p-3 bg-zinc-50 border-t text-center">
                <Button variant="link" size="sm" asChild className="text-xs font-bold">
                  <Link href={`/${locale}/admin/products`}>
                    Manage Inventory <ArrowRight className="ml-1 h-3 w-3" />
                  </Link>
                </Button>
              </div>
            )}
          </Card>
        </section>
      </div>

      <div className="grid grid-cols-1 lg:grid-cols-2 gap-6 md:gap-8">

        {/* Recent New Orders */}
        <section className="space-y-4">
          <h2 className="text-lg font-bold flex items-center gap-2">
            <Clock className="h-5 w-5 text-blue-600" />
            Recent Orders
          </h2>
          <Card>
            <CardContent className="p-0">
              {!recentOrders || recentOrders.length === 0 ? (
                <div className="p-8 text-center text-zinc-400 text-sm">No new orders yet.</div>
              ) : (
                <div className="divide-y">
                  {recentOrders.map((order) => (
                    <div key={order.id} className="p-3 flex items-center justify-between gap-2 hover:bg-zinc-50/50 transition-colors md:p-4">
                      <div className="flex items-center gap-2 min-w-0 md:gap-3">
                        <div className="bg-zinc-100 p-1.5 rounded text-zinc-500 shrink-0 md:p-2">
                          <ShoppingBag size={14} />
                        </div>
                        <div className="min-w-0">
                          <p className="font-bold text-xs text-zinc-900 md:text-sm">
                            #{order.id.slice(0, 8).toUpperCase()}
                          </p>
                          <p className="text-[10px] text-zinc-500 truncate max-w-[130px] md:text-xs md:max-w-none">{order.customer_email}</p>
                        </div>
                      </div>
                      <div className="text-right shrink-0">
                        <p className="font-bold text-xs md:text-sm">{formatPrice(order.total_cents)}</p>
                        <span className={`text-[10px] font-bold uppercase px-1.5 py-0.5 rounded border ${
                          order.status === "paid"
                            ? "bg-green-50 text-green-700 border-green-100"
                            : "bg-zinc-50 text-zinc-500 border-zinc-200"
                        }`}>
                          {order.status}
                        </span>
                      </div>
                    </div>
                  ))}
                </div>
              )}
            </CardContent>
          </Card>
        </section>

        <LegacyStatsPanel
          years={legacyYears}
          reviewCount={reviewCount ?? 0}
        />
      </div>

      {/* Bottom cards */}
      <section className="grid grid-cols-1 md:grid-cols-2 gap-3 md:gap-4">
        <Card className="bg-black text-white border-none">
          <CardHeader>
            <CardTitle className="text-lg flex items-center gap-2">
              <Package className="h-5 w-5" />
              Catalogue Overview
            </CardTitle>
          </CardHeader>
          <CardContent className="flex flex-wrap gap-6 md:gap-8">
            <div>
              <p className="text-zinc-400 text-xs uppercase font-bold mb-1">{t("stats.brands")}</p>
              <p className="text-2xl font-bold">{brandCount}</p>
            </div>
            <div>
              <p className="text-zinc-400 text-xs uppercase font-bold mb-1">{t("stats.categories")}</p>
              <p className="text-2xl font-bold">{categoryCount}</p>
            </div>
            <div>
              <p className="text-zinc-400 text-xs uppercase font-bold mb-1">Products</p>
              <p className="text-2xl font-bold">{productCount}</p>
            </div>
          </CardContent>
        </Card>

        <Card className="bg-brand-red text-white border-none">
          <CardHeader>
            <CardTitle className="text-lg flex items-center gap-2">
              <Mail size={20} />
              Marketing Stats
            </CardTitle>
          </CardHeader>
          <CardContent>
            <p className="text-red-100 text-sm">
              Create and manage your newsletters in the Marketing Hub.
            </p>
            <Button
              asChild
              variant="secondary"
              size="sm"
              className="mt-4 bg-white text-brand-red hover:bg-red-50 border-none font-bold"
            >
              <Link href={`/${locale}/admin/marketing`}>Go to Marketing Hub</Link>
            </Button>
          </CardContent>
        </Card>
      </section>
    </div>
  );
}
