-- Rename heat band categories (remove "Chili Sauce" suffix)
UPDATE categories SET name = 'Mild'      WHERE slug = 'mild';
UPDATE categories SET name = 'Medium'    WHERE slug = 'medium';
UPDATE categories SET name = 'Hot'       WHERE slug = 'hot';
UPDATE categories SET name = 'Very Hot'  WHERE slug = 'very-hot';
UPDATE categories SET name = 'Superhot'  WHERE slug = 'superhot';

-- Remove "Chili" prefix from product type categories
UPDATE categories SET name = 'Challenges' WHERE slug = 'chili-challenges';
UPDATE categories SET name = 'Chocolate'  WHERE slug = 'chili-chocolate';
UPDATE categories SET name = 'Extracts'   WHERE slug = 'chili-extracts';
UPDATE categories SET name = 'Oils'       WHERE slug = 'chili-oils';

-- Add Capsaicin Extract pepper type
INSERT INTO chilli_types (name, slug)
VALUES ('Capsaicin Extract', 'capsaicin-extract')
ON CONFLICT (slug) DO NOTHING;

-- Junction table: products <-> categories (many-to-many)
CREATE TABLE IF NOT EXISTS product_categories (
  product_id  UUID NOT NULL REFERENCES products(id)  ON DELETE CASCADE,
  category_id UUID NOT NULL REFERENCES categories(id) ON DELETE CASCADE,
  PRIMARY KEY (product_id, category_id)
);

-- Seed from existing primary category_id
INSERT INTO product_categories (product_id, category_id)
SELECT id, category_id
FROM products
WHERE category_id IS NOT NULL
ON CONFLICT DO NOTHING;

-- RLS (mirrors products_chilli_types pattern)
ALTER TABLE product_categories ENABLE ROW LEVEL SECURITY;

CREATE POLICY "product_categories select"
  ON product_categories FOR SELECT USING (true);

CREATE POLICY "product_categories manage"
  ON product_categories FOR ALL USING (is_shop_owner());
