-- Migration: Translate base seeds (Italian)

-- Categories
UPDATE public.categories SET name_it = 'Salsa Piccante Classica', description_it = 'Salse al peperoncino per l''uso quotidiano su ogni piatto.' WHERE slug = 'classic-hot-sauce';
UPDATE public.categories SET name_it = 'Fermentata', description_it = 'Gusto complesso derivante da una lenta fermentazione.' WHERE slug = 'fermented';
UPDATE public.categories SET name_it = 'Affumicata', description_it = 'Salse fumanti con peperoncini arrostiti sul fuoco.' WHERE slug = 'smoky';
UPDATE public.categories SET name_it = 'Fruttata', description_it = 'Miscele vivaci e succose con frutti tropicali.' WHERE slug = 'fruit-forward';
UPDATE public.categories SET name_it = 'Sfide al Peperoncino e Snack Piccanti', description_it = 'Metti alla prova i tuoi limiti con i nostri snack più piccanti.' WHERE slug = 'chili-challenges-spicy-snacks';
UPDATE public.categories SET name_it = 'Estratti di Peperoncino', description_it = 'Estratti puri di capsaicina per un calore estremo.' WHERE slug = 'chili-extracts';
UPDATE public.categories SET name_it = 'Olio al Peperoncino', description_it = 'Oli aromatizzati per cucinare o condire.' WHERE slug = 'chili-oil';
UPDATE public.categories SET name_it = 'Peperoncini Secchi', description_it = 'Bacche, fiocchi e polveri per la tua cucina.' WHERE slug = 'dried-chilies-pods-flakes-powders';
UPDATE public.categories SET name_it = 'Confezioni Regalo', description_it = 'Il regalo perfetto per gli amanti del piccante.' WHERE slug = 'gift-boxes-sets';
UPDATE public.categories SET name_it = 'Miele Piccante', description_it = 'Miele con infusione di peperoncino per un tocco dolce-piccante.' WHERE slug = 'hot-honey';
UPDATE public.categories SET name_it = 'Sali e Condimenti', description_it = 'Esala i tuoi piatti con le nostre miscele di spezie.' WHERE slug = 'salts-seasonings-rubs';

-- Chilli Types
UPDATE public.chilli_types SET name_it = 'Jalapeño', description_it = 'Piccantezza equilibrata del peperoncino verde.' WHERE slug = 'jalapeno';
UPDATE public.chilli_types SET name_it = 'Habanero', description_it = 'Aroma agrumato ardente e calore.' WHERE slug = 'habanero';
UPDATE public.chilli_types SET name_it = 'Ghost Pepper', description_it = 'Intensità Naga Jolokia per chi cerca il brivido.' WHERE slug = 'ghost-pepper';
UPDATE public.chilli_types SET name_it = 'Carolina Reaper', description_it = 'Calore da record mondiale con note fruttate.' WHERE slug = 'carolina-reaper';
UPDATE public.chilli_types SET name_it = 'Scotch Bonnet', description_it = 'Peperoncino caraibico dal gusto fruttato e intenso.' WHERE slug = 'scotch-bonnet';
UPDATE public.chilli_types SET name_it = 'Trinidad Scorpion', description_it = 'Un morso potente e persistente.' WHERE slug = 'trinidad-scorpion';
