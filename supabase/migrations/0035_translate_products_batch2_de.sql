-- Migration: Translate products batch 2 (German)

-- Happy Hatter Hot Sauce - SMOKED
UPDATE public.products SET 
  description_de = 'Happy Hatter Hot Sauce – SMOKED. Zutaten ; Waldfrüchte, roter Portwein, Rotweinessig, Datteln, Blütenhonig, Ghost Peppers, rote Zwiebeln, Schalotten, Knoblauch, Chipotle-Pulver, geräuchertes Paprikapulver, Olivenöl, Salz. Eine reiche, rauchige Sauce, süß und köstlich. Vollgepackt mit Ghost Peppers, mexikanischem geräucherten Chipotle und saftigen Waldfrüchten. Dekadent, vollmundig und seidig glatt mit einem tollen, langanhaltenden würzigen Finish. Schärfegrad 7 Nicht für Veganer geeignet (enthält Honig)',
  ingredients_de = 'Waldfrüchte, roter Portwein, Rotweinessig, Datteln, Blütenhonig, Ghost Peppers, rote Zwiebeln, Schalotten, Knoblauch, Chipotle-Pulver, geräuchertes Paprikapulver, Olivenöl, Salz'
WHERE slug = 'smoked-happy-hatter-hot-sauce';

-- Carolina Reaper Powder 10g
UPDATE public.products SET 
  description_de = 'Carolina Reaper Pulver 10g. 1,8 Mio. – 2,2 Mio. SHU. Das schärfste Chilipulver der Welt. Mit äußerster Vorsicht verwenden. Perfekt, um jedem Gericht sofort extreme Hitze zu verleihen. Für Veganer geeignet.',
  ingredients_de = 'Carolina Reaper Chilis'
WHERE slug = 'carolina-reaper-powder-10g';

-- Mexican Habanero Chili Flakes 20g
UPDATE public.products SET 
  description_de = 'Habanero Chiliflocken 100.000 – 350.000 SHU. Die perfekte Balance zwischen Hitze und Geschmack. Bekannt für ihr fruchtiges Aroma, verleihen diese Flocken Ihren Mahlzeiten einen köstlich scharfen Kick. Frische rote Habaneros, in Mexiko angebaut, im Ofen getrocknet und zerkleinert. Für Veganer geeignet.',
  ingredients_de = 'Getrocknete Habanero Chilis'
WHERE slug = 'habanero-chili-flakes-15g-100000-350000-scoville-heat-units';

-- Mexican Habanero Dried Pods
UPDATE public.products SET 
  description_de = 'Mexikanische Habanero getrocknete Schoten (100.000 - 350.000 SHU). Die klassische fruchtige Schärfe aus Mexiko. Ideal für Salsas, Marinaden und Eintöpfe. Für Veganer geeignet.',
  ingredients_de = 'Getrocknete Habanero Chilis'
WHERE slug = 'mexican-habanero-peppers-100000-350000-scoville-heat-units';

-- Naga / Ghost Pepper Dried Pods
UPDATE public.products SET 
  description_de = 'Naga / Ghost Pepper getrocknete Schoten 855.000 – 1 Mio. SHU. Der drittshärfste Chili der Welt. Beutel mit 12 getrockneten Ghost Peppers. Geschmacklich zuerst rauchig und fast süß, schleicht sich die Hitze nach 30 Sekunden an. Getrocknet, zerkleinert oder in heißem Wasser rehydriert verwenden. Für Veganer geeignet.',
  ingredients_de = 'Getrocknete Ghost Peppers (Bhut Jolokia)'
WHERE slug = 'naga-ghost-pepper-855000-1-million-scoville-heat-units';

-- Mexican Smoked Chipotle Flakes
UPDATE public.products SET 
  description_de = 'Mexikanische geräucherte Chipotle Flocken - 20g (2500 - 8000 SHU). Köstlich rauchige Jalapeño-Flocken. Unverzichtbar in der mexikanischen Küche für den tiefen, authentischen BBQ-Geschmack. Für Veganer geeignet.',
  ingredients_de = 'Geräucherte getrocknete Jalapeños (Chipotle)'
WHERE slug = 'mexican-smoked-chipotle-powder-40g-2500-8000-scoville-heat-units';

-- Mexican Habanero Powder 30g
UPDATE public.products SET 
  description_de = 'Habanero Pulver 100.000 – 350.000 SHU. Hergestellt aus getrockneten und fein gemahlenen Habanero-Schoten. Ideal für mexikanische Gerichte oder BBQ. Mit Mayo oder Joghurt für einen scharfen Dip mischen. Für Veganer geeignet.',
  ingredients_de = 'Habanero Chilipulver'
WHERE slug = 'habanero-powder-40g-100000-350000-scoville-heat-units';

-- 33% Pure Carolina Reaper Sambal
UPDATE public.products SET 
  description_de = '33% reines Carolina Reaper Sambal. Zutaten ; Zwiebeln 40%, Carolina Reaper 33%, raffinierter Zucker 8%, Sonnenblumenöl 7,5%, süße Sojasauce 7,5%, Weißweinessig 0,5%, Salz, Gewürze. Hergestellt vom berühmten Devon Chilli Man aus Großbritannien. Erst ein köstlich süßer Geschmack durch karamellisierte Zwiebeln, dann eine Achterbahnfahrt durch frische Carolina Reapers. Schärfegrad 12 Für Veganer geeignet',
  ingredients_de = 'Zwiebeln 40%, Carolina Reaper 33%, raffinierter Zucker 8%, Sonnenblumenöl 7,5%, süße Sojasauce 7,5%, Weißweinessig 0,5%, Salz, Gewürze'
WHERE slug = '33-carolina-reaper-sambal-heat-level-15';

-- Chilisaus.be - The 2020 Edition - Garlic Italian
UPDATE public.products SET 
  description_de = 'Garlic Italian (ohne Zuckerzusatz) Perfekt für Spaghetti. Zutaten ; Rapsöl, Wasser, Weißweinessig, Olivenöl, rote Chili, Naga Chili (3%), Knoblauchpüree, Salz, Gewürze, Kräuter. Unsere allererste eigene Sauce! Hochwertige Zutaten, seidiges Olivenöl, frische Naga Ghost Peppers, VIEL Knoblauch und italienische Kräuter. Einfach und köstlich. Schärfegrad 8 Für Veganer geeignet',
  ingredients_de = 'Rapsöl, Wasser, Weißweinessig, Olivenöl, rote Chili, Naga Chili (3%), Knoblauchpüree, Salz, Gewürze, Kräuter'
WHERE slug = 'chilisaus-be-the-2020-edition-heat-level-8';

-- Carolina Reaper Flakes 10g
UPDATE public.products SET 
  description_de = 'Carolina Reaper Flocken 1,8 Mio. – 2,2 Mio. SHU. Der schärfste Chili der Welt, getrocknet und zu wunderschönen Feuerflocken zerstoßen (inklusive Samen). Eine Prise genügt für Suppen, Currys oder Pasta. Vorsichtig verwenden. Für Veganer geeignet.',
  ingredients_de = 'Carolina Reaper Chiliflocken'
WHERE slug = 'carolina-reaper-flakes-10g-1-8-million-2-2-million-scoville-heat-units';

-- Happy Hatter Hot Sauce - BOMBAY
UPDATE public.products SET 
  description_de = 'Happy Hatter Hot Sauce – BOMBAY. Zutaten ; Mango, Ananas, gelbe Habanero Chili, Zwiebel, Weißweinessig, Rohrzucker, Bananen, Knoblauch, Limettensaft, Olivenöl, Gewürzmischung (enthält Sellerie), Salz. Eine frische und fruchtige Sauce mit Kurkuma und asiatischen Gewürzen. Perfekt ausgewogen mit schöner Hitze der gelben Habanero. Ideal für Wok- oder Reisgerichte. Schärfegrad 8 Für Veganer geeignet',
  ingredients_de = 'Mango, Ananas, gelbe Habanero Chili, Zwiebel, Weißweinessig, Rohrzucker, Bananen, Knoblauch, Limettensaft, Olivenöl, Gewürzmischung (enthält Sellerie), Salz'
WHERE slug = 'happy-hatter-bombay-produced-in-belgium-heat-level-7';

-- Naga / Ghost Pepper Powder 10g
UPDATE public.products SET 
  description_de = 'Naga / Ghost Pulver 855.000 - 1 Mio. SHU. Direkt aus Nagaland, Indien. Geschmacklich zuerst rauchig und fast süß, schleicht sich die intensive Hitze nach 30-40 Sekunden an. Mit Sorgfalt verwenden. Für Veganer geeignet.',
  ingredients_de = 'Ghost Pepper Chilipulver'
WHERE slug = 'naga-ghost-powder-10g-850000-1-million-scoville-heat-units';

-- Naga / Ghost Pepper Flakes 10g
UPDATE public.products SET 
  description_de = 'Naga / Ghost Chiliflocken 855.000 - 1 Mio. SHU. Direkt aus Nagaland. Eine großartige Alternative zu frischen Chilis, um Ihren Gerichten extreme Hitze zu verleihen. Mit Sorgfalt verwenden. Für Veganer geeignet.',
  ingredients_de = 'Ghost Pepper Chiliflocken'
WHERE slug = 'naga-ghost-pepper-flakes-10g-855000-1-million-scoville-heat-units';

-- Happy Hatter Gift Box
UPDATE public.products SET 
  description_de = 'Happy Hatter Familie – 3 Saucen – In einer handgefertigten Geschenkbox. Enthält ORIGINAL (Schärfe 6), SMOKED (Schärfe 7) und BOMBAY (Schärfe 7). 100% Qualität vom belgischen Produzenten Wim Daans.',
  details_de = 'Enthält 3x 100ml Flaschen: Original, Smoked und Bombay.'
WHERE slug = 'happy-hatter-trio-gift-boxed';

-- The Carolina Reaper Essentials Kit
UPDATE public.products SET 
  description_de = 'Das Carolina Reaper Essentials Kit: Schoten, Pulver, Sambal und Sauce. Alles, was man braucht, um den schärfsten Chili der Welt in 4 verschiedenen Formen zu erleben. Maximale Hitze garantiert! Für Veganer geeignet.',
  details_de = 'Inhalt: 1x Sauce, 1x Sambal, 1x Pulver, 1x getrocknete Schoten.'
WHERE slug = 'the-ultimate-reaper-pack';

-- White Whale Sauces - Limonhello
UPDATE public.products SET 
  description_de = '"Limon-hello" Verwendet nur die besten "Sfusato"-Zitronen von der italienischen Amalfiküste. Zutaten ; Madame Jeanette Chilis, Sfusato-Zitronen, Karotte, Zwiebel, gelbe Paprika, Knoblauch, Ingwer, Apfelessig, Kurkuma, Salz. Eine frische, lebendige Sauce, reich an Vitamin C. Fantastisch zu Fisch, Tacos oder im Cocktail. Glutenfrei, ohne Zuckerzusatz. Schärfegrad 8 Für Veganer geeignet',
  ingredients_de = 'Madame Jeanette Chilis, Sfusato-Zitronen, Karotte, Zwiebel, gelbe Paprika, Knoblauch, Ingwer, Apfelessig, Kurkuma, Salz'
WHERE slug = 'white-whale-sauces-limonhello-hot-sauce-heat-level-8';

-- "The Ripper"
UPDATE public.products SET 
  description_de = 'The Ripper (ohne Zuckerzusatz). Zutaten: Scotch Bonnet Chili, rote Paprika, Carolina Reaper Chili, Apfelessig, Salz, Chilipulver, Chiliextrakt. Eine gefährlich leckere Kombination aus fruchtiger Scotch Bonnet und dem schärfsten Carolina Reaper der Welt. Maximale Verbrennung! Schärfegrad 12 Für Veganer geeignet',
  ingredients_de = 'Scotch Bonnet Chili, rote Paprika, Carolina Reaper Chili, Apfelessig, Salz, Chilipulver, Chiliextrakt'
WHERE slug = 'the-ripper-carolina-reaper';

-- Crazy Bastard - FULL Collection
UPDATE public.products SET 
  description_de = 'Die komplette Crazy Bastard Kollektion - 7 Saucen in einer Geschenkbox. Handgefertigt in Berlin mit feuergerösteten Chilis und frischen natürlichen Zutaten. Ohne raffinierten Zucker oder Extrakte. Enthält alle Varianten von Jalapeño bis Carolina Reaper.',
  details_de = 'Enthält 7x 100ml Flaschen: Grün, Pink, Blau, Gelb, Orange, Rot und Schwarz.'
WHERE slug = 'crazy-bastard-full-collection-x7-sauces';

-- Crazy Bastard HOT BOX
UPDATE public.products SET 
  description_de = 'Crazy Bastard Hot Box - Die 3 schärfsten Saucen der Kollektion: Orange (Ghost Pepper & Mango), Rot (Trinidad Scorpion & Clementine) und Schwarz (Carolina Reaper & Blaubeere). Für echte Schärfe-Fans. Für Veganer geeignet.',
  details_de = 'Enthält 3x 100ml Flaschen: Ghost Pepper, Trinidad Scorpion und Carolina Reaper.'
WHERE slug = 'crazy-bastard-hot-box-x3-heat-level-10';

-- RED - Trinidad Scorpion & Clementine
UPDATE public.products SET 
  description_de = 'RED - Trinidad Scorpion & Clementine Sauce. Zutaten: Paprika, Apfel, Zwiebel, Weißweinessig, Clementinen (10%), Trinidad Scorpion Chili (6%), Knoblauch, Limette, Olivenöl, Meersalz. Die zweitschärfste Sauce der Kollektion. Großartig zu gegrilltem Fisch oder Garnelen. Schärfegrad 10 Für Veganer geeignet',
  ingredients_de = 'Paprika, Apfel, Zwiebel, Weißweinessig, Clementinen (10%), Trinidad Scorpion Chili (6%), Knoblauch, Limette, Olivenöl, Meersalz'
WHERE slug = 'red-trinidad-scorpion-clementine-heat-level-10';
