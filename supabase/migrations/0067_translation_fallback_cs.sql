-- Migration: Czech Translation Cleanup / Audit
-- Fallback for any product that didn't get a translation in previous batches

UPDATE public.products SET description_cs = description WHERE description_cs IS NULL;
UPDATE public.products SET ingredients_cs = ingredients WHERE ingredients_cs IS NULL;
UPDATE public.products SET details_cs = details WHERE details_cs IS NULL;

-- Categories fallback
UPDATE public.categories SET name_cs = name WHERE name_cs IS NULL;
UPDATE public.categories SET description_cs = description WHERE description_cs IS NULL;

-- Chilli Types fallback
UPDATE public.chilli_types SET name_cs = name WHERE name_cs IS NULL;
UPDATE public.chilli_types SET description_cs = description WHERE description_cs IS NULL;

-- Brands fallback
UPDATE public.brands SET description_cs = description WHERE description_cs IS NULL;
