-- Migration 0016: Create High River Sauces brand and reassign product

INSERT INTO public.brands (id, name, slug, country)
VALUES (gen_random_uuid(), 'High River Sauces', 'high-river-sauces', 'USA')
ON CONFLICT (slug) DO NOTHING;

UPDATE public.products
SET brand_id = (SELECT id FROM public.brands WHERE slug = 'high-river-sauces' LIMIT 1)
WHERE slug = 'high-river-sauces-pepper-x-taco-sauce';
