-- Migration 0011: rename heat-band categories to include "Chili Sauce" suffix
UPDATE public.categories SET name = 'Mild Chili Sauce'       WHERE slug = 'mild';
UPDATE public.categories SET name = 'Medium Chili Sauce'     WHERE slug = 'medium';
UPDATE public.categories SET name = 'Hot Chili Sauce'        WHERE slug = 'hot';
UPDATE public.categories SET name = 'Very Hot Chili Sauce'   WHERE slug = 'very-hot';
UPDATE public.categories SET name = 'Superhot Chili Sauce'   WHERE slug = 'superhot';
