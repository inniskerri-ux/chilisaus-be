-- Migration: Dutch Translation Cleanup / Audit
-- Fallback for any product that didn't get a translation in previous batches

UPDATE public.products SET description_nl = description WHERE description_nl IS NULL;
UPDATE public.products SET ingredients_nl = ingredients WHERE ingredients_nl IS NULL;
UPDATE public.products SET details_nl = details WHERE details_nl IS NULL;

-- Categories fallback
UPDATE public.categories SET name_nl = name WHERE name_nl IS NULL;
UPDATE public.categories SET description_nl = description WHERE description_nl IS NULL;

-- Chilli Types fallback
UPDATE public.chilli_types SET name_nl = name WHERE name_nl IS NULL;
UPDATE public.chilli_types SET description_nl = description WHERE description_nl IS NULL;

-- Brands fallback
UPDATE public.brands SET description_nl = description WHERE description_nl IS NULL;
