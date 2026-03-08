-- Migration: Bulgarian Translation Cleanup / Audit
-- Fallback for any product that didn't get a translation in previous batches

UPDATE public.products SET description_bg = description WHERE description_bg IS NULL;
UPDATE public.products SET ingredients_bg = ingredients WHERE ingredients_bg IS NULL;
UPDATE public.products SET details_bg = details WHERE details_bg IS NULL;

-- Categories fallback
UPDATE public.categories SET name_bg = name WHERE name_bg IS NULL;
UPDATE public.categories SET description_bg = description WHERE description_bg IS NULL;

-- Chilli Types fallback
UPDATE public.chilli_types SET name_bg = name WHERE name_bg IS NULL;
UPDATE public.chilli_types SET description_bg = description WHERE description_bg IS NULL;

-- Brands fallback
UPDATE public.brands SET description_bg = description WHERE description_bg IS NULL;
