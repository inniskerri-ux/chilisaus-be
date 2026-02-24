import { createClient } from '@/lib/supabase/server';
import { getTranslations } from 'next-intl/server';
import ProductArchive from '@/components/store/ProductArchive';
import type { StoreProduct, ChilliType, Category } from '@/components/store/types';

export default async function ShopPage({ params }: { params: Promise<{ locale: string }> }) {
  const { locale } = await params;
  const t = await getTranslations({ locale, namespace: 'SauceArchive' });
  const supabase = await createClient();

  const [productsRes, categoriesRes, chilliTypesRes] = await Promise.all([
    supabase
      .from('products')
      .select(`
        id, name, slug, description, price_cents, currency,
        heat_level, image_url, stock, is_active,
        brand:brands ( id, name, slug ),
        category:categories ( id, name, slug ),
        chilliTypes:products_chilli_types ( chilli_type:chilli_types ( id, name, slug, heat_level ) )
      `)
      .eq('is_active', true)
      .order('created_at', { ascending: false }),

    supabase
      .from('categories')
      .select('id, name, slug')
      .order('name'),

    supabase
      .from('chilli_types')
      .select('id, name, slug, heat_level')
      .order('name'),
  ]);

  const products: StoreProduct[] =
    (productsRes.data ?? []).map((row: any) => ({
      id: row.id,
      name: row.name,
      slug: row.slug,
      description: row.description,
      price_cents: row.price_cents,
      currency: row.currency,
      heatLevel: row.heat_level,
      image_url: row.image_url,
      stock: row.stock,
      is_active: row.is_active,
      brand: row.brand ? { id: row.brand.id, name: row.brand.name, slug: row.brand.slug } : null,
      category: row.category ? { id: row.category.id, name: row.category.name, slug: row.category.slug } : null,
      chilliTypes: (row.chilliTypes ?? [])
        .map((j: any) => j.chilli_type)
        .filter(Boolean)
        .map((ct: any) => ({ id: ct.id, name: ct.name, slug: ct.slug, heatLevel: ct.heat_level })),
    }));

  const categories: Category[] = (categoriesRes.data ?? []).map((c: any) => ({
    id: c.id,
    name: c.name,
    slug: c.slug,
  }));

  const chilliTypes: ChilliType[] = (chilliTypesRes.data ?? []).map((ct: any) => ({
    id: ct.id,
    name: ct.name,
    slug: ct.slug,
    heatLevel: ct.heat_level,
  }));

  return (
    <main>
      <div className="px-4 pt-8 sm:px-6 lg:px-8">
        <div className="max-w-7xl mx-auto">
          <h1 className="text-3xl font-bold text-foreground">{t('heading')}</h1>
        </div>
      </div>
      <ProductArchive
        products={products}
        categories={categories}
        chilliTypes={chilliTypes}
        locale={locale}
      />
    </main>
  );
}
