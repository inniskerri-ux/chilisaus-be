"use client";

import { useState, useMemo, useEffect, Suspense, useCallback } from "react";
import { useTranslations } from "next-intl";
import { useSearchParams, useRouter, usePathname } from "next/navigation";
import type { StoreProduct, ChilliType, Category, StoreBrand } from "./types";
import ProductCard from "./ProductCard";
import Chip from "./Chip";

interface ProductArchiveProps {
  products: StoreProduct[];
  chilliTypes: ChilliType[];
  categories: Category[];
  brands: StoreBrand[];
  locale: string;
}

type SortOption =
  | "popular"
  | "newest"
  | "mild-first"
  | "hot-first"
  | "price-asc"
  | "price-desc";

const HEAT_BAND_SLUGS = new Set([
  "mild",
  "medium",
  "hot",
  "veryHot",
  "superHot",
]);

const resolveHeatRank = (value?: string | number | null): number | null => {
  if (value === null || value === undefined || value === "") return null;
  if (typeof value === "number") return value;

  const numeric = Number(value);
  return !Number.isNaN(numeric) ? numeric : null;
};

const resolveHeatCategory = (rank: number | null): string | null => {
  if (rank === null) return null;
  if (rank <= 4) return "mild";
  if (rank <= 7) return "medium";
  if (rank <= 9) return "hot";
  if (rank === 10) return "veryHot";
  return "superHot";
};

function ProductArchiveContent({
  products,
  chilliTypes,
  categories,
  brands,
  locale,
}: ProductArchiveProps) {
  const t = useTranslations("SauceArchive");
  const searchParams = useSearchParams();
  const router = useRouter();
  const pathname = usePathname();
  const initialCategory = searchParams.get("category");
  const initialHeat = searchParams.get("heat");
  const initialBrand = searchParams.get("brand");

  const clearUrlParams = useCallback((...keys: string[]) => {
    const params = new URLSearchParams(searchParams.toString());
    keys.forEach((k) => params.delete(k));
    const qs = params.toString();
    router.replace(qs ? `${pathname}?${qs}` : pathname, { scroll: false });
  }, [searchParams, router, pathname]);

  const [searchTerm, setSearchTerm] = useState("");
  const [selectedHeatLevel, setSelectedHeatLevel] = useState(initialHeat || "");
  const [selectedChilliType, setSelectedChilliType] = useState("");
  const [selectedCategory, setSelectedCategory] = useState(
    initialCategory || "",
  );
  const [selectedBrand, setSelectedBrand] = useState(initialBrand || "");
  const [selectedCountry, setSelectedCountry] = useState("");
  const [sortBy, setSortBy] = useState<SortOption>("popular");
  const [displayCount, setDisplayCount] = useState(12);
  const [hideOutOfStock, setHideOutOfStock] = useState(true);

  // Build type categories: replace heat band entries with a single "Sauces" option
  const typeCategories = useMemo(() => {
    const hasSauces = categories.some((c) => HEAT_BAND_SLUGS.has(c.slug));
    const nonHeatBand = categories.filter((c) => !HEAT_BAND_SLUGS.has(c.slug));
    return hasSauces
      ? [{ id: "sauces", name: "Sauces", slug: "sauces" }, ...nonHeatBand]
      : nonHeatBand;
  }, [categories]);

  // Derive unique countries from brands
  const countries = useMemo(() => {
    const uniqueCountries = new Set<string>();
    brands.forEach((brand) => {
      if (brand.country) {
        uniqueCountries.add(brand.country);
      }
    });
    return Array.from(uniqueCountries).sort();
  }, [brands]);

  // Sync state if URL changes (e.g. back button)
  useEffect(() => {
    if (initialCategory !== null && initialCategory !== selectedCategory) {
      setSelectedCategory(initialCategory);
    }
    if (initialHeat !== null && initialHeat !== selectedHeatLevel) {
      setSelectedHeatLevel(initialHeat);
    }
    if (initialBrand !== null && initialBrand !== selectedBrand) {
      setSelectedBrand(initialBrand);
    }
  }, [
    initialCategory,
    initialHeat,
    initialBrand,
    selectedCategory,
    selectedHeatLevel,
    selectedBrand,
  ]);

  const filteredAndSortedProducts = useMemo(() => {
    let filtered = products.filter((product) => {
      const matchesSearch =
        !searchTerm ||
        product.name.toLowerCase().includes(searchTerm.toLowerCase()) ||
        product.description?.toLowerCase().includes(searchTerm.toLowerCase()) ||
        product.brand?.name?.toLowerCase().includes(searchTerm.toLowerCase());

      const productHeatRank = resolveHeatRank(product.heatLevel);
      const productHeatCategory = resolveHeatCategory(productHeatRank);

      const matchesHeatLevel =
        !selectedHeatLevel || productHeatCategory === selectedHeatLevel;

      const matchesChilliType =
        !selectedChilliType ||
        (Array.isArray(product.chilliTypes) &&
          product.chilliTypes.some(
            (ct) =>
              ct?.id?.toString() === selectedChilliType ||
              ct?.name === selectedChilliType,
          ));

      const matchesCategory =
        !selectedCategory ||
        (selectedCategory === "sauces"
          ? product.category?.slug != null &&
            HEAT_BAND_SLUGS.has(product.category.slug)
          : product.category?.id?.toString() === selectedCategory ||
            product.category?.slug === selectedCategory);

      const matchesBrand =
        !selectedBrand ||
        product.brand?.id?.toString() === selectedBrand ||
        product.brand?.slug === selectedBrand;

      const matchesCountry =
        !selectedCountry || product.brand?.country === selectedCountry;

      const matchesStock = !hideOutOfStock || (product.stock ?? 1) > 0;

      return (
        matchesSearch &&
        matchesHeatLevel &&
        matchesChilliType &&
        matchesCategory &&
        matchesBrand &&
        matchesCountry &&
        matchesStock
      );
    });

    if (sortBy === "mild-first") {
      filtered = [...filtered].sort((a, b) => {
        const aLevel = resolveHeatRank(a.heatLevel);
        const bLevel = resolveHeatRank(b.heatLevel);
        return (aLevel ?? 999) - (bLevel ?? 999);
      });
    } else if (sortBy === "hot-first") {
      filtered = [...filtered].sort((a, b) => {
        const aLevel = resolveHeatRank(a.heatLevel);
        const bLevel = resolveHeatRank(b.heatLevel);
        return (bLevel ?? -1) - (aLevel ?? -1);
      });
    } else if (sortBy === "price-asc") {
      filtered = [...filtered].sort((a, b) => a.price_cents - b.price_cents);
    } else if (sortBy === "price-desc") {
      filtered = [...filtered].sort((a, b) => b.price_cents - a.price_cents);
    } else if (sortBy === "newest") {
      filtered = [...filtered].sort((a, b) => {
        const aDate = a.created_at ? new Date(a.created_at).getTime() : 0;
        const bDate = b.created_at ? new Date(b.created_at).getTime() : 0;
        return bDate - aDate;
      });
    } else {
      // Popular — sort by historical WooCommerce unit sales descending
      filtered = [...filtered].sort(
        (a, b) => (b.wc_total_sales ?? 0) - (a.wc_total_sales ?? 0),
      );
    }

    return filtered;
  }, [
    products,
    searchTerm,
    selectedHeatLevel,
    selectedChilliType,
    selectedCategory,
    selectedBrand,
    selectedCountry,
    sortBy,
    hideOutOfStock,
  ]);

  const activeFilters = useMemo(() => {
    const filters: Array<{ label: string; value: string; clear: () => void }> =
      [];
    if (selectedHeatLevel) {
      filters.push({
        label: `Heat: ${selectedHeatLevel}`,
        value: `heat-${selectedHeatLevel}`,
        clear: () => { setSelectedHeatLevel(""); clearUrlParams("heat"); },
      });
    }
    if (selectedCategory) {
      const cat = typeCategories.find(
        (cat) =>
          cat.id.toString() === selectedCategory ||
          cat.slug === selectedCategory,
      );
      const catName = cat?.name || selectedCategory;
      filters.push({
        label: `Type: ${catName}`,
        value: `cat-${selectedCategory}`,
        clear: () => { setSelectedCategory(""); clearUrlParams("category"); },
      });
    }
    if (selectedBrand) {
      const brand = brands.find(
        (b) => b.id.toString() === selectedBrand || b.slug === selectedBrand,
      );
      const brandName = brand?.name || selectedBrand;
      filters.push({
        label: `Producer: ${brandName}`,
        value: `brand-${selectedBrand}`,
        clear: () => { setSelectedBrand(""); clearUrlParams("brand"); },
      });
    }
    if (selectedCountry) {
      filters.push({
        label: `Country: ${selectedCountry}`,
        value: `country-${selectedCountry}`,
        clear: () => setSelectedCountry(""),
      });
    }
    return filters;
  }, [
    selectedHeatLevel,
    selectedCategory,
    selectedBrand,
    selectedCountry,
    typeCategories,
    brands,
  ]);

  const selectedPepper = useMemo(() => {
    if (!selectedChilliType) return null;
    return chilliTypes.find((ct) => ct.id.toString() === selectedChilliType);
  }, [selectedChilliType, chilliTypes]);

  const hasActiveFilters =
    !!searchTerm ||
    !!selectedHeatLevel ||
    !!selectedChilliType ||
    !!selectedCategory ||
    !!selectedBrand ||
    !!selectedCountry ||
    sortBy !== "popular";

  const clearAllFilters = () => {
    setSearchTerm("");
    setSelectedHeatLevel("");
    setSelectedChilliType("");
    setSelectedCategory("");
    setSelectedBrand("");
    setSelectedCountry("");
    setSortBy("popular");
    clearUrlParams("category", "heat", "brand");
  };

  const displayedProducts = filteredAndSortedProducts.slice(0, displayCount);
  const hasMore = filteredAndSortedProducts.length > displayCount;

  return (
    <div className="py-8 px-4 sm:px-6 lg:px-8">
      <div className="max-w-7xl mx-auto">
        {/* Filter Section */}
        <section className="border-b border-border pb-5 mb-8">
          <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-7 gap-3">
            {/* Search */}
            <label className="block text-sm font-medium text-foreground">
              {t("search.label")}
              <input
                type="search"
                placeholder={t("search.placeholder")}
                value={searchTerm}
                onChange={(e) => setSearchTerm(e.target.value)}
                className="mt-1 w-full rounded-lg border border-border bg-card px-3 py-2 text-foreground
                         focus:outline-none focus:ring-2 focus:ring-brand-red"
              />
            </label>

            {/* Heat Level - Select */}
            <label className="block text-sm font-medium text-foreground">
              {t("search.filters.heatLevel")}
              <select
                value={selectedHeatLevel}
                onChange={(e) => setSelectedHeatLevel(e.target.value)}
                className="mt-1 w-full rounded-lg border border-border bg-card px-3 py-2 text-foreground
                         focus:outline-none focus:ring-2 focus:ring-brand-red"
              >
                <option value="">All Heat Levels</option>
                {["mild", "medium", "hot", "veryHot", "superHot"].map(
                  (level) => (
                    <option key={level} value={level}>
                      {t(`search.filters.heatLevels.${level}`)}
                    </option>
                  ),
                )}
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
                {brands.map((brand) => (
                  <option key={brand.id} value={brand.id}>
                    {brand.name}
                  </option>
                ))}
              </select>
            </label>

            {/* Country */}
            <label className="block text-sm font-medium text-foreground">
              {t("search.filters.country")}
              <select
                value={selectedCountry}
                onChange={(e) => setSelectedCountry(e.target.value)}
                className="mt-1 w-full rounded-lg border border-border bg-card px-3 py-2 text-foreground
                         focus:outline-none focus:ring-2 focus:ring-brand-red"
              >
                <option value="">{t("search.filters.allCountries")}</option>
                {countries.map((country) => (
                  <option key={country} value={country}>
                    {country}
                  </option>
                ))}
              </select>
            </label>

            {/* Category */}
            <label className="block text-sm font-medium text-foreground">
              {t("search.filters.sauceType")}
              <select
                value={selectedCategory}
                onChange={(e) => setSelectedCategory(e.target.value)}
                className="mt-1 w-full rounded-lg border border-border bg-card px-3 py-2 text-foreground
                         focus:outline-none focus:ring-2 focus:ring-brand-red"
              >
                <option value="">{t("search.filters.allCategories")}</option>
                {typeCategories.map((category) => (
                  <option key={category.slug} value={category.slug}>
                    {category.name}
                  </option>
                ))}
              </select>
            </label>

            {/* Sort */}
            <label className="block text-sm font-medium text-foreground">
              {t("search.filters.sort")}
              <select
                value={sortBy}
                onChange={(e) => setSortBy(e.target.value as SortOption)}
                className="mt-1 w-full rounded-lg border border-border bg-card px-3 py-2 text-foreground
                         focus:outline-none focus:ring-2 focus:ring-brand-red"
              >
                <option value="popular">
                  {t("search.filters.sortPopular")}
                </option>
                <option value="newest">{t("search.filters.sortNewest")}</option>
                <option value="mild-first">
                  {t("search.filters.sortMildToHot")}
                </option>
                <option value="hot-first">
                  {t("search.filters.sortHotToMild")}
                </option>
                <option value="price-asc">
                  {t("search.filters.sortPriceLowHigh") || "Price: Low to High"}
                </option>
                <option value="price-desc">
                  {t("search.filters.sortPriceHighLow") || "Price: High to Low"}
                </option>
              </select>
            </label>

            {/* Pepper */}
            <label className="block text-sm font-medium text-foreground">
              {t("search.filters.pepper")}
              <select
                value={selectedChilliType}
                onChange={(e) => setSelectedChilliType(e.target.value)}
                className="mt-1 w-full rounded-lg border border-border bg-card px-3 py-2 text-foreground
                         focus:outline-none focus:ring-2 focus:ring-brand-red"
              >
                <option value="">{t("search.filters.allChilliTypes")}</option>
                {chilliTypes.map((chilliType) => (
                  <option key={chilliType.id} value={chilliType.id}>
                    {chilliType.name}
                  </option>
                ))}
              </select>
            </label>
          </div>

          {/* Out of stock toggle */}
          <div className="mt-3">
            <button
              onClick={() => setHideOutOfStock(!hideOutOfStock)}
              className={`inline-flex items-center gap-2 text-xs font-medium px-3 py-1.5 rounded-full border transition-colors ${
                hideOutOfStock
                  ? "bg-zinc-100 border-zinc-300 text-zinc-500 hover:border-brand-red hover:text-brand-red"
                  : "bg-brand-red/10 border-brand-red text-brand-red"
              }`}
            >
              <span className={`w-2 h-2 rounded-full ${hideOutOfStock ? "bg-zinc-400" : "bg-brand-red"}`} />
              {hideOutOfStock ? t("search.filters.showOutOfStock") : t("search.filters.hideOutOfStock")}
            </button>
          </div>

          {/* Active Filter Chips */}
          {(activeFilters.length > 0 || selectedPepper) && (
            <div className="mt-3 flex flex-wrap gap-2 items-center">
              {selectedPepper && (
                <Chip variant="filter" onRemove={() => setSelectedChilliType("")}>
                  {selectedPepper.name}
                  {selectedPepper.heatLevel ? ` • ${selectedPepper.heatLevel}` : ""}
                </Chip>
              )}
              {activeFilters.map((filter) => (
                <Chip key={filter.value} variant="filter" onRemove={filter.clear}>
                  {filter.label}
                </Chip>
              ))}
            </div>
          )}

          {/* Results count + reset */}
          <div className="mt-3 flex items-center justify-between">
            <p className="text-sm text-text-muted">
              {t("results.showing")} {displayedProducts.length} {t("results.of")}{" "}
              {filteredAndSortedProducts.length} {t("results.sauces")}
            </p>
            {hasActiveFilters && (
              <button
                onClick={clearAllFilters}
                className="text-xs font-semibold text-brand-red hover:underline underline-offset-4"
              >
                {t("results.clearFilters")}
              </button>
            )}
          </div>
        </section>

        {filteredAndSortedProducts.length === 0 && (
          <div className="text-center py-12">
            <div className="text-6xl mb-4">{selectedCategory === "merchandise" ? "👕" : "🌶️"}</div>
            <h3 className="text-xl font-bold text-foreground mb-4">
              {selectedCategory === "merchandise"
                ? t("results.noMerchandise")
                : t("results.noResults")}
            </h3>
            {selectedCategory !== "merchandise" && (
              <>
                <p className="text-text-muted">{t("results.adjustSearch")}</p>
                <button
                  onClick={clearAllFilters}
                  className="mt-4 px-4 py-2 rounded-lg border border-border bg-card text-foreground
                           transition-colors hover:border-brand-red hover:bg-brand-red/10"
                >
                  {t("results.clearFilters")}
                </button>
              </>
            )}
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
              onClick={() => setDisplayCount((prev) => prev + 12)}
              className="px-4 py-2 rounded-lg border border-border bg-card text-foreground
                       transition-colors font-medium hover:border-brand-red hover:bg-brand-red/10"
            >
              {t("results.loadMore")}
            </button>
          </div>
        )}
      </div>
    </div>
  );
}

export default function ProductArchive(props: ProductArchiveProps) {
  return (
    <Suspense
      fallback={<div className="p-12 text-center">Loading catalogue...</div>}
    >
      <ProductArchiveContent {...props} />
    </Suspense>
  );
}
