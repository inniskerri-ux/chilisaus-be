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
      // Get the latest product image for this category to use as representative image
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

  // Only show categories that have at least one product image (or just all categories, but filtered is better for "visual" cards)
  const visibleCategories = categories.filter(c => c.image_url !== null);

  return (
    <div className="flex flex-col gap-16 pb-16">
      {/* Hero Section */}
      <section className="relative overflow-hidden bg-zinc-900 py-24 sm:py-32">
        <div className="mx-auto max-w-7xl px-6 lg:px-8">
          <div className="mx-auto max-w-2xl lg:mx-0">
            <h1 className="text-4xl font-bold tracking-tight text-white sm:text-6xl">
              {t('hero.title')}
            </h1>
            <p className="mt-6 text-lg leading-8 text-zinc-300">
              {t('hero.subtitle')}
            </p>
            <div className="mt-10 flex items-center gap-x-6">
              <Link
                href={`/${locale}/shop`}
                className="rounded-md bg-orange-600 px-6 py-3 text-sm font-semibold text-white shadow-sm hover:bg-orange-500 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-orange-600"
              >
                {t('hero.cta')}
              </Link>
            </div>
          </div>
        </div>
        {/* Decorative background element */}
        <div className="absolute -top-24 right-0 -z-10 transform-gpu blur-3xl sm:top-[-28rem]">
          <div className="aspect-[1108/632] w-[69.25rem] bg-gradient-to-tr from-orange-500 to-[#9089fc] opacity-20" />
        </div>
      </section>

      {/* Categories Grid */}
      <section className="mx-auto max-w-7xl px-6 lg:px-8">
        <div className="mx-auto max-w-2xl text-center">
          <h2 className="text-3xl font-bold tracking-tight text-zinc-900 sm:text-4xl">
            {t('categories.title')}
          </h2>
          <p className="mt-2 text-lg leading-8 text-zinc-600">
            {t('categories.subtitle')}
          </p>
        </div>

        <div className="mx-auto mt-12 grid max-w-2xl grid-cols-1 gap-8 sm:grid-cols-2 lg:mx-0 lg:max-w-none lg:grid-cols-4">
          {visibleCategories.map((category) => (
            <CategoryCard key={category.id} category={category} locale={locale} />
          ))}
        </div>
      </section>

      {/* Featured/Value Props or Newsletter could go here */}
    </div>
  );
}
