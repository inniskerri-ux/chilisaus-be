import { notFound } from "next/navigation";
import Image from "next/image";
import Link from "next/link";
import { getTranslations } from "next-intl/server";
import { createClient } from "@/lib/supabase/server";
import { formatPrice } from "@/lib/format";
import { Star } from "lucide-react";
import { Badge } from "@/components/ui/badge";
import AddToCartButton from "@/components/store/AddToCartButton";
import ProductReviews from "@/components/store/ProductReviews";
import { getLocalizedField } from "@/lib/utils";

export const dynamic = "force-dynamic";

export async function generateMetadata({
  params,
}: {
  params: Promise<{ locale: string; slug: string }>;
}) {
  const { locale, slug } = await params;
  const supabase = await createClient();
  const isEn = locale === "en";
  const { data: row } = await supabase
    .from("products")
    .select(`name, description ${isEn ? "" : `, description_${locale}`}`)
    .eq("slug", slug)
    .maybeSingle();

  if (!row) return {};
  const product = row as Record<string, any>;
  return {
    title: product.name,
    description:
      getLocalizedField(product, "description", locale).slice(0, 160) ??
      undefined,
  };
}

export default async function ProductPage({
  params,
}: {
  params: Promise<{ locale: string; slug: string }>;
}) {
  const { locale, slug } = await params;
  const t = await getTranslations({ locale, namespace: "ProductPage" });
  const supabase = await createClient();

  const isEn = locale === "en";
  const productSelect = `
    id, name, slug, description, ${isEn ? "" : `description_${locale},`} details, ${isEn ? "" : `details_${locale},`}
    price_cents, currency, heat_level,
    image_url, capacity_ml, ingredients, ${isEn ? "" : `ingredients_${locale},`}
    pairing, ${isEn ? "" : `pairing_${locale},`}
    stock, is_active,
    brand:brands ( id, name, slug ),
    category:categories ( id, name, slug ${isEn ? "" : `, name_${locale}`} ),
    chilliTypes:products_chilli_types (
      chilli_type:chilli_types ( id, name, slug, heat_level ${isEn ? "" : `, name_${locale}`} )
    )
  `;

  const { data: row, error } = await supabase
    .from("products")
    .select(productSelect)
    .eq("slug", slug)
    .eq("is_active", true)
    .maybeSingle();

  if (error) console.error("Product fetch error:", error);
  if (!row) notFound();

  const { data: ratingRow } = await supabase
    .from("product_ratings")
    .select("avg_rating, review_count")
    .eq("product_id", (row as any).id)
    .maybeSingle();

  const avgRating = ratingRow ? Number((ratingRow as any).avg_rating) : null;
  const reviewCount = ratingRow ? Number((ratingRow as any).review_count) : 0;

  const rawProduct = row as Record<string, any>;
  const brand = rawProduct.brand as {
    id: string;
    name: string;
    slug: string;
  } | null;
  const category = rawProduct.category
    ? {
        id: rawProduct.category.id,
        name: getLocalizedField(
          rawProduct.category as Record<string, any>,
          "name",
          locale,
        ),
        slug: rawProduct.category.slug,
      }
    : null;
  const chilliTypes: {
    id: string;
    name: string;
    slug: string;
    heat_level: string | null;
  }[] = (rawProduct.chilliTypes ?? [])
    .map((j: any) => j.chilli_type)
    .filter(Boolean)
    .map((ct: any) => ({
      id: ct.id,
      name: getLocalizedField(ct as Record<string, any>, "name", locale),
      slug: ct.slug,
      heat_level: ct.heat_level,
    }));

  const product: any = {
    ...rawProduct,
    description: getLocalizedField(rawProduct, "description", locale),
    ingredients: getLocalizedField(rawProduct, "ingredients", locale),
    pairing: getLocalizedField(rawProduct, "pairing", locale),
    details: getLocalizedField(rawProduct, "details", locale),
  };

  const inStock = (product.stock ?? 0) > 0;

  return (
    <main className="max-w-5xl mx-auto px-4 py-8 sm:px-6 lg:px-8">
      {/* Breadcrumb */}
      <nav className="mb-6 text-sm text-text-muted flex items-center gap-2">
        <Link
          href={`/${locale}/shop`}
          className="hover:text-foreground transition-colors"
        >
          {t("breadcrumbShop")}
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
        <div className="relative aspect-square w-full overflow-hidden rounded-2xl bg-zinc-50 border border-zinc-100 p-8">
          {product.image_url ? (
            <Image
              src={product.image_url}
              alt={product.name}
              fill
              className="object-contain"
              sizes="(max-width: 768px) 100vw, 50vw"
              priority
            />
          ) : (
            <div className="flex h-full items-center justify-center text-6xl">
              🌶️
            </div>
          )}
        </div>

        {/* Details */}
        <div className="flex flex-col gap-4">
          <div className="flex flex-wrap items-center gap-2">
            {category && <Badge variant="secondary">{category.name}</Badge>}
            {product.heat_level && (
              <Badge
                variant="outline"
                className="text-orange-600 border-orange-300"
              >
                {t("heatLevel")} {product.heat_level}
              </Badge>
            )}
          </div>

          <h1 className="text-2xl font-bold text-foreground leading-snug">
            {product.name}
          </h1>

          {brand && (
            <p className="text-sm text-text-muted">
              {t("by")}{" "}
              <span className="font-semibold text-foreground">
                {brand.name}
              </span>
            </p>
          )}

          {reviewCount > 0 && (
            <div className="flex items-center gap-2">
              <div className="flex text-orange-400">
                {[...Array(5)].map((_, i) => (
                  <Star
                    key={i}
                    size={16}
                    fill={i < Math.round(avgRating ?? 0) ? "currentColor" : "none"}
                    className={i < Math.round(avgRating ?? 0) ? "" : "text-zinc-200"}
                  />
                ))}
              </div>
              <span className="text-sm text-zinc-500">
                {avgRating?.toFixed(1)} ({reviewCount} {reviewCount === 1 ? t("reviewCount") : t("reviewsCount")})
              </span>
            </div>
          )}

          <p className="text-3xl font-bold text-foreground">
            {formatPrice(product.price_cents, product.currency, locale)}
          </p>

          {product.capacity_ml && (
            <p className="text-sm text-text-muted">{product.capacity_ml} ml</p>
          )}

          {/* Stock */}
          <p
            className={`text-sm font-medium ${inStock ? "text-green-600" : "text-red-500"}`}
          >
            {inStock ? t("inStock") : t("outOfStock")}
          </p>

          {/* Add to Cart */}
          <AddToCartButton
            productId={product.id}
            disabled={!inStock}
            label={t("addToCart")}
            className="w-full sm:w-auto bg-brand-red hover:bg-brand-red/90 text-white"
          />

          {/* Description */}
          {product.description && (
            <div className="mt-2 border-t border-border pt-4">
              <h2 className="text-sm font-semibold text-foreground mb-2">
                {t("description")}
              </h2>
              <p className="text-sm text-text-muted leading-relaxed whitespace-pre-line">
                {product.description}
              </p>
            </div>
          )}

          {/* Pairing */}
          {product.pairing && (
            <div className="border-t border-border pt-4">
              <h2 className="text-sm font-semibold text-foreground mb-2">
                {t("pairing")}
              </h2>
              <p className="text-sm text-text-muted leading-relaxed whitespace-pre-line">
                {product.pairing}
              </p>
            </div>
          )}

          {/* Ingredients */}
          {product.ingredients && (
            <div className="border-t border-border pt-4">
              <h2 className="text-sm font-semibold text-foreground mb-2">
                {t("ingredients")}
              </h2>
              <p className="text-sm text-text-muted">{product.ingredients}</p>
            </div>
          )}

          {/* Chilli types */}
          {chilliTypes.length > 0 && (
            <div className="border-t border-border pt-4">
              <h2 className="text-sm font-semibold text-foreground mb-2">
                {t("peppers")}
              </h2>
              <div className="flex flex-wrap gap-2">
                {chilliTypes.map((ct) => (
                  <Badge key={ct.id} variant="outline">
                    {ct.name}
                  </Badge>
                ))}
              </div>
            </div>
          )}
        </div>
      </div>

      <ProductReviews productId={product.id} locale={locale} />
    </main>
  );
}
