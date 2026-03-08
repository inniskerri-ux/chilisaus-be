-- Migration: Translate base seeds (Danish)

-- Categories
UPDATE public.categories SET name_da = 'Klassisk stærk sauce', description_da = 'Hverdagschilisaucer til ethvert måltid.' WHERE slug = 'classic-hot-sauce';
UPDATE public.categories SET name_da = 'Fermenteret', description_da = 'Kompleks syrlighed fra langsom fermentering.' WHERE slug = 'fermented';
UPDATE public.categories SET name_da = 'Røget', description_da = 'Rygende saucer med ildristede chilier.' WHERE slug = 'smoky';
UPDATE public.categories SET name_da = 'Frugtig', description_da = 'Friske, saftige blandinger med tropiske frugter.' WHERE slug = 'fruit-forward';
UPDATE public.categories SET name_da = 'Chili-udfordringer & stærke snacks', description_da = 'Test dine grænser med vores stærkeste snacks.' WHERE slug = 'chili-challenges-spicy-snacks';
UPDATE public.categories SET name_da = 'Chili-ekstrakter', description_da = 'Rene capsaicin-ekstrakter for ekstrem varme.' WHERE slug = 'chili-extracts';
UPDATE public.categories SET name_da = 'Chiliolie', description_da = 'Infuserede olier til madlavning eller smagsgiver.' WHERE slug = 'chili-oil';
UPDATE public.categories SET name_da = 'Tørrede chilier', description_da = 'Bælge, flager og pulver til dit køkken.' WHERE slug = 'dried-chilies-pods-flakes-powders';
UPDATE public.categories SET name_da = 'Gaveæsker', description_da = 'Den perfekte gave til chili-elskere.' WHERE slug = 'gift-boxes-sets';
UPDATE public.categories SET name_da = 'Stærk honning', description_da = 'Honning med chili for et sødt-stærkt pift.' WHERE slug = 'hot-honey';
UPDATE public.categories SET name_da = 'Salte & krydderier', description_da = 'Løft dine retter med vores krydderiblandinger.' WHERE slug = 'salts-seasonings-rubs';

-- Chilli Types
UPDATE public.chilli_types SET name_da = 'Jalapeño', description_da = 'Afbalanceret styrke fra den grønne chili.' WHERE slug = 'jalapeno';
UPDATE public.chilli_types SET name_da = 'Habanero', description_da = 'Brændende citrusaroma og varme.' WHERE slug = 'habanero';
UPDATE public.chilli_types SET name_da = 'Ghost Pepper', description_da = 'Naga Jolokia-intensitet for spændingssøgere.' WHERE slug = 'ghost-pepper';
UPDATE public.chilli_types SET name_da = 'Carolina Reaper', description_da = 'Verdensrekord-styrke med frugtige noter.' WHERE slug = 'carolina-reaper';
UPDATE public.chilli_types SET name_da = 'Scotch Bonnet', description_da = 'Karibisk chili med frugtig og intens smag.' WHERE slug = 'scotch-bonnet';
UPDATE public.chilli_types SET name_da = 'Trinidad Scorpion', description_da = 'Et kraftfuldt og vedvarende bid.' WHERE slug = 'trinidad-scorpion';
