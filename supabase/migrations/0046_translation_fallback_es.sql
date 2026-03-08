-- Migration: Spanish Translation Cleanup / Audit
-- Fallback for any product that didn't get a translation in previous batches

UPDATE public.products SET description_es = description WHERE description_es IS NULL;
UPDATE public.products SET ingredients_es = ingredients WHERE ingredients_es IS NULL;
UPDATE public.products SET details_es = details WHERE details_es IS NULL;

-- Categories fallback
UPDATE public.categories SET name_es = name WHERE name_es IS NULL;
UPDATE public.categories SET description_es = description WHERE description_es IS NULL;

-- Chilli Types fallback
UPDATE public.chilli_types SET name_es = name WHERE name_es IS NULL;
UPDATE public.chilli_types SET description_es = description WHERE description_es IS NULL;

-- Brands fallback
UPDATE public.brands SET description_es = description WHERE description_es IS NULL;
