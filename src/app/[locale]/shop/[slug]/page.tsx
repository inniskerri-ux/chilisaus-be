import { notFound } from 'next/navigation';
import Image from 'next/image';
import Link from 'next/link';
import { getTranslations } from 'next-intl/server';
import { createClient } from '@/lib/supabase/server';
import { formatPrice } from '@/lib/format';
import { Badge } from '@/components/ui/badge';
import { Button } from '@/components/ui/button';

export async function generateMetadata({
  params,
}: {
  params: Promise<{ locale: string; slug: string }>;
}) {
  const { slug } = await params;
  const supabase = await createClient();
  const { data } = await supabase
    .from('products')
    .select('name, description')
    .eq('slug', slug)
    .maybeSingle();

  if (!data) return {};
  return {
    title: data.name,
    description: data.description?.slice(0, 160) ?? undefined,
  };
}

export default async function ProductPage({
  params,
}: {
  params: Promise<{ locale: string; slug: string }>;
}) {
  const { locale, slug } = await params;
  const t = await getTranslations({ locale, namespace: 'ProductPage' });
  const supabase = await createClient();

  const { data: row } = await supabase
    .from('products')
    .select(`
      id, name, slug, description, details,
      price_cents, currency, heat_level,
      image_url, capacity_ml, ingredients, stock, is_active,
      brand:brands ( id, name, slug ),
      category:categories ( id, name, slug ),
      chilliTypes:products_chilli_types (
        chilli_type:chilli_types ( id, name, slug, heat_level )
      )
    `)
    .eq('slug', slug)
    .eq('is_active', true)
    .maybeSingle();

  if (!row) notFound();

  const product = row as any;
  const brand = product.brand as { id: string; name: string; slug: string } | null;
  const category = product.category as { id: string; name: string; slug: string } | null;
  const chilliTypes: { id: string; name: string; slug: string; heat_level: string | null }[] =
    (product.chilliTypes ?? [])
      .map((j: any) => j.chilli_type)
      .filter(Boolean);

  const inStock = (product.stock ?? 0) > 0;

  return (
    <main className="max-w-5xl mx-auto px-4 py-8 sm:px-6 lg:px-8">
      {/* Breadcrumb */}
      <nav className="mb-6 text-sm text-text-muted flex items-center gap-2">
        <Link href={`/${locale}/shop`} className="hover:text-foreground transition-colors">
          {t('breadcrumbShop')}
        </Link>
        <span>/</span>
        {category && (
          <>
            <span>{category.name}</span>
            <span>/</span>
          </>
        )}
        <span className="text-foreground">{product.name}</span>
      </nav>

      <div className="grid grid-cols-1 md:grid-cols-2 gap-10">
        {/* Image */}
        <div className="relative aspect-square w-full overflow-hidden rounded-2xl bg-zinc-100">
          {product.image_url ? (
            <Image
              src={product.image_url}
              alt={product.name}
              fill
              className="object-cover"
              sizes="(max-width: 768px) 100vw, 50vw"
              priority
            />
          ) : (
            <div className="flex h-full items-center justify-center text-6xl">🌶️</div>
          )}
        </div>

        {/* Details */}
        <div className="flex flex-col gap-4">
          <div className="flex flex-wrap items-center gap-2">
            {category && (
              <Badge variant="secondary">{category.name}</Badge>
            )}
            {product.heat_level && (
              <Badge variant="outline" className="text-orange-600 border-orange-300">
                {t('heatLevel')} {product.heat_level}
              </Badge>
            )}
          </div>

          <h1 className="text-2xl font-bold text-foreground leading-snug">{product.name}</h1>

          {brand && (
            <p className="text-sm text-text-muted">
              {t('by')} <span className="font-semibold text-foreground">{brand.name}</span>
            </p>
          )}

          <p className="text-3xl font-bold text-foreground">
            {formatPrice(product.price_cents, product.currency, locale)}
          </p>

          {product.capacity_ml && (
            <p className="text-sm text-text-muted">{product.capacity_ml} ml</p>
          )}

          {/* Stock */}
          <p className={`text-sm font-medium ${inStock ? 'text-green-600' : 'text-red-500'}`}>
            {inStock ? t('inStock') : t('outOfStock')}
          </p>

          {/* Add to Cart */}
          <Button
            disabled={!inStock}
            className="w-full sm:w-auto bg-roh-flag-green hover:bg-roh-flag-green/90 text-white"
          >
            {t('addToCart')}
          </Button>

          {/* Description */}
          {product.description && (
            <div className="mt-2 border-t border-border pt-4">
              <h2 className="text-sm font-semibold text-foreground mb-2">{t('description')}</h2>
              <p className="text-sm text-text-muted leading-relaxed whitespace-pre-line">
                {product.description}
              </p>
            </div>
          )}

          {/* Ingredients */}
          {product.ingredients && (
            <div className="border-t border-border pt-4">
              <h2 className="text-sm font-semibold text-foreground mb-2">{t('ingredients')}</h2>
              <p className="text-sm text-text-muted">{product.ingredients}</p>
            </div>
          )}

          {/* Chilli types */}
          {chilliTypes.length > 0 && (
            <div className="border-t border-border pt-4">
              <h2 className="text-sm font-semibold text-foreground mb-2">{t('peppers')}</h2>
              <div className="flex flex-wrap gap-2">
                {chilliTypes.map((ct) => (
                  <Badge key={ct.id} variant="outline">{ct.name}</Badge>
                ))}
              </div>
            </div>
          )}
        </div>
      </div>
    </main>
  );
}
