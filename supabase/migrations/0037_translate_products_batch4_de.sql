-- Migration: Translate products batch 4 (German)

-- Blazing Foods - Death Nut Challenge 3.0
UPDATE public.products SET 
  description_de = 'Die brandneue Death Nut Challenge - Version 3.0. Zutaten ; Jumbo XL Virginia Erdnüsse, reiner Rohrzucker, Carolina Reaper Chilis, 7-Pot Primo Chilis, Chilis (Datil, Scotch Bonnet, Ghost, Brain Strain, Duglah, Trinidad Moruga Scorpion), reine Capsaicin-Kristalle 16M SHU, Meersalz, Gewürze. Fünf Stufen von Erdnüssen, die progressiv schärfer werden. Wagst du es bis Stufe 5? Schärfegrad: AUSSERHALB DER SKALA.',
  ingredients_de = 'Jumbo XL Erdnüsse, Zucker, Carolina Reaper, 7-Pot Primo, Ghost Pepper, Scorpion, reine Capsaicin-Kristalle 16M SHU, Meersalz, Gewürze'
WHERE slug = 'blazing-foods-death-nut-challenge-3-0-heat-level-off-the-scale';

-- 7Pot Habanero Pineapple
UPDATE public.products SET 
  description_de = 'Chilisaus.be Limited Edition Range. Eine köstliche Kombination aus 7Pot Chilis, Habanero und Ananas. In Zusammenarbeit mit Uncle Paul. Schärfegrad 6.',
  ingredients_de = '7Pot Chilis, Habanero, Ananas, Essig, Salz'
WHERE slug = 'chilisaus-be-limited-edition-range-7pot-habanero-pineapple-heat-level-6';

-- Hurtberry Ghost Sriracha
UPDATE public.products SET 
  description_de = 'Chilisaus.be Limited Edition Range. Eine intensive Ghost Pepper Sriracha in Zusammenarbeit mit Uncle Paul. Für Liebhaber eines ordentlichen Kicks. Schärfegrad 10.',
  ingredients_de = 'Ghost Peppers, Knoblauch, Essig, Zucker, Salz'
WHERE slug = 'chilisaus-be-limited-edition-range-hurtberry-ghost-sriracha-heat-level-10';

-- Scotch Bonnet Flakes - 30g
UPDATE public.products SET 
  description_de = 'Scotch Bonnet Flocken (100.000 – 350.000 SHU). Die Scotch Bonnet Chili gehört zur Habanero-Familie und ist in der karibischen Küche sehr beliebt. Fruchtiger, heller Geschmack mit einer leichten Süße. Ideal für Jerk Chicken. Für Veganer geeignet.',
  ingredients_de = 'Getrocknete Scotch Bonnet Chiliflocken'
WHERE slug = 'scotch-bonnet-flakes-30g-100000-350000-scoville-heat-units';

-- Scotch Bonnet Pods 20g
UPDATE public.products SET 
  description_de = 'Scotch Bonnet Schoten (100.000 – 350.000 SHU). Ganze getrocknete Scotch Bonnet Chilis. Ganz verwenden, zu Pulver mahlen oder in heißem Wasser rehydrieren. Bringt authentischen karibischen und westafrikanischen Geschmack in deine Gerichte. Für Veganer geeignet.',
  ingredients_de = 'Getrocknete Scotch Bonnet Chilis'
WHERE slug = 'scotch-bonnet-pods-20g-100000-350000-scoville-heat-units';

-- Chilisaus.be - The 2024 Edition - Kokos Kerrie
UPDATE public.products SET 
  description_de = 'Chilisaus.be – Edition 2024 – Kokos-Curry-Paste mit einem Twist. Zutaten ; Chilis (Birds Eye, Madame Jeanette, Lombok), Tomate, Kokosmilch, Zwiebel, Kokosessig, Wasser, Erdnuss, Knoblauch, Koriander, Kokoszucker, Ingwer, Kräuter und Gewürze (Senf), Salz. Eine Zusammenarbeit mit White Whale Sauces. Schärfegrad 8.',
  ingredients_de = 'Chilis (Birds Eye, Madame Jeanette, Lombok), Tomate, Kokosmilch, Zwiebel, Kokosessig, Wasser, Erdnuss, Knoblauch, Koriander, Kokoszucker, Ingwer, Kräuter (Senf), Salz'
WHERE slug = 'the-2024-edition-kokos-kerrie-coconut-curry-heat-level-8';

-- Culley's (NZ) World's Hottest Ramen Noodles - V2.0
UPDATE public.products SET 
  description_de = 'Die schärfsten Ramen-Nudeln der Welt. Zutaten ; Nudeln (Weizenmehl, Wasser, Ei), Ramen (Naga Jolokia Chili, Carolina Reaper, Miso-Paste, Sojasauce, Sesamöl, Kräuter, Gewürze). Geschätzt auf über 1 Million Scoville. Viel Glück!',
  ingredients_de = 'Nudeln (Weizen, Ei), Naga Jolokia, Carolina Reaper, Miso-Paste, Sesamöl, Gewürze'
WHERE slug = 'culleys-worlds-hottest-ramen-noodles-v2-0-heat-level-off-the-scale';

-- Germano's (PHL) - Crispy Garlic and Chili Olive Oil
UPDATE public.products SET 
  description_de = 'Olivenöl mit knusprigem Knoblauch und Chili Crunch. Zutaten ; Chilis, Knoblauch, Olivenöl, Gewürze, Zucker, jodiertes Salz. Hergestellt auf den Philippinen, ist dieses Öl eine echte Sucht. Knuspriger Knoblauch, tolle Schärfe und tiefe Röstaromen. Goldmedaillengewinner bei den Clifton National Chilli Awards 2023. Schärfegrad 7 Für Veganer geeignet.',
  ingredients_de = 'Chilis, Knoblauch, Olivenöl, Gewürze, Zucker, jodiertes Salz'
WHERE slug = 'germanos-crispy-garlic-and-chili-crunch-olive-oil-heat-level-7';

-- Pepper X - Sizzling Steak Seasoning
UPDATE public.products SET 
  description_de = 'Der neue schärfste Chili der Welt: PEPPER X (2,693 Mio. SHU). SIZZLING STEAK Zutaten: Meersalz, Gewürze (darunter schwarzer Pfeffer und roter Chili), Knoblauch, Zwiebel, Sonnenblumenöl, Pepper X. Verleihe deinen Steaks, Tofu oder Gemüse extreme Hitze. Erfunden von Ed Currie. Für Veganer geeignet.',
  ingredients_de = 'Meersalz, schwarzer Pfeffer, roter Chili, Knoblauch, Zwiebel, Sonnenblumenöl, Pepper X'
WHERE slug = 'smokin-eds-pepper-x-sizzling-steak-seasoning';

-- Pepper X - Spicy Italian Seasoning
UPDATE public.products SET 
  description_de = 'Scharfes italienisches Gewürz mit Pepper X. Verfeinere deine Pizza, Pasta oder Marinaden mit dieser Mischung, die den berüchtigten Pepper X enthält. Entwickelt von Ed Currie, dem Schöpfer der Carolina Reaper. Für Veganer geeignet.',
  ingredients_de = 'Italienische Kräuter, Pepper X Pulver'
WHERE slug = 'smokin-eds-pepper-x-spicy-italian-seasoning';

-- Pepper X - Spicy Garlicious Seasoning
UPDATE public.products SET 
  description_de = 'Scharfes Knoblauch-Gewürz mit Pepper X. Eine knoblauchlastige Gewürzmischung mit der gewaltigen Schärfe von Pepper X. Perfekt, um jede Mahlzeit in eine echte Herausforderung zu verwandeln. Für Veganer geeignet.',
  ingredients_de = 'Salz, Knoblauch, Chilipulver, Pepper X'
WHERE slug = 'smokin-eds-pepper-x-spicy-garlicious-seasoning';

-- Cajun Spice Seasoning
UPDATE public.products SET 
  description_de = 'Cajun-Gewürzmischung (Schärfe 4). Ein klassischer Louisiana-Mix, perfekt für Fisch, Hähnchen oder Gemüse. Bringt milde Schärfe und tiefen Geschmack. Für Veganer geeignet.',
  ingredients_de = 'Paprika, Knoblauch, Zwiebel, schwarzer Pfeffer, Cayenne, Oregano, Thymian'
WHERE slug = 'cajun-spice-seasoning-heat-level-4';

-- Blazin' Inferno Ghost Pepper Seasoning
UPDATE public.products SET 
  description_de = 'Blazin'' Inferno Ghost Pepper Gewürz (Schärfegrad 10). Eine kraftvolle Mischung für alle, die sofortige, intensive Hitze suchen. Ideal zum Grillen und Marinieren. Für Veganer geeignet.',
  ingredients_de = 'Ghost Pepper, Meersalz, Knoblauch, Gewürze'
WHERE slug = 'blazin-inferno-ghost-pepper-seasoning-heat-level-10';

-- Piri Piri & Co, PORTUGAL - FOGO
UPDATE public.products SET 
  description_de = '"FOGO" (portugiesisch für FEUER) mit Carolina Reaper und Trinidad Moruga Scorpion. Zutaten: Carolina Reaper, Ananas, Wasser, Apfelessig, Licor Brutal, grüne Mango, Moruga Chilis, Muscovado-Zucker, Salz, Minze, Xanthan. Frisch, lebendig und fruchtig mit einer überraschenden Minznote, bevor die extreme Schärfe zuschlägt. Schärfegrad 12.',
  ingredients_de = 'Carolina Reaper, Ananas, Wasser, Apfelessig, Licor Brutal, grüne Mango, Moruga Chilis, Muscovado-Zucker, Salz, Minze, Xanthan'
WHERE slug = 'piri-piri-co-portugal-fogo-heat-level-12';

-- El Jefe - Verde
UPDATE public.products SET 
  description_de = 'Frische grüne Salsa im mexikanischen Stil. Zutaten ; Tomatillos, Jalapeños, Knoblauch, Zitronensaft, Sonnenblumenöl, Zwiebelpulver, Meersalz. Unsere "Frühstücks-Salsa" - leicht, frisch und etwas säuerlich durch die Tomatillo. Eine klassische Salsa Verde, perfektioniert von El Jefe. Schärfegrad 4. Für Veganer geeignet.',
  ingredients_de = 'Tomatillos, Jalapeños, Knoblauch, Zitronensaft, Sonnenblumenöl, Zwiebelpulver, Meersalz'
WHERE slug = 'el-jefe-verde-mexican-salsa-heat-level-4';

-- The Chilli Alchemist (UK) - "Dark Matter" Belgian Chili + Mint Chocolate
UPDATE public.products SET 
  description_de = '70% belgische Zartbitterschokolade mit Ghost Pepper, Minze und Knisterzucker. Zutaten ; Zartbitterschokolade (Kakaomasse 70%, Zucker, Kakaobutter, Emulgator - SOJALECITHIN, natürliche Vanille), Knisterzucker (2%), Naga Chilipulver (0,1%), ätherisches Minzöl. Ein einzigartiges Erlebnis. Leichte bis mittlere Schärfe. Für Vegetarier geeignet.',
  ingredients_de = 'Zartbitterschokolade (70% Kakao), Knisterzucker, Naga Chilipulver, Minzöl'
WHERE slug = 'the-chilli-alchemist-dark-matter-belgian-chili-chocolate-heat-level-4-5-100g';

-- Hot Headz - Smoked Chilli + Garlic
UPDATE public.products SET 
  description_de = 'Zutaten ; Tomatenmark, Wasser, Apfelessig, Zwiebeln, Zucker, Sesamsamen, Gewürze, Chipotle, Habanero, Guajillo-Chili, geräucherter Knoblauch, Salz. Ein fantastisches Produkt für Liebhaber starker Rauch- und Knoblaucharomen! Dickflüssig und geschmacksintensiv. Schärfegrad 5. Für Veganer geeignet.',
  ingredients_de = 'Tomatenmark, Wasser, Apfelessig, Zwiebeln, Zucker, Sesamsamen, Gewürze, Chipotle, Habanero, Guajillo-Chili, geräucherter Knoblauch, Salz'
WHERE slug = 'hot-headz-smoked-chilli-garlic';

-- Singularity Sauce Co (UK) - Buffalo Hot Sauce
UPDATE public.products SET 
  description_de = 'Singularity Buffalo Hot Sauce. Zutaten ; Kombucha-Essig, Cayenne-Mash (Cayennepfeffer, Salz, Essigsäure), pflanzliche Butter, brauner Zucker, Knoblauchpulver, Salz, geräuchertes Paprikapulver, Xanthan. Die schottische Variante der klassischen Buffalo-Sauce. Großartig auf Chicken Wings. Schärfegrad 4. Für Veganer geeignet.',
  ingredients_de = 'Kombucha-Essig, Cayennepfeffer, pflanzliche Butter, brauner Zucker, Knoblauchpulver, Salz, geräuchertes Paprikapulver, Xanthan'
WHERE slug = 'singularity-sauce-co-buffalo-hot-sauce-148ml-heat-level-4';

-- Dave's Insanity Sauce (USA) The Original
UPDATE public.products SET 
  description_de = 'Die originale Dave''s Insanity Sauce - Bekannt aus Hot Ones Staffel 1. Zutaten ; Scharfe Chilis, Wasser, Tomatenmark, Chiliextrakt, Rohrzuckeressig, Salz, Zwiebeln, Knoblauch, Gewürze. Ein Tropfen genügt! Die Sauce, die den Markt für extrem scharfe Saucen begründet hat. Schärfegrad: SEHR HOCH. Für Veganer geeignet.',
  ingredients_de = 'Chilis, Wasser, Tomatenmark, Chiliextrakt, Rohrzuckeressig, Salz, Zwiebeln, Knoblauch, Gewürze'
WHERE slug = 'daves-insanity-sauce-the-original-148ml-hot-as-hell';

-- Dirty Dick's (USA) Caribbean Dreams
UPDATE public.products SET 
  description_de = 'Dirty Dick''s Caribbean Dreams - Zutaten ; Habanero-Chilis, Birnen, Pfirsiche, Ananassaft, Apfelessig, Senf, Apfelsaft, brauner Zucker, Honig und frisch gemahlene Gewürze. Eine Sauce auf Senfbasis im karibischen Stil. Kräftige Aromen, perfekt ausbalanciert. Schärfegrad 6 Nicht für Veganer geeignet (enthält Honig).',
  ingredients_de = 'Habanero-Chilis, Birnen, Pfirsiche, Ananassaft, Apfelessig, Senf, Apfelsaft, brauner Zucker, Honig, Gewürze'
WHERE slug = 'dirty-dicks-caribbean-dreams';
