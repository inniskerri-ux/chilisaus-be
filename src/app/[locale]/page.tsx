import { createClient } from '@/lib/supabase/server';
import { getTranslations } from 'next-intl/server';
import Link from 'next/link';
import CategoryCard from '@/components/store/CategoryCard';

export default async function HomePage({ params }: { params: Promise<{ locale: string }> }) {
  const { locale } = await params;
  const t = await getTranslations({ locale, namespace: 'Landing' });
  const supabase = await createClient();

  // Fetch categories and one product image for each
  const { data: categoriesData } = await supabase
    .from('categories')
    .select('id, name, slug')
    .order('name');

  const categories = await Promise.all(
    (categoriesData ?? []).map(async (cat) => {
      const { data: product } = await supabase
        .from('products')
        .select('image_url')
        .eq('category_id', cat.id)
        .eq('is_active', true)
        .not('image_url', 'is', null)
        .order('created_at', { ascending: false })
        .limit(1)
        .single();

      return {
        ...cat,
        image_url: product?.image_url || null,
      };
    })
  );

  const visibleCategories = categories.filter(c => c.image_url !== null);

  return (
    <div className="flex flex-col gap-24 pb-24">
      {/* Hero Section - Clean, White, Professional */}
      <section className="relative bg-white pt-20 pb-12 sm:pt-32">
        <div className="mx-auto max-w-7xl px-6 lg:px-8">
          <div className="mx-auto max-w-3xl text-center">
            <h1 className="text-4xl font-extrabold tracking-tight text-brand-black sm:text-7xl uppercase">
              {t('hero.title')}
            </h1>
            <p className="mt-8 text-xl leading-8 text-zinc-600">
              {t('hero.subtitle')}
            </p>
            <div className="mt-12 flex items-center justify-center gap-x-6">
              <Link
                href={`/${locale}/shop`}
                className="rounded-full bg-brand-red px-10 py-4 text-base font-bold text-white shadow-lg transition-all hover:bg-black hover:scale-105 active:scale-95"
              >
                {t('hero.cta')}
              </Link>
            </div>
          </div>
        </div>
      </section>

      {/* Categories Grid */}
      <section className="mx-auto max-w-7xl px-6 lg:px-8">
        <div className="mb-12 border-b border-zinc-100 pb-8 text-center sm:text-left">
          <h2 className="text-3xl font-bold tracking-tight text-brand-black sm:text-4xl">
            {t('categories.title')}
          </h2>
          <p className="mt-2 text-lg text-zinc-600">
            {t('categories.subtitle')}
          </p>
        </div>

        <div className="grid grid-cols-1 gap-10 sm:grid-cols-2 lg:grid-cols-4">
          {visibleCategories.map((category) => (
            <CategoryCard key={category.id} category={category} locale={locale} />
          ))}
        </div>
      </section>

      {/* Meet the Maker - Personal Touch */}
      <section className="bg-zinc-50 py-24">
        <div className="mx-auto max-w-7xl px-6 lg:px-8">
          <div className="grid grid-cols-1 items-center gap-16 lg:grid-cols-2">
            <div>
              <h2 className="text-3xl font-bold tracking-tight text-brand-black sm:text-4xl">
                {t('maker.title')}
              </h2>
              <div className="mt-6 space-y-6 text-lg leading-8 text-zinc-600">
                <p>{t('maker.content')}</p>
              </div>
              <div className="mt-10">
                <Link
                  href={`/${locale}/shop`}
                  className="text-base font-bold text-brand-red hover:text-black transition-colors"
                >
                  Explore the sauces &rarr;
                </Link>
              </div>
            </div>
            <div className="relative aspect-square overflow-hidden rounded-3xl bg-zinc-200 shadow-2xl">
              {/* Placeholder for Client Image/Logo at Event */}
              <div className="flex h-full w-full items-center justify-center bg-zinc-300">
                <span className="text-8xl">🌶️</span>
              </div>
            </div>
          </div>
        </div>
      </section>
    </div>
  );
}
