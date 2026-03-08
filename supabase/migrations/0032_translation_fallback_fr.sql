-- Migration: French Translation Cleanup / Audit
-- Fallback for any product that didn't get a translation in previous batches

UPDATE public.products SET description_fr = description WHERE description_fr IS NULL;
UPDATE public.products SET ingredients_fr = ingredients WHERE ingredients_fr IS NULL;
UPDATE public.products SET details_fr = details WHERE details_fr IS NULL;

-- Categories fallback
UPDATE public.categories SET name_fr = name WHERE name_fr IS NULL;
UPDATE public.categories SET description_fr = description WHERE description_fr IS NULL;

-- Chilli Types fallback
UPDATE public.chilli_types SET name_fr = name WHERE name_fr IS NULL;
UPDATE public.chilli_types SET description_fr = description WHERE description_fr IS NULL;

-- Brands fallback
UPDATE public.brands SET description_fr = description WHERE description_fr IS NULL;
