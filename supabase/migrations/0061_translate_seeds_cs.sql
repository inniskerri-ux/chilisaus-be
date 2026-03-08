-- Migration: Translate base seeds (Czech)

-- Categories
UPDATE public.categories SET name_cs = 'Klasická pálivá omáčka', description_cs = 'Každodenní paprikové omáčky ke každému jídlu.' WHERE slug = 'classic-hot-sauce';
UPDATE public.categories SET name_cs = 'Fermentované', description_cs = 'Komplexní chuť z pomalé fermentace.' WHERE slug = 'fermented';
UPDATE public.categories SET name_cs = 'Uzené', description_cs = 'Kouřové omáčky s papričkami pečenými nad ohněm.' WHERE slug = 'smoky';
UPDATE public.categories SET name_cs = 'Ovocné', description_cs = 'Jasné, šťavnaté směsi s tropickým ovocem.' WHERE slug = 'fruit-forward';
UPDATE public.categories SET name_cs = 'Chili výzvy a pálivé snacky', description_cs = 'Otestujte své hranice s našimi nejpálivějšími snacky.' WHERE slug = 'chili-challenges-spicy-snacks';
UPDATE public.categories SET name_cs = 'Chili extrakty', description_cs = 'Čisté extrakty kapsaicinu pro extrémní pálivost.' WHERE slug = 'chili-extracts';
UPDATE public.categories SET name_cs = 'Chili olej', description_cs = 'Infuze olejů pro vaření nebo dochucení.' WHERE slug = 'chili-oil';
UPDATE public.categories SET name_cs = 'Sušené papričky', description_cs = 'Lusky, vločky a prášky pro vaši kuchyni.' WHERE slug = 'dried-chilies-pods-flakes-powders';
UPDATE public.categories SET name_cs = 'Dárkové boxy', description_cs = 'Perfektní dárek pro milovníky pálivého.' WHERE slug = 'gift-boxes-sets';
UPDATE public.categories SET name_cs = 'Pálivý med', description_cs = 'Med s infuzí chili pro sladce-pálivý nádech.' WHERE slug = 'hot-honey';
UPDATE public.categories SET name_cs = 'Soli a koření', description_cs = 'Vylepšete svá jídla s našimi směsmi koření.' WHERE slug = 'salts-seasonings-rubs';

-- Chilli Types
UPDATE public.chilli_types SET name_cs = 'Jalapeño', description_cs = 'Vyvážená pálivost zelené papričky.' WHERE slug = 'jalapeno';
UPDATE public.chilli_types SET name_cs = 'Habanero', description_cs = 'Ohnivé citronové aroma a pálivost.' WHERE slug = 'habanero';
UPDATE public.chilli_types SET name_cs = 'Ghost Pepper', description_cs = 'Intenzita Naga Jolokia pro hledače vzrušení.' WHERE slug = 'ghost-pepper';
UPDATE public.chilli_types SET name_cs = 'Carolina Reaper', description_cs = 'Světově rekordní pálivost s ovocnými tóny.' WHERE slug = 'carolina-reaper';
UPDATE public.chilli_types SET name_cs = 'Scotch Bonnet', description_cs = 'Karibská paprička s ovocnou a intenzivní chutí.' WHERE slug = 'scotch-bonnet';
UPDATE public.chilli_types SET name_cs = 'Trinidad Scorpion', description_cs = 'Silný a trvalý zážitek.' WHERE slug = 'trinidad-scorpion';
