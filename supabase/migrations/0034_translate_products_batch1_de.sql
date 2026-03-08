-- Migration: Translate products batch 1 (German)

-- Evil One
UPDATE public.products SET 
  description_de = 'Evil One Zutaten ; Rote Paprika, Apfelessig, Scotch Bonnet Chili (15%), Zwiebel, Orangenmark, Zitronenmark und -schale, Naga Ghost Pepper (3%), Karotte, Knoblauch, brauner Zucker, Chiliextrakt (1%), Meersalz. Vollgepackt mit Scotch Bonnets, Naga Ghost Peppers und einem Hauch von reinem Chili-Capsaicin für dieses extrem scharfe, langanhaltende Brennen, aber ohne den bitteren Geschmack, den Extrakte oft geben. Eine super scharfe, köstliche Sauce mit einem Hauch von Zitrus. Ideal in Spaghetti, auf einem Burger, im Wok, auf Pizza oder gemischt mit Salsa für einen tollen scharfen Dip. Schärfegrad 10 Für Veganer geeignet',
  ingredients_de = 'Rote Paprika, Apfelessig, Scotch Bonnet Chili (15%), Zwiebel, Orangenmark, Zitronenmark und -schale, Naga Ghost Pepper (3%), Karotte, Knoblauch, brauner Zucker, Chiliextrakt (1%), Meersalz'
WHERE slug = 'evil-one';

-- Evil Twin
UPDATE public.products SET 
  description_de = 'Evil Twin (ohne Zuckerzusatz) Zutaten ; Grüne Paprika, Essig, Scotch Bonnet Chili, Zwiebel, Apfel, Limette, Naga Ghost Pepper, Karotte, Gewürze, Knoblauch, Chiliextrakt (1%), Salz. Super scharfe Sauce mit Scotch Bonnet Chilis, Naga Ghost Peppers und 1% Chiliextrakt. Eine tolle Hitze, schön frisch durch die Limette. Sehr gut ausgewogen mit langanhaltender Schärfe. Perfekt für scharfe Spaghetti, in Mayo für einen Dip oder im Wok. Schärfegrad 10 Für Veganer geeignet',
  ingredients_de = 'Grüne Paprika, Essig, Scotch Bonnet Chili, Zwiebel, Apfel, Limette, Naga Ghost Pepper, Karotte, Gewürze, Knoblauch, Chiliextrakt (1%), Salz'
WHERE slug = 'evil-twin';

-- Naga Chilli Sauce
UPDATE public.products SET 
  description_de = 'Naga Chilisauce (Schärfegrad 10). Eine kraftvolle Sauce von Wiltshire Chilli Farm mit der berühmten Naga Ghost Pepper für eine intensive, langanhaltende Schärfe, die sich langsam aufbaut. Für erfahrene Chili-Esser. Für Veganer geeignet.',
  ingredients_de = 'Naga Ghost Peppers, Essig, Salz, Gewürze'
WHERE slug = 'naga-chilli-sauce-heat-level-10-140ml';

-- Caribbean Chilli Sauce
UPDATE public.products SET 
  description_de = 'Karibische Chilisauce (Schärfegrad 9). Eine tropische Explosion von Schärfe und Geschmack. Inspiriert von den traditionellen Saucen der Inseln, reich an Chilis und sonnigen Aromen. Für Veganer geeignet.',
  ingredients_de = 'Karibische Chilis, Essig, Gewürze, Salz'
WHERE slug = 'caribbean-chilli-sauce';

-- Tempest Garlic Chili Oil
UPDATE public.products SET 
  description_de = 'Tempest Knoblauch-Chili-Öl 150ml Zutaten ; Kaltgepresstes Rapsöl, natürlicher Chiliextrakt, natürlicher Knoblauchextrakt. Definitiv etwas für Knoblauchliebhaber. Ein seidig-glattes Öl, das schnell süchtig macht. Zum Kochen oder als Finish für Pizza, Pasta oder Wok. Köstlich zu Brathähnchen oder gemischt mit Mayo für einen scharfen Aioli-Dip. Schärfegrad 5 Für Veganer geeignet',
  ingredients_de = 'Kaltgepresstes Rapsöl, natürlicher Chiliextrakt, natürlicher Knoblauchextrakt'
WHERE slug = 'tempest';

-- Mango Chilli Sauce
UPDATE public.products SET 
  description_de = 'Mango-Chilisauce (Schärfegrad 7). Eine herrlich fruchtige Sauce, bei der die Süße reifer Mangos perfekt mit einem scharfen Chili-Kick harmoniert. Ideal zu Hähnchen, Salaten oder als Dip. Für Veganer geeignet.',
  ingredients_de = 'Mango, Chilis, Essig, Zucker, Salz'
WHERE slug = 'mango-chilli-sauce';

-- Sweet Chilli Sauce
UPDATE public.products SET 
  description_de = 'Süße Chilisauce (Schärfegrad 1). Der klassische milde Dip, den jeder liebt. Perfekte Balance zwischen Süße und einer ganz leichten Schärfe. Ausgezeichnet zu Frühlingsrollen oder als Allzweck-Tafelsauce. Für Veganer geeignet.',
  ingredients_de = 'Chilis, Zucker, Essig, Knoblauch, Salz'
WHERE slug = 'sweet-chilli-sauce';

-- Reaper Habanero
UPDATE public.products SET 
  description_de = 'Reaper Habanero (Schärfegrad 10). Eine kraftvolle Sauce von Wiltshire Chilli Farm, welche die extreme Schärfe der Carolina Reaper mit dem klassischen Geschmack roter Habaneros kombiniert. Einfach aber effektiv. Für Veganer geeignet.',
  ingredients_de = 'Rote Habanero, Apfelessig, brauner Zucker, Zwiebel, rote Paprika, Carolina Reaper, geräuchertes Paprikapulver, Knoblauch'
WHERE slug = 'reaper-habanero';

-- Garlic Chilli Salt
UPDATE public.products SET 
  description_de = 'Knoblauch-Chili-Salz (Schärfegrad 3). Ein herrlich aromatisches Salz mit einer leichten Schärfe. Ideal zum Bestreuen von Kartoffeln, Gemüse oder Fleisch für eine sofortige Geschmacksverbesserung. Für Veganer geeignet.',
  ingredients_de = 'Meersalz, Knoblauch, Chilis'
WHERE slug = 'garlic-chilli-salt';

-- BLACK - Carolina Reaper & Blueberry
UPDATE public.products SET 
  description_de = 'BLACK - Carolina Reaper & Blaubeere Sauce. Zutaten: Paprika, Zwiebeln, Weißweinessig, Äpfel, Blaubeeren (10%), Carolina Reaper Chili (8%), Limette, Olivenöl, Meersalz. Eine ungewöhnliche, aber fantastische Kombination, bei der die säuerliche Blaubeere die extreme Hitze der Reaper wunderbar ergänzt. Schärfegrad 10 Für Veganer geeignet.',
  ingredients_de = 'Paprika, Zwiebeln, Weißweinessig, Äpfel, Blaubeeren (10%), Carolina Reaper Chili (8%), Limette, Olivenöl, Meersalz'
WHERE slug = 'black-carolina-reaper-blueberry';

-- BLUE - Scotch Bonnet & Caribbean Spices
UPDATE public.products SET 
  description_de = 'BLUE - Scotch Bonnet & Karibische Gewürze Sauce. Zutaten: Paprika, Zwiebeln, Weißweinessig, Scotch Bonnet Chili (13%), Ingwer, Knoblauch, Limette, Olivenöl, Sellerie, Salz, Gewürzmischung. Authentischer Geschmack der Karibik mit der charakteristischen Scotch Bonnet Schärfe. Schärfegrad 5 Für Veganer geeignet.',
  ingredients_de = 'Paprika, Zwiebeln, Weißweinessig, Scotch Bonnet Chili (13%), Ingwer, Knoblauch, Limette, Olivenöl, Sellerie, Salz, Gewürzmischung'
WHERE slug = 'blue-scotch-bonnet-caribbean';

-- PINK - Chipotle and Pineapple
UPDATE public.products SET 
  description_de = 'PINK - Chipotle & Ananas Sauce. Zutaten: Zwiebeln, Paprika, Ananas (17%), Weißweinessig, rote Jalapeño Chili, Limette, Chipotle Chili (1,7%), Olivenöl, Salz. Eine köstliche Balance zwischen süß und rauchig. Schärfegrad 4 Für Veganer geeignet.',
  ingredients_de = 'Zwiebeln, Paprika, Ananas (17%), Weißweinessig, rote Jalapeño Chili, Limette, Chipotle Chili (1,7%), Olivenöl, Salz'
WHERE slug = 'pink-chipotle-and-pineapple-hot-sauce';

-- Carolina Reaper Dried Pods
UPDATE public.products SET 
  description_de = 'Getrocknete Carolina Reaper Schoten (1,8 Mio. - 2,2 Mio. SHU). Der schärfste Chili der Welt in getrockneter Form. Für Mutige, die ihre eigenen Saucen herstellen oder Gerichte extrem schärfen wollen. Für Veganer geeignet.',
  ingredients_de = 'Getrocknete Carolina Reaper Chilis'
WHERE slug = 'carolina-reaper-dried-peppers';

-- "God Slayer" EXTREME
UPDATE public.products SET 
  description_de = '"God Slayer" EXTREME Chilisauce (Schärfegrad 15). Eine der intensivsten Saucen in unserem Sortiment. Nur für sehr erfahrene Chili-Liebhaber. Für Veganer geeignet.',
  ingredients_de = 'Carolina Reaper, Chiliextrakte, Essig, Salz'
WHERE slug = 'god-slayer';

-- ORANGE - Ghost Pepper & Mango
UPDATE public.products SET 
  description_de = 'ORANGE - Ghost Pepper & Mango Sauce. Zutaten: Paprika, Zwiebeln, Weißweinessig, Mango (12%), Äpfel, Bhut Jolokia "Ghost" Chili (7%), Limette, Olivenöl, Kreuzkümmel, Meersalz. Eine wunderbar ausgewogene Sauce, bei der sich die Hitze der Ghost Pepper langsam aufbaut. Schärfegrad 10 Für Veganer geeignet.',
  ingredients_de = 'Paprika, Zwiebeln, Weißweinessig, Mango (12%), Äpfel, Bhut Jolokia "Ghost" Chili (7%), Limette, Olivenöl, Kreuzkümmel, Meersalz'
WHERE slug = 'orange-ghost-pepper-and-mango-hot-sauce';

-- Mexican Smoked Chipotle Dried Pods
UPDATE public.products SET 
  description_de = 'Mexikanische geräucherte Chipotle Schoten (2500 - 8000 SHU). Getrocknete und geräucherte Jalapeños. Unverzichtbar für einen authentischen Rauchgeschmack in Eintöpfen und Suppen. Für Veganer geeignet.',
  ingredients_de = 'Geräucherte getrocknete Jalapeño Chilis (Chipotle)'
WHERE slug = 'mexican-smoked-chipotle-peppers';

-- Coffee & Ghost Pepper Seasoning Rub
UPDATE public.products SET 
  description_de = 'Kaffee & Ghost Pepper Gewürzmischung. Ein einzigartiger Rub, der den tiefen Geschmack von Kaffee mit der intensiven Schärfe der Ghost Pepper kombiniert. Perfekt für BBQ, besonders Rind oder Schwein. Schärfegrad 8.',
  ingredients_de = 'Kaffee, Ghost Pepper, Zucker, Salz, Gewürze'
WHERE slug = 'black-coffee-ghost-rub';

-- Happy Hatter Hot Sauce - ORIGINAL
UPDATE public.products SET 
  description_de = 'Happy Hatter Hot Sauce – ORIGINAL. Bekannt aus der TV-Kochshow "Dagelijkse Kost". Eine tomatenbasierte Sauce mit einem Hauch von Pfirsichsüße und Madame Jeanette Chilis für einen fruchtig-scharfen Kick. Schärfegrad 6 Für Veganer geeignet.',
  ingredients_de = 'Tomate, Pfirsich, rote Zwiebel, Chilis (Madame Jeanette, Birds eye), Knoblauch, Apfel, Essig, Rohrzucker, Limette, Salz, Sellerie, Kräuter'
WHERE slug = 'happy-hatter-hot-sauce';

-- Trinidad Scorpion
UPDATE public.products SET 
  description_de = 'Trinidad Scorpion - Bekannt aus "HOT ONES" (Schärfegrad 10). Zutaten: Apfelessig, Zucker, Trinidad Scorpion Chili, rote Paprika, Salz. Mit einem heftigen Biss ist diese extrem scharfe Sauce ein wahres Erlebnis. Erst süß, dann langanhaltendes Brennen. Schärfegrad 10 Für Veganer geeignet.',
  ingredients_de = 'Apfelessig, Zucker, Trinidad Scorpion Chili, rote Paprika, Salz'
WHERE slug = 'trinidad-scorpion';

-- "Regret" SUPER EXTREME
UPDATE public.products SET 
  description_de = '"Regret" SUPER EXTREME Chilisauce (Schärfegrad 20). Der Name ist Programm... Mit einem Schärfegrad von 20 ist dies eine der schärfsten Saucen, die wir je hatten. Nur für echte "Chiliheads" ohne Angst. Benutzung auf eigene Gefahr!',
  ingredients_de = 'Extrem scharfe Chilis (Carolina Reaper), Chiliextrakt, Essig, Salz'
WHERE slug = 'regret-extreme-hot-sauce';
