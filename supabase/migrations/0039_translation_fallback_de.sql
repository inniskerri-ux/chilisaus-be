-- Migration: German Translation Cleanup / Audit
-- Fallback for any product that didn't get a translation in previous batches

UPDATE public.products SET description_de = description WHERE description_de IS NULL;
UPDATE public.products SET ingredients_de = ingredients WHERE ingredients_de IS NULL;
UPDATE public.products SET details_de = details WHERE details_de IS NULL;

-- Categories fallback
UPDATE public.categories SET name_de = name WHERE name_de IS NULL;
UPDATE public.categories SET description_de = description WHERE description_de IS NULL;

-- Chilli Types fallback
UPDATE public.chilli_types SET name_de = name WHERE name_de IS NULL;
UPDATE public.chilli_types SET description_de = description WHERE description_de IS NULL;

-- Brands fallback
UPDATE public.brands SET description_de = description WHERE description_de IS NULL;
