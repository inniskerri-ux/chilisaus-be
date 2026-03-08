-- Migration: Swedish Translation Cleanup / Audit
-- Fallback for any product that didn't get a translation in previous batches

UPDATE public.products SET description_sv = description WHERE description_sv IS NULL;
UPDATE public.products SET ingredients_sv = ingredients WHERE ingredients_sv IS NULL;
UPDATE public.products SET details_sv = details WHERE details_sv IS NULL;

-- Categories fallback
UPDATE public.categories SET name_sv = name WHERE name_sv IS NULL;
UPDATE public.categories SET description_sv = description WHERE description_sv IS NULL;

-- Chilli Types fallback
UPDATE public.chilli_types SET name_sv = name WHERE name_sv IS NULL;
UPDATE public.chilli_types SET description_sv = description WHERE description_sv IS NULL;

-- Brands fallback
UPDATE public.brands SET description_sv = description WHERE description_sv IS NULL;
