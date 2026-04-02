-- Add pairing column and its localized variants to products table
ALTER TABLE public.products ADD COLUMN IF NOT EXISTS pairing text;
ALTER TABLE public.products ADD COLUMN IF NOT EXISTS pairing_nl text;
ALTER TABLE public.products ADD COLUMN IF NOT EXISTS pairing_fr text;
ALTER TABLE public.products ADD COLUMN IF NOT EXISTS pairing_cs text;
ALTER TABLE public.products ADD COLUMN IF NOT EXISTS pairing_es text;
ALTER TABLE public.products ADD COLUMN IF NOT EXISTS pairing_de text;
ALTER TABLE public.products ADD COLUMN IF NOT EXISTS pairing_pl text;
ALTER TABLE public.products ADD COLUMN IF NOT EXISTS pairing_pt text;
ALTER TABLE public.products ADD COLUMN IF NOT EXISTS pairing_it text;
ALTER TABLE public.products ADD COLUMN IF NOT EXISTS pairing_da text;
ALTER TABLE public.products ADD COLUMN IF NOT EXISTS pairing_no text;
ALTER TABLE public.products ADD COLUMN IF NOT EXISTS pairing_sv text;
ALTER TABLE public.products ADD COLUMN IF NOT EXISTS pairing_uk text;
ALTER TABLE public.products ADD COLUMN IF NOT EXISTS pairing_ar text;
ALTER TABLE public.products ADD COLUMN IF NOT EXISTS pairing_bg text;

COMMENT ON COLUMN public.products.pairing IS 'Suggested food pairings for the product.';
