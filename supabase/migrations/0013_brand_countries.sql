-- Migration 0013: populate brand country fields
UPDATE public.brands SET country = 'Belgium'        WHERE slug = 'chilisausbe-our-own-range';
UPDATE public.brands SET country = 'Belgium'        WHERE slug = 'happy-hatter-hot-sauce-be';
UPDATE public.brands SET country = 'Belgium'        WHERE slug = 'swet-be';
UPDATE public.brands SET country = 'Germany'        WHERE slug = 'crazy-bastard-sauce-de';
UPDATE public.brands SET country = 'Netherlands'    WHERE slug = 'el-jefes-primo-salsa-nl';
UPDATE public.brands SET country = 'Netherlands'    WHERE slug = 'white-whale-sauces-nl';
UPDATE public.brands SET country = 'Netherlands'    WHERE slug = 'chardys-hot-sauce';
UPDATE public.brands SET country = 'United Kingdom' WHERE slug = 'devon-chilli-man-uk';
UPDATE public.brands SET country = 'United Kingdom' WHERE slug = 'grim-reaper-foods-uk';
UPDATE public.brands SET country = 'United Kingdom' WHERE slug = 'hot-headz-uk';
UPDATE public.brands SET country = 'United Kingdom' WHERE slug = 'wiltshire-chilli-farm-uk';
UPDATE public.brands SET country = 'Czech Republic' WHERE slug = 'hot-chip-cz';
UPDATE public.brands SET country = 'Sweden'         WHERE slug = 'skansk-chili-sweden';
UPDATE public.brands SET country = 'Slovakia'       WHERE slug = 'burning-angel';
