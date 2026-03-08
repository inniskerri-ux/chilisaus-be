-- Migration: Translate base seeds (Dutch)

-- Categories
UPDATE public.categories SET name_nl = 'Klassieke Hete Saus', description_nl = 'Alledaagse pepersauzen voor elke maaltijd.' WHERE slug = 'classic-hot-sauce';
UPDATE public.categories SET name_nl = 'Gefermenteerd', description_nl = 'Complexe smaak door langzame fermentatie.' WHERE slug = 'fermented';
UPDATE public.categories SET name_nl = 'Rokerig', description_nl = 'Smeulende sauzen met op vuur geroosterde pepers.' WHERE slug = 'smoky';
UPDATE public.categories SET name_nl = 'Fruitig', description_nl = 'Heldere, sappige melanges met tropisch fruit.' WHERE slug = 'fruit-forward';

-- Chilli Types
UPDATE public.chilli_types SET name_nl = 'Jalapeño', description_nl = 'Gebalanceerde hitte van groene peper.' WHERE slug = 'jalapeno';
UPDATE public.chilli_types SET name_nl = 'Habanero', description_nl = 'Vurige citrusaroma en hitte.' WHERE slug = 'habanero';
UPDATE public.chilli_types SET name_nl = 'Ghost Pepper', description_nl = 'Naga Jolokia intensiteit voor sensatiezoekers.' WHERE slug = 'ghost-pepper';
UPDATE public.chilli_types SET name_nl = 'Carolina Reaper', description_nl = 'Wereldrecord hitte met fruitige tonen.' WHERE slug = 'carolina-reaper';
