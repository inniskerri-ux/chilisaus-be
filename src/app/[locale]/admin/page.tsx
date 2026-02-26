import { getTranslations } from 'next-intl/server';
import { requireShopOwner } from './lib/auth';
import { Card, CardContent, CardHeader, CardTitle } from '@/components/ui/card';
import { 
  Package, 
  Tag, 
  Briefcase, 
  TrendingUp, 
  ShoppingBag, 
  AlertTriangle, 
  Clock, 
  ArrowRight,
  ExternalLink
} from 'lucide-react';
import { formatPrice } from '@/lib/format';
import Link from 'next/link';
import { Button } from '@/components/ui/button';

export default async function AdminDashboard({ params }: { params: Promise<{ locale: string }> }) {
  const { locale } = await params;
  const { supabase } = await requireShopOwner(locale);
  const t = await getTranslations({ locale, namespace: 'Admin' });

  // Fetch all stats in parallel
  const [
    { count: productCount }, 
    { count: brandCount }, 
    { count: categoryCount },
    { data: salesData },
    { data: recentOrders },
    { data: lowStockProducts }
  ] = await Promise.all([
    supabase.from('products').select('id', { count: 'exact', head: true }),
    supabase.from('brands').select('id', { count: 'exact', head: true }),
    supabase.from('categories').select('id', { count: 'exact', head: true }),
    // Total Sales Sum
    supabase.from('orders').select('total_cents').eq('status', 'paid'),
    // Recent Orders
    supabase.from('orders').select('*').order('created_at', { ascending: false }).limit(5),
    // Low Stock Products
    supabase.from('products')
      .select('name, stock, low_stock_threshold')
      .lte('stock', 2) // We can use the column eventually, but 2 is the default
      .order('stock', { ascending: true })
  ]);

  const totalRevenueCents = salesData?.reduce((acc, curr) => acc + curr.total_cents, 0) || 0;
  const totalOrders = salesData?.length || 0;

  const statsCards = [
    { 
      label: 'Total Revenue', 
      value: formatPrice(totalRevenueCents), 
      icon: TrendingUp, 
      color: 'text-green-600',
      bgColor: 'bg-green-50'
    },
    { 
      label: 'Total Orders', 
      value: totalOrders, 
      icon: ShoppingBag, 
      color: 'text-red-600',
      bgColor: 'bg-red-50'
    },
    { 
      label: t('stats.products'), 
      value: productCount ?? 0, 
      icon: Package, 
      color: 'text-blue-600',
      bgColor: 'bg-blue-50'
    },
  ];

  return (
    <div className="space-y-8">
      {/* Metrics Grid */}
      <section className="grid grid-cols-1 gap-4 md:grid-cols-3">
        {statsCards.map((card) => (
          <Card key={card.label} className="border-none shadow-sm">
            <CardHeader className="flex flex-row items-center justify-between pb-2">
              <CardTitle className="text-xs font-bold uppercase tracking-wider text-muted-foreground">
                {card.label}
              </CardTitle>
              <div className={`${card.bgColor} p-2 rounded-lg`}>
                <card.icon className={`h-4 w-4 ${card.color}`} />
              </div>
            </CardHeader>
            <CardContent>
              <div className="text-3xl font-bold">{card.value}</div>
            </CardContent>
          </Card>
        ))}
      </section>

      <div className="grid grid-cols-1 lg:grid-cols-2 gap-8">
        {/* Low Stock Warning */}
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
                <div className="divide-y">
                  {lowStockProducts.map((product, idx) => (
                    <div key={idx} className="p-4 flex items-center justify-between">
                      <div>
                        <p className="font-bold text-sm text-zinc-900">{product.name}</p>
                        <p className="text-xs text-zinc-500">Threshold: {product.low_stock_threshold || 2}</p>
                      </div>
                      <div className="text-right">
                        <span className={`text-sm font-bold ${product.stock === 0 ? 'text-red-600' : 'text-orange-600'}`}>
                          {product.stock} left
                        </span>
                      </div>
                    </div>
                  ))}
                </div>
              )}
            </CardContent>
            {lowStockProducts && lowStockProducts.length > 0 && (
              <div className="p-3 bg-zinc-50 border-t text-center">
                <Button variant="link" size="sm" asChild className="text-xs font-bold">
                  <Link href={`/${locale}/admin/products`}>Manage Inventory <ArrowRight className="ml-1 h-3 w-3" /></Link>
                </Button>
              </div>
            )}
          </Card>
        </section>

        {/* Recent Orders */}
        <section className="space-y-4">
          <h2 className="text-lg font-bold flex items-center gap-2">
            <Clock className="h-5 w-5 text-blue-600" />
            Recent Orders
          </h2>
          <Card>
            <CardContent className="p-0">
              {!recentOrders || recentOrders.length === 0 ? (
                <div className="p-8 text-center text-zinc-400 text-sm">
                  No orders yet.
                </div>
              ) : (
                <div className="divide-y">
                  {recentOrders.map((order) => (
                    <div key={order.id} className="p-4 flex items-center justify-between hover:bg-zinc-50/50 transition-colors">
                      <div className="flex items-center gap-3">
                        <div className="bg-zinc-100 p-2 rounded text-zinc-500">
                          <ShoppingBag size={16} />
                        </div>
                        <div>
                          <p className="font-bold text-sm text-zinc-900">#{order.id.slice(0, 8).toUpperCase()}</p>
                          <p className="text-xs text-zinc-500">{order.customer_email}</p>
                        </div>
                      </div>
                      <div className="text-right">
                        <p className="font-bold text-sm">{formatPrice(order.total_cents)}</p>
                        <span className={`text-[10px] font-bold uppercase px-1.5 py-0.5 rounded border ${
                          order.status === 'paid' ? 'bg-green-50 text-green-700 border-green-100' : 'bg-zinc-50 text-zinc-500'
                        }`}>
                          {order.status}
                        </span>
                      </div>
                    </div>
                  ))}
                </div>
              )}
            </CardContent>
            <div className="p-3 bg-zinc-50 border-t text-center">
              <Button variant="link" size="sm" className="text-xs font-bold text-zinc-500">
                View All Orders (Coming Soon) <ArrowRight className="ml-1 h-3 w-3" />
              </Button>
            </div>
          </Card>
        </section>
      </div>

      <section className="grid grid-cols-1 md:grid-cols-2 gap-4">
        <Card className="bg-black text-white border-none">
          <CardHeader>
            <CardTitle className="text-lg flex items-center gap-2">
              <Package className="h-5 w-5" />
              Catalogue Overview
            </CardTitle>
          </CardHeader>
          <CardContent className="flex gap-8">
            <div>
              <p className="text-zinc-400 text-xs uppercase font-bold mb-1">{t('stats.brands')}</p>
              <p className="text-2xl font-bold">{brandCount}</p>
            </div>
            <div>
              <p className="text-zinc-400 text-xs uppercase font-bold mb-1">{t('stats.categories')}</p>
              <p className="text-2xl font-bold">{categoryCount}</p>
            </div>
          </CardContent>
        </Card>

        <Card className="bg-roh-flag-green text-white border-none">
          <CardHeader>
            <CardTitle className="text-lg flex items-center gap-2">
              <Mail size={20} />
              Marketing Stats
            </CardTitle>
          </CardHeader>
          <CardContent>
            <p className="text-green-100 text-sm">Create and manage your newsletters in the Marketing Hub.</p>
            <Button asChild variant="secondary" size="sm" className="mt-4 bg-white text-roh-flag-green hover:bg-green-50 border-none font-bold">
              <Link href={`/${locale}/admin/marketing`}>Go to Marketing Hub</Link>
            </Button>
          </CardContent>
        </Card>
      </section>
    </div>
  );
}

// Helper icons missing from previous imports
import { Mail } from 'lucide-react';
