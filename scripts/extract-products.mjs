import fs from "fs";

const content = fs.readFileSync(
  "supabase/migrations/0006_seed_products.sql",
  "utf8",
);

const products = [];
// Updated regex to handle NULL brand_id
const productRegex =
  /\(\s*gen_random_uuid\(\),\s*\(SELECT id FROM public\.profiles WHERE role = 'shop_owner' LIMIT 1\),\s*(NULL|\(SELECT id FROM public\.brands\s+WHERE slug = '([^']+)'\s+LIMIT 1\)),\s*([^,]+),\s*'([^']+)',\s*'([^']+)',\s*(NULL|'[^']+')/g;

let match;
while ((match = productRegex.exec(content)) !== null) {
  products.push({
    brandSlug: match[2] || null,
    categorySubquery: match[3].trim(),
    name: match[4],
    slug: match[5],
    description: match[6] === "NULL" ? null : match[6].slice(1, -1),
  });
}

fs.writeFileSync(
  "scripts/products_data.json",
  JSON.stringify(products, null, 2),
);
console.log(
  `Extracted ${products.length} products to scripts/products_data.json`,
);
