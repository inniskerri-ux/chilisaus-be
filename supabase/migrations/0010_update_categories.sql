-- Migration 0010: update categories to match confirmed product taxonomy
-- Heat-band categories (MILD/MEDIUM/HOT/VERY HOT/SUPERHOT) + product-type categories

-- ============================================================
-- STEP 1: NULL out category_id for products in categories being removed
-- ============================================================
UPDATE public.products
SET category_id = NULL
WHERE category_id IN (
  SELECT id FROM public.categories
  WHERE slug IN ('classic-hot-sauce', 'fermented', 'smoky', 'fruit-forward')
);

-- ============================================================
-- STEP 2: Update existing categories (slug renames + name corrections)
-- ============================================================
UPDATE public.categories SET slug = 'chili-challenges',               name = 'Chili Challenges'                    WHERE slug = 'chili-challenges-spicy-snacks';
UPDATE public.categories SET slug = 'chili-oils',                     name = 'Chili Oils'                          WHERE slug = 'chili-oil';
UPDATE public.categories SET slug = 'dried-chili-pods-powders-flakes',name = 'Dried Chili Pods, Powders & Flakes'  WHERE slug = 'dried-chilies-pods-flakes-powders';
UPDATE public.categories SET                                           name = 'Dried Chili Pods, Powders & Flakes'  WHERE slug = 'dried-chili-pods-powders-flakes'; -- idempotent
UPDATE public.categories SET slug = 'seasonings-rubs',                name = 'Seasonings & Rubs'                   WHERE slug = 'salts-seasonings-rubs';
UPDATE public.categories SET                                           name = 'Chili Extracts'                      WHERE slug = 'chili-extracts';
UPDATE public.categories SET                                           name = 'Gift Boxes & Sets'                   WHERE slug = 'gift-boxes-sets';
UPDATE public.categories SET                                           name = 'Hot Honey'                           WHERE slug = 'hot-honey';

-- ============================================================
-- STEP 3: Delete obsolete categories (from original seed, not used by real products)
-- ============================================================
DELETE FROM public.categories
WHERE slug IN ('classic-hot-sauce', 'fermented', 'smoky', 'fruit-forward');

-- ============================================================
-- STEP 4: Insert new categories
-- ============================================================
INSERT INTO public.categories (name, slug, description) VALUES
  ('MILD',                       'mild',                      'Heat Levels 1–4'),
  ('MEDIUM',                     'medium',                    'Heat Levels 5–7'),
  ('HOT',                        'hot',                       'Heat Levels 8–9'),
  ('VERY HOT',                   'very-hot',                  'Heat Level 10'),
  ('SUPERHOT',                   'superhot',                  'Heat Levels 11–20'),
  ('BBQ Products',               'bbq-products',              NULL),
  ('Chili Chocolate',            'chili-chocolate',           NULL),
  ('Hot Salt',                   'hot-salt',                  NULL),
  ('Spicy Chips, Nuts & Candy',  'spicy-chips-nuts-candy',    NULL)
ON CONFLICT (slug) DO NOTHING;

-- ============================================================
-- STEP 5: Auto-assign heat-band categories to hot sauces
--         (products with a numeric heat_level but no category)
-- heat_level is stored as text; cast safely to integer for comparison
-- ============================================================
UPDATE public.products
SET category_id = (SELECT id FROM public.categories WHERE slug = 'mild' LIMIT 1)
WHERE category_id IS NULL
  AND heat_level IS NOT NULL
  AND heat_level::text ~ '^\d+$'
  AND heat_level::text::integer BETWEEN 1 AND 4;

UPDATE public.products
SET category_id = (SELECT id FROM public.categories WHERE slug = 'medium' LIMIT 1)
WHERE category_id IS NULL
  AND heat_level IS NOT NULL
  AND heat_level::text ~ '^\d+$'
  AND heat_level::text::integer BETWEEN 5 AND 7;

UPDATE public.products
SET category_id = (SELECT id FROM public.categories WHERE slug = 'hot' LIMIT 1)
WHERE category_id IS NULL
  AND heat_level IS NOT NULL
  AND heat_level::text ~ '^\d+$'
  AND heat_level::text::integer BETWEEN 8 AND 9;

UPDATE public.products
SET category_id = (SELECT id FROM public.categories WHERE slug = 'very-hot' LIMIT 1)
WHERE category_id IS NULL
  AND heat_level IS NOT NULL
  AND heat_level::text ~ '^\d+$'
  AND heat_level::text::integer = 10;

UPDATE public.products
SET category_id = (SELECT id FROM public.categories WHERE slug = 'superhot' LIMIT 1)
WHERE category_id IS NULL
  AND heat_level IS NOT NULL
  AND heat_level::text ~ '^\d+$'
  AND heat_level::text::integer >= 11;
