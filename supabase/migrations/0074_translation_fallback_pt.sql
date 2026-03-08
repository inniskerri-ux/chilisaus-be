-- Migration: Portuguese Translation Cleanup / Audit
-- Fallback for any product that didn't get a translation in previous batches

UPDATE public.products SET description_pt = description WHERE description_pt IS NULL;
UPDATE public.products SET ingredients_pt = ingredients WHERE ingredients_pt IS NULL;
UPDATE public.products SET details_pt = details WHERE details_pt IS NULL;

-- Categories fallback
UPDATE public.categories SET name_pt = name WHERE name_pt IS NULL;
UPDATE public.categories SET description_pt = description WHERE description_pt IS NULL;

-- Chilli Types fallback
UPDATE public.chilli_types SET name_pt = name WHERE name_pt IS NULL;
UPDATE public.chilli_types SET description_pt = description WHERE description_pt IS NULL;

-- Brands fallback
UPDATE public.brands SET description_pt = description WHERE description_pt IS NULL;
