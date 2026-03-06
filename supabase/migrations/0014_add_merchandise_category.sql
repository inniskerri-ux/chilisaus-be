-- Migration 0014: add Merchandise category
INSERT INTO public.categories (name, slug)
VALUES ('Merchandise', 'merchandise')
ON CONFLICT (slug) DO NOTHING;
