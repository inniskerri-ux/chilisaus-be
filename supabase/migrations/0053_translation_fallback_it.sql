-- Migration: Italian Translation Cleanup / Audit
-- Fallback for any product that didn't get a translation in previous batches

UPDATE public.products SET description_it = description WHERE description_it IS NULL;
UPDATE public.products SET ingredients_it = ingredients WHERE ingredients_it IS NULL;
UPDATE public.products SET details_it = details WHERE details_it IS NULL;

-- Categories fallback
UPDATE public.categories SET name_it = name WHERE name_it IS NULL;
UPDATE public.categories SET description_it = description WHERE description_it IS NULL;

-- Chilli Types fallback
UPDATE public.chilli_types SET name_it = name WHERE name_it IS NULL;
UPDATE public.chilli_types SET description_it = description WHERE description_it IS NULL;

-- Brands fallback
UPDATE public.brands SET description_it = description WHERE description_it IS NULL;
