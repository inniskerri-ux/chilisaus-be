-- Migration: Translate products batch 5 (German)

-- Black Death - Carolina Reaper + Black Garlic
UPDATE public.products SET 
  description_de = 'Natürliche extrem scharfe Sauce mit Carolina Reaper und schwarzem Knoblauch. Zutaten ; Balsamico-Essig, Melasse, schwarzer Knoblauch (8,5%), Carolina Reaper (5,5%), Tomatenpulver, Wasser, Zwiebel, Salz, schwarzer Pfeffer. Der Star dieser Sauce ist der 14 Tage lang fermentierte schwarze Knoblauch, der für eine süße, sirupartige Textur mit Noten von Soja und Balsamico sorgt. Schärfegrad 15. Für Veganer geeignet.',
  ingredients_de = 'Balsamico-Essig, Melasse, schwarzer Knoblauch (8,5%), Carolina Reaper (5,5%), Tomatenpulver, Wasser, Zwiebel, Salz, schwarzer Pfeffer'
WHERE slug = 'black-death-carolina-reaper-black-garlic-heat-level-15';

-- Crazy Bastard Sauce - Caribbean Edition
UPDATE public.products SET 
  description_de = 'Die Caribbean Box - 3 Saucen mit 3 verschiedenen fruchtigen karibischen Chilis. Eine tropische Reise durch die Schärfe der Karibik. Für Veganer geeignet.',
  details_de = 'Enthält 3x 100ml Flaschen mit karibischen Aromen.'
WHERE slug = 'crazy-bastard-sauce-caribbean-edition';

-- Chilisaus.be - Limited Edition Range - Bad Decision
UPDATE public.products SET 
  description_de = 'Unsere neue Limited Edition Range - Bad Decision. Eine fermentierte Chilisauce mit einem extremen Kick. Manchmal ist eine Fehlentscheidung die leckerste. Schärfegrad 11.',
  ingredients_de = 'Fermentierte Chilis, Essig, Salz'
WHERE slug = 'chilisaus-be-limited-edition-range-bad-decision-heat-level-11';

-- Dirty Dick’s (USA) Tropical Twist
UPDATE public.products SET 
  description_de = 'BEKANNT AUS HOT ONES. Eine der drei besten Chilisaucen aus den USA. Ein tropischer Twist mit preisgekröntem Geschmack. Kreiert von einem preisgekrönten BBQ-Chef. Schärfegrad 6.',
  ingredients_de = 'Habanero Chilis, tropische Früchte, Zwiebeln, Essig, Gewürze'
WHERE slug = 'dirty-dicks-usa-tropical-twist';

-- Firelli - Italian Hot Sauce with Porcini Mushrooms
UPDATE public.products SET 
  description_de = 'Stolz italienisch - Chilisauce mit Steinpilzen (Porcini). Handgefertigt in Parma, Italien. Reicher, komplexer Geschmack mit kalabrischen Chilis, Balsamico-Essig und italienischen Kräutern. Voller Umami. Schärfegrad 6. Für Veganer geeignet.',
  ingredients_de = 'Geröstete rote Paprika, Wasser, Balsamico-Essig aus Modena (11%), Apfelessig, kalabrische Chilis, Zitronensaft, Zucker, Cayenne-Pfeffer, Gewürze, Salz, getrocknete Steinpilze, Knoblauch'
WHERE slug = 'firelli-italian-hot-sauce-with-porcini-mushrooms-heat-level-6-148ml';

-- Firelli - Italian Hot Sauce with Truffles
UPDATE public.products SET 
  description_de = 'Stolz italienisch - Trüffel-Chilisauce. Das unglaubliche Aroma italienischer Trüffel kombiniert mit kalabrischen Chilis und Balsamico-Essig. Ein luxuriöses Upgrade für jedes Gericht. Schärfegrad 5.',
  ingredients_de = 'Geröstete rote Paprika, Wasser, Balsamico-Essig, Trüffelaroma, kalabrische Chilis, Gewürze'
WHERE slug = 'firelli-italian-hot-sauce-with-truffles-heat-level-5-148ml';

-- High River Sauces - Pepper X - Taco Sauce
UPDATE public.products SET 
  description_de = 'Pepper X Chilisauce aus den USA. Pepper X ist als schärfster Chili der Welt anerkannt. Diese Tacosauce bringt die extreme Hitze in deine mexikanischen Lieblingsgerichte. Schärfegrad 15.',
  ingredients_de = 'Pepper X Chilis, Essig, Tomaten, Gewürze'
WHERE slug = 'high-river-sauces-pepper-x-taco-sauce';

-- Smoky Pepper Seasoning
UPDATE public.products SET 
  description_de = 'Rauchige Pfeffer-Gewürzmischung mit Chipotle und Knoblauch. Zutaten ; Salz, schwarzer Pfeffer, Knoblauch, weiße Pfefferkörner, Chipotle-Flocken, Zitronenschale, Rosmarin, Basilikum, Zitronensäure, Thymian, Zitronenverbene, getrocknete Chilis. Eine Geheimzutat, die jede Mahlzeit aufwertet. Rauchig mit frischem Zitronen-Abgang. Für Veganer geeignet.',
  ingredients_de = 'Salz, schwarzer Pfeffer, Knoblauch, weißer Pfeffer, Chipotle, Zitronenschale, Rosmarin, Basilikum, Zitronensäure, Thymian, Zitronenverbene, getrocknete Chilis'
WHERE slug = 'smoky-pepper-seasoning-heat-level-6-65g';
