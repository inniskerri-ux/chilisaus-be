-- Migration: Arabic Translation Cleanup / Audit
-- Fallback for any product that didn't get a translation in previous batches

UPDATE public.products SET description_ar = description WHERE description_ar IS NULL;
UPDATE public.products SET ingredients_ar = ingredients WHERE ingredients_ar IS NULL;
UPDATE public.products SET details_ar = details WHERE details_ar IS NULL;

-- Categories fallback
UPDATE public.categories SET name_ar = name WHERE name_ar IS NULL;
UPDATE public.categories SET description_ar = description WHERE description_ar IS NULL;

-- Chilli Types fallback
UPDATE public.chilli_types SET name_ar = name WHERE name_ar IS NULL;
UPDATE public.chilli_types SET description_ar = description WHERE description_ar IS NULL;

-- Brands fallback
UPDATE public.brands SET description_ar = description WHERE description_ar IS NULL;
