-- Migration: Ukrainian Translation Cleanup / Audit
-- Fallback for any product that didn't get a translation in previous batches

UPDATE public.products SET description_uk = description WHERE description_uk IS NULL;
UPDATE public.products SET ingredients_uk = ingredients WHERE ingredients_uk IS NULL;
UPDATE public.products SET details_uk = details WHERE details_uk IS NULL;

-- Categories fallback
UPDATE public.categories SET name_uk = name WHERE name_uk IS NULL;
UPDATE public.categories SET description_uk = description WHERE description_uk IS NULL;

-- Chilli Types fallback
UPDATE public.chilli_types SET name_uk = name WHERE name_uk IS NULL;
UPDATE public.chilli_types SET description_uk = description WHERE description_uk IS NULL;

-- Brands fallback
UPDATE public.brands SET description_uk = description WHERE description_uk IS NULL;
