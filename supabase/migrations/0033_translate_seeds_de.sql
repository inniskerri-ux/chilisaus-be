-- Migration: Translate base seeds (German)

-- Categories
UPDATE public.categories SET name_de = 'Klassische scharfe Sauce', description_de = 'Alltägliche Chilisaucen für jede Mahlzeit.' WHERE slug = 'classic-hot-sauce';
UPDATE public.categories SET name_de = 'Fermentiert', description_de = 'Komplexer Geschmack durch langsame Fermentation.' WHERE slug = 'fermented';
UPDATE public.categories SET name_de = 'Rauchig', description_de = 'Rauchende Saucen mit feuergerösteten Chilis.' WHERE slug = 'smoky';
UPDATE public.categories SET name_de = 'Fruchtig', description_de = 'Frische, saftige Mischungen mit tropischen Früchten.' WHERE slug = 'fruit-forward';
UPDATE public.categories SET name_de = 'Chili-Challenges & scharfe Snacks', description_de = 'Teste deine Grenzen mit unseren schärfsten Snacks.' WHERE slug = 'chili-challenges-spicy-snacks';
UPDATE public.categories SET name_de = 'Chili-Extrakte', description_de = 'Reine Capsaicin-Extrakte für extreme Hitze.' WHERE slug = 'chili-extracts';
UPDATE public.categories SET name_de = 'Chili-Öl', description_de = 'Infusionierte Öle zum Kochen oder Würzen.' WHERE slug = 'chili-oil';
UPDATE public.categories SET name_de = 'Getrocknete Chilis', description_de = 'Schoten, Flocken und Pulver für deine Küche.' WHERE slug = 'dried-chilies-pods-flakes-powders';
UPDATE public.categories SET name_de = 'Geschenkboxen', description_de = 'Das perfekte Geschenk für Chili-Liebhaber.' WHERE slug = 'gift-boxes-sets';
UPDATE public.categories SET name_de = 'Scharfer Honig', description_de = 'Mit Chili versetzter Honig für eine süß-scharfe Note.' WHERE slug = 'hot-honey';
UPDATE public.categories SET name_de = 'Salze & Gewürze', description_de = 'Verfeinere deine Gerichte mit unseren Gewürzmischungen.' WHERE slug = 'salts-seasonings-rubs';

-- Chilli Types
UPDATE public.chilli_types SET name_de = 'Jalapeño', description_de = 'Ausgewogene Schärfe der grünen Paprika.' WHERE slug = 'jalapeno';
UPDATE public.chilli_types SET name_de = 'Habanero', description_de = 'Feuriges Zitrusaroma und Schärfe.' WHERE slug = 'habanero';
UPDATE public.chilli_types SET name_de = 'Ghost Pepper', description_de = 'Naga Jolokia Intensität für Abenteurer.' WHERE slug = 'ghost-pepper';
UPDATE public.chilli_types SET name_de = 'Carolina Reaper', description_de = 'Weltrekord-Schärfe mit fruchtigen Noten.' WHERE slug = 'carolina-reaper';
UPDATE public.chilli_types SET name_de = 'Scotch Bonnet', description_de = 'Karibische Chili mit fruchtigem und intensivem Geschmack.' WHERE slug = 'scotch-bonnet';
UPDATE public.chilli_types SET name_de = 'Trinidad Scorpion', description_de = 'Ein kraftvoller und langanhaltender Biss.' WHERE slug = 'trinidad-scorpion';
