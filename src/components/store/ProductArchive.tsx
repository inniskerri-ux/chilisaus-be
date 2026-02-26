'use client';

import { useState, useMemo, useEffect, Suspense } from 'react';
import { useTranslations } from 'next-intl';
import { useSearchParams } from 'next/navigation';
import type { StoreProduct, ChilliType, Category, StoreBrand } from './types';
import ProductCard from './ProductCard';
import Chip from './Chip';

interface ProductArchiveProps {
  products: StoreProduct[];
  chilliTypes: ChilliType[];
  categories: Category[];
  brands: StoreBrand[];
  locale: string;
}

type SortOption = 'recent' | 'popular' | 'mild-first' | 'hot-first' | 'price-asc';

const HEAT_ORDER: Record<string, number> = {
  mild: 1,
  medium: 5,
  hot: 8,
  extreme: 12
};

const resolveHeatRank = (value?: string | number | null): number | null => {
  if (value === null || value === undefined || value === '') return null;
  if (typeof value === 'number') return value;
  
  const numeric = Number(value);
  return !Number.isNaN(numeric) ? numeric : null;
};

const resolveHeatCategory = (rank: number | null): string | null => {
  if (rank === null) return null;
  if (rank <= 3) return 'mild';
  if (rank <= 7) return 'medium';
  if (rank <= 10) return 'hot';
  return 'extreme';
};

function ProductArchiveContent({
  products,
  chilliTypes,
  categories,
  brands,
  locale
}: ProductArchiveProps) {
  const t = useTranslations('SauceArchive');
  const searchParams = useSearchParams();
  const initialCategory = searchParams.get('category');
  const initialHeat = searchParams.get('heat');

  const [searchTerm, setSearchTerm] = useState('');
  const [selectedHeatLevel, setSelectedHeatLevel] = useState(initialHeat || '');
  const [selectedChilliType, setSelectedChilliType] = useState('');
  const [selectedCategory, setSelectedCategory] = useState(initialCategory || '');
  const [selectedBrand, setSelectedBrand] = useState('');
  const [sortBy, setSortBy] = useState<SortOption>('popular');
  const [displayCount, setDisplayCount] = useState(12);

  // Sync state if URL changes (e.g. back button)
  useEffect(() => {
    if (initialCategory !== null) {
      setSelectedCategory(initialCategory);
    }
    if (initialHeat !== null) {
      setSelectedHeatLevel(initialHeat);
    }
  }, [initialCategory, initialHeat]);

  const filteredAndSortedProducts = useMemo(() => {
    let filtered = products.filter(product => {
      const matchesSearch = !searchTerm ||
        product.name.toLowerCase().includes(searchTerm.toLowerCase()) ||
        product.description?.toLowerCase().includes(searchTerm.toLowerCase()) ||
        product.brand?.name?.toLowerCase().includes(searchTerm.toLowerCase());

      const productHeatRank = resolveHeatRank(product.heatLevel);
      const productHeatCategory = resolveHeatCategory(productHeatRank);
      
      const matchesHeatLevel =
        !selectedHeatLevel ||
        (productHeatCategory === selectedHeatLevel.toLowerCase());

      const matchesChilliType = !selectedChilliType || (
        Array.isArray(product.chilliTypes) &&
        product.chilliTypes.some((ct) => ct?.id?.toString() === selectedChilliType || ct?.name === selectedChilliType)
      );

      const matchesCategory =
        !selectedCategory ||
        product.category?.id?.toString() === selectedCategory ||
        product.category?.slug === selectedCategory;

      const matchesBrand =
        !selectedBrand ||
        product.brand?.id?.toString() === selectedBrand ||
        product.brand?.slug === selectedBrand;

      return matchesSearch && matchesHeatLevel && matchesChilliType && matchesCategory && matchesBrand;
    });

    if (sortBy === 'mild-first') {
      filtered = [...filtered].sort((a, b) => {
        const aLevel = resolveHeatRank(a.heatLevel);
        const bLevel = resolveHeatRank(b.heatLevel);
        return (aLevel ?? 999) - (bLevel ?? 999);
      });
    } else if (sortBy === 'hot-first') {
      filtered = [...filtered].sort((a, b) => {
        const aLevel = resolveHeatRank(a.heatLevel);
        const bLevel = resolveHeatRank(b.heatLevel);
        return (bLevel ?? -1) - (aLevel ?? -1);
      });
    } else if (sortBy === 'price-asc') {
      filtered = [...filtered].sort((a, b) => a.price_cents - b.price_cents);
    } else if (sortBy === 'popular') {
      filtered = [...filtered];
    } else {
      filtered = [...filtered];
    }

    return filtered;
  }, [products, searchTerm, selectedHeatLevel, selectedChilliType, selectedCategory, selectedBrand, sortBy]);

  const activeFilters = useMemo(() => {
    const filters: Array<{label: string; value: string; clear: () => void}> = [];
    if (selectedHeatLevel) {
      filters.push({
        label: `Heat: ${selectedHeatLevel}`,
        value: selectedHeatLevel,
        clear: () => setSelectedHeatLevel('')
      });
    }
    if (selectedCategory) {
      const cat = categories.find(cat => cat.id.toString() === selectedCategory || cat.slug === selectedCategory);
      const catName = cat?.name || selectedCategory;
      filters.push({
        label: `Type: ${catName}`,
        value: selectedCategory,
        clear: () => setSelectedCategory('')
      });
    }
    if (selectedBrand) {
      const brand = brands.find(b => b.id.toString() === selectedBrand || b.slug === selectedBrand);
      const brandName = brand?.name || selectedBrand;
      filters.push({
        label: `Producer: ${brandName}`,
        value: selectedBrand,
        clear: () => setSelectedBrand('')
      });
    }
    return filters;
  }, [selectedHeatLevel, selectedCategory, selectedBrand, categories, brands]);

  const selectedPepper = useMemo(() => {
    if (!selectedChilliType) return null;
    return chilliTypes.find(ct => ct.id.toString() === selectedChilliType);
  }, [selectedChilliType, chilliTypes]);

  const clearAllFilters = () => {
    setSearchTerm('');
    setSelectedHeatLevel('');
    setSelectedChilliType('');
    setSelectedCategory('');
    setSelectedBrand('');
  };

  const displayedProducts = filteredAndSortedProducts.slice(0, displayCount);
  const hasMore = filteredAndSortedProducts.length > displayCount;

  return (
    <div className="py-8 px-4 sm:px-6 lg:px-8">
      <div className="max-w-7xl mx-auto">
        {/* Filter Section */}
        <section className="border-b border-border pb-5 mb-8">
          <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-6 gap-3">
            {/* Search */}
            <label className="block text-sm font-medium text-foreground">
              {t('search.placeholder')}
              <input
                type="search"
                placeholder={t('search.placeholder')}
                value={searchTerm}
                onChange={(e) => setSearchTerm(e.target.value)}
                className="mt-1 w-full rounded-lg border border-border bg-card px-3 py-2 text-foreground
                         focus:outline-none focus:ring-2 focus:ring-brand-red"
              />
            </label>

            {/* Heat Level - Select */}
            <label className="block text-sm font-medium text-foreground">
              {t('search.filters.heatLevel')}
              <select
                value={selectedHeatLevel}
                onChange={(e) => setSelectedHeatLevel(e.target.value)}
                className="mt-1 w-full rounded-lg border border-border bg-card px-3 py-2 text-foreground
                         focus:outline-none focus:ring-2 focus:ring-brand-red"
              >
                <option value="">All Heat Levels</option>
                {['mild', 'medium', 'hot', 'extreme'].map((level) => (
                  <option key={level} value={level}>
                    {t(`search.filters.heatLevels.${level}`)}
                  </option>
                ))}
              </select>
            </label>

            {/* Producer / Brand */}
            <label className="block text-sm font-medium text-foreground">
              Producer
              <select
                value={selectedBrand}
                onChange={(e) => setSelectedBrand(e.target.value)}
                className="mt-1 w-full rounded-lg border border-border bg-card px-3 py-2 text-foreground
                         focus:outline-none focus:ring-2 focus:ring-brand-red"
              >
                <option value="">All Producers</option>
                {brands.map(brand => (
                  <option key={brand.id} value={brand.id}>
                    {brand.name}
                  </option>
                ))}
              </select>
            </label>

            {/* Category */}
            <label className="block text-sm font-medium text-foreground">
              {t('search.filters.sauceType')}
              <select
                value={selectedCategory}
                onChange={(e) => setSelectedCategory(e.target.value)}
                className="mt-1 w-full rounded-lg border border-border bg-card px-3 py-2 text-foreground
                         focus:outline-none focus:ring-2 focus:ring-brand-red"
              >
                <option value="">{t('search.filters.allCategories')}</option>
                {categories.map(category => (
                  <option key={category.slug} value={category.slug}>
                    {category.name}
                  </option>
                ))}
              </select>
            </label>

            {/* Sort */}
            <label className="block text-sm font-medium text-foreground">
              {t('search.filters.sort')}
              <select
                value={sortBy}
                onChange={(e) => setSortBy(e.target.value as SortOption)}
                className="mt-1 w-full rounded-lg border border-border bg-card px-3 py-2 text-foreground
                         focus:outline-none focus:ring-2 focus:ring-brand-red"
              >
                <option value="popular">{t('search.filters.sortPopular')}</option>
                <option value="recent">{t('search.filters.sortNewest')}</option>
                <option value="mild-first">{t('search.filters.sortMildToHot')}</option>
                <option value="hot-first">{t('search.filters.sortHotToMild')}</option>
                <option value="price-asc">Price: Low to High</option>
              </select>
            </label>

            {/* Pepper */}
            <label className="block text-sm font-medium text-foreground">
              {t('search.filters.pepper')}
              <select
                value={selectedChilliType}
                onChange={(e) => setSelectedChilliType(e.target.value)}
                className="mt-1 w-full rounded-lg border border-border bg-card px-3 py-2 text-foreground
                         focus:outline-none focus:ring-2 focus:ring-brand-red"
              >
                <option value="">{t('search.filters.allChilliTypes')}</option>
                {chilliTypes.map(chilliType => (
                  <option key={chilliType.id} value={chilliType.id}>
                    {chilliType.name}
                  </option>
                ))}
              </select>
            </label>
          </div>

          {/* Active Filter Chips */}
          {(activeFilters.length > 0 || selectedPepper) && (
            <div className="mt-3 flex flex-wrap gap-2 items-center">
              {selectedPepper && (
                <Chip variant="filter" onRemove={() => setSelectedChilliType('')}>
                  {selectedPepper.name}
                  {selectedPepper.heatLevel ? ` • ${selectedPepper.heatLevel}` : ''}
                </Chip>
              )}
              {activeFilters.map((filter, idx) => (
                <Chip key={filter.value} variant="filter" onRemove={filter.clear}>
                  {filter.label}
                </Chip>
              ))}
              {(activeFilters.length > 0 || selectedPepper) && (activeFilters.length + (selectedPepper ? 1 : 0)) > 1 && (
                <button
                  onClick={clearAllFilters}
                  className="text-xs font-medium text-foreground underline-offset-4 hover:text-roh-flag-green hover:underline"
                >
                  {t('results.clearFilters')}
                </button>
              )}
            </div>
          )}

          {/* Results Count */}
          <div className="mt-3 text-sm text-text-muted">
            {t('results.showing')} {displayedProducts.length} {t('results.of')} {filteredAndSortedProducts.length} {t('results.sauces')}
          </div>
        </section>

        {filteredAndSortedProducts.length === 0 && (
          <div className="text-center py-12">
            <div className="text-6xl mb-4">🌶️</div>
            <h3 className="text-xl font-bold text-foreground mb-4">{t('results.noResults')}</h3>
            <p className="text-text-muted">
              {t('results.adjustSearch')}
            </p>
            <button
              onClick={clearAllFilters}
              className="mt-4 px-4 py-2 rounded-lg border border-border bg-card text-foreground
                       transition-colors hover:border-roh-flag-green hover:bg-roh-flag-green/10"
            >
              {t('results.clearFilters')}
            </button>
          </div>
        )}

        {displayedProducts.length > 0 && (
          <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-6">
            {displayedProducts.map((product) => (
              <ProductCard key={product.id} product={product} />
            ))}
          </div>
        )}

        {/* Load More */}
        {hasMore && (
          <div className="mt-8 flex justify-center">
            <button
              onClick={() => setDisplayCount(prev => prev + 12)}
              className="px-4 py-2 rounded-lg border border-border bg-card text-foreground
                       transition-colors font-medium hover:border-roh-flag-green hover:bg-roh-flag-green/10"
            >
              {t('results.loadMore')}
            </button>
          </div>
        )}
      </div>
    </div>
  );
}

export default function ProductArchive(props: ProductArchiveProps) {
  return (
    <Suspense fallback={<div className="p-12 text-center">Loading catalogue...</div>}>
      <ProductArchiveContent {...props} />
    </Suspense>
  );
}

