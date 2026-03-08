-- Migration: Polish Translation Cleanup / Audit
-- Fallback for any product that didn't get a translation in previous batches

UPDATE public.products SET description_pl = description WHERE description_pl IS NULL;
UPDATE public.products SET ingredients_pl = ingredients WHERE ingredients_pl IS NULL;
UPDATE public.products SET details_pl = details WHERE details_pl IS NULL;

-- Categories fallback
UPDATE public.categories SET name_pl = name WHERE name_pl IS NULL;
UPDATE public.categories SET description_pl = description WHERE description_pl IS NULL;

-- Chilli Types fallback
UPDATE public.chilli_types SET name_pl = name WHERE name_pl IS NULL;
UPDATE public.chilli_types SET description_pl = description WHERE description_pl IS NULL;

-- Brands fallback
UPDATE public.brands SET description_pl = description WHERE description_pl IS NULL;
