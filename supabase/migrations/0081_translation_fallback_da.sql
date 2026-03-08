-- Migration: Danish Translation Cleanup / Audit
-- Fallback for any product that didn't get a translation in previous batches

UPDATE public.products SET description_da = description WHERE description_da IS NULL;
UPDATE public.products SET ingredients_da = ingredients WHERE ingredients_da IS NULL;
UPDATE public.products SET details_da = details WHERE details_da IS NULL;

-- Categories fallback
UPDATE public.categories SET name_da = name WHERE name_da IS NULL;
UPDATE public.categories SET description_da = description WHERE description_da IS NULL;

-- Chilli Types fallback
UPDATE public.chilli_types SET name_da = name WHERE name_da IS NULL;
UPDATE public.chilli_types SET description_da = description WHERE description_da IS NULL;

-- Brands fallback
UPDATE public.brands SET description_da = description WHERE description_da IS NULL;
