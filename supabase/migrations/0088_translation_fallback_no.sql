-- Migration: Norwegian Translation Cleanup / Audit
-- Fallback for any product that didn't get a translation in previous batches

UPDATE public.products SET description_no = description WHERE description_no IS NULL;
UPDATE public.products SET ingredients_no = ingredients WHERE ingredients_no IS NULL;
UPDATE public.products SET details_no = details WHERE details_no IS NULL;

-- Categories fallback
UPDATE public.categories SET name_no = name WHERE name_no IS NULL;
UPDATE public.categories SET description_no = description WHERE description_no IS NULL;

-- Chilli Types fallback
UPDATE public.chilli_types SET name_no = name WHERE name_no IS NULL;
UPDATE public.chilli_types SET description_no = description WHERE description_no IS NULL;

-- Brands fallback
UPDATE public.brands SET description_no = description WHERE description_no IS NULL;
