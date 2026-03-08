import { createClient } from "@/lib/supabase/server";
import { getTranslations } from "next-intl/server";
import ProductArchive from "@/components/store/ProductArchive";
import { getLocalizedField } from "@/lib/utils";
import type {
  StoreProduct,
  ChilliType,
  Category,
  StoreBrand,
} from "@/components/store/types";

export const dynamic = "force-dynamic";
export const revalidate = 0;

export default async function ShopPage({
  params,
}: {
  params: Promise<{ locale: string }>;
}) {
  const { locale } = await params;
  const t = await getTranslations({ locale, namespace: "SauceArchive" });
  const supabase = await createClient();

  const isEn = locale === "en";
  const productSelect = `
    id, name, slug, description, ${isEn ? "" : `description_${locale},`} price_cents, currency,
    heat_level, image_url, stock, is_active, created_at,
    brand:brands ( id, name, slug, country, description ${isEn ? "" : `, description_${locale}`} ),
    category:categories ( id, name, slug ${isEn ? "" : `, name_${locale}`} ),
    chilliTypes:products_chilli_types ( 
      chilli_type:chilli_types ( id, name, slug, heat_level ${isEn ? "" : `, name_${locale}`} ) 
    )
  `;

  const [productsRes, categoriesRes, chilliTypesRes, brandsRes] =
    await Promise.all([
      supabase
        .from("products")
        .select(productSelect)
        .eq("is_active", true)
        .order("created_at", { ascending: false }),

      supabase
        .from("categories")
        .select(`id, name, ${isEn ? "" : `name_${locale},`} slug`)
        .order("name"),

      supabase
        .from("chilli_types")
        .select(`id, name, ${isEn ? "" : `name_${locale},`} slug, heat_level`)
        .order("name"),

      supabase
        .from("brands")
        .select(`id, name, slug, country, description ${isEn ? "" : `, description_${locale}`}`)
        .order("name"),
    ]);

  // Log errors if they occur
  if (productsRes.error) console.error("Products fetch error:", productsRes.error);
  if (categoriesRes.error) console.error("Categories fetch error:", categoriesRes.error);
  if (chilliTypesRes.error) console.error("ChilliTypes fetch error:", chilliTypesRes.error);
  if (brandsRes.error) console.error("Brands fetch error:", brandsRes.error);

  const products: StoreProduct[] = (productsRes.data ?? []).map(
    (row: Record<string, any>) => ({
      id: row.id,
      name: row.name,
      slug: row.slug,
      description: getLocalizedField(row, "description", locale),
      price_cents: row.price_cents,
      currency: row.currency,
      heatLevel: row.heat_level,
      image_url: row.image_url,
      stock: row.stock,
      is_active: row.is_active,
      created_at: row.created_at,
      brand: row.brand
        ? {
            id: row.brand.id,
            name: row.brand.name,
            slug: row.brand.slug,
            country: row.brand.country,
            description: getLocalizedField(row.brand, "description", locale),
          }
        : null,
      category: row.category
        ? {
            id: row.category.id,
            name: getLocalizedField(row.category, "name", locale),
            slug: row.category.slug,
          }
        : null,
      chilliTypes: (row.chilliTypes ?? [])
        .map((j: any) => j.chilli_type)
        .filter(Boolean)
        .map((ct: any) => ({
          id: ct.id,
          name: getLocalizedField(ct, "name", locale),
          slug: ct.slug,
          heatLevel: ct.heat_level,
        })),
    }),
  );

  const categories: Category[] = (categoriesRes.data ?? []).map(
    (c: Record<string, any>) => ({
      id: c.id,
      name: getLocalizedField(c, "name", locale),
      slug: c.slug,
    }),
  );

  const chilliTypes: ChilliType[] = (chilliTypesRes.data ?? []).map(
    (ct: Record<string, any>) => ({
      id: ct.id,
      name: getLocalizedField(ct, "name", locale),
      slug: ct.slug,
      heatLevel: ct.heat_level,
    }),
  );

  const brands: StoreBrand[] = (brandsRes.data ?? []).map(
    (b: Record<string, any>) => ({
      id: b.id,
      name: b.name,
      slug: b.slug,
      country: b.country,
      description: getLocalizedField(b, "description", locale),
    }),
  );

  return (
    <main>
      <div className="px-4 pt-8 sm:px-6 lg:px-8">
        <div className="max-w-7xl mx-auto">
          <h1 className="text-3xl font-bold text-foreground">{t("heading")}</h1>
        </div>
      </div>
      <ProductArchive
        products={products}
        categories={categories}
        chilliTypes={chilliTypes}
        brands={brands}
        locale={locale}
      />
    </main>
  );
}
