-- Migration: Translate products batch 3 (German)

-- Chilisaus.be - The 2022 Edition "CHOCOLATE SMOKED"
UPDATE public.products SET 
  description_de = 'Chilisaus.be - Edition 2022 - CHOCOLATE SMOKED (ohne Zuckerzusatz). Zutaten ; Geröstete Paprika, Rotweinessig, Carolina Reaper, geräuchertes Chipotle, rote Zwiebel, gerösteter Knoblauch, Limette, Rohkakao, Ingwer, Olivenöl, Salz, Kräuter der Provence. Eine echte Explosion aus fruchtigen und rauchigen Aromen mit einem samtigen Schokoladen-Finish. Schärfegrad 10 Für Veganer geeignet',
  ingredients_de = 'Geröstete Paprika, Rotweinessig, Carolina Reaper, geräuchertes Chipotle, rote Zwiebel, gerösteter Knoblauch, Limette, Rohkakao, Ingwer, Olivenöl, Salz, Kräuter der Provence'
WHERE slug = 'the-2022-edition-smoked-heat-level-10';

-- Venus - Carolina Reaper Mayonnaise
UPDATE public.products SET 
  description_de = 'Carolina Reaper Mayonnaise - 180g. Zutaten ; Rapsöl, pasteurisiertes Eigelb von Freilandeiern, Dijon-Senf, Carolina Reaper Püree, Apfelessig, Zitronensaft, Zucker, Kartoffelstärke, Salz, Pfeffer. Cremig, dickflüssig und herrlich scharf. Ersetze deine normale Mayo durch diese Reaper-Version für einen Kick in jedem Gericht. Schärfegrad 9 Nicht für Veganer geeignet',
  ingredients_de = 'Rapsöl, pasteurisiertes Eigelb, Dijon-Senf, Carolina Reaper Püree, Apfelessig, Zitronensaft, Zucker, Kartoffelstärke, Salz, Pfeffer'
WHERE slug = 'venus-carolina-reaper-mayonnaise';

-- Johnny Scoville - Tube of Terror Challenge V2.0
UPDATE public.products SET 
  description_de = 'TUBE OF TERROR CHALLENGE - Version 2.0. Zutaten ; Mais, Maisöl, Chilis (Carolina Reaper, Moruga Scorpion, 7-Pot Primo, 7-Pot Douglah, Ghost), Meersalz, Gewürze. Wahnsinnig scharf! Geröstete Maiskörner, überzogen mit einer Mischung der schärfsten Chilis der Welt. Wagst du die Challenge?',
  ingredients_de = 'Mais, Maisöl, Chilis (Carolina Reaper, Moruga Scorpion, 7-Pot Primo, 7-Pot Douglah, Ghost), Meersalz, Gewürze'
WHERE slug = 'johnny-scoville-tube-of-terror-challenge-v2-0-heat-level-off-the-scale';

-- Trinidad Scorpion Powder 10g
UPDATE public.products SET 
  description_de = 'Trinidad Scorpion Pulver 10g. 1,2 Mio. SHU. Der zweitschärfste Chili der Welt. Zu feinem Pulver getrocknet und gemahlen. Perfekt, um Mahlzeiten eine super starke, progressive Schärfe zu verleihen. Vorsichtig verwenden.',
  ingredients_de = 'Trinidad Scorpion Chilis'
WHERE slug = 'trinidad-scorpion-powder-10g-1-2-million-scoville-heat-units';

-- White Whale Sauces - "Gnarlicky"
UPDATE public.products SET 
  description_de = 'Gnarlicky Zutaten ; Knoblauch, Habanero-Chilis, Zwiebel, Limettensaft, Essig, Olivenöl, Salz, Senfkörner, Thymian, Rosmarin, Aktivkohle. Eine unglaubliche Menge an konfiertem und fermentiertem schwarzem Knoblauch bildet die Basis dieser Sauce. Suchtpotenzial für Knoblauch-Fans. Schärfegrad 6 Für Veganer geeignet',
  ingredients_de = 'Knoblauch, Habanero-Chilis, Zwiebel, Limettensaft, Essig, Olivenöl, Salz, Senfkörner, Thymian, Rosmarin, Aktivkohle'
WHERE slug = 'white-whale-sauces-gnarlicky-heat-level-6';

-- Sweet Heat Hot Honey (NL)
UPDATE public.products SET 
  description_de = 'Scharfer Honig – DAS ORIGINAL. Zutaten ; Honig 90%, 10% Chilis. Herrlich süchtig machend, süß und scharf. Hergestellt in Amsterdam aus bestem Blütenhonig und einer geheimen Chilimischung. Perfekt auf Pizza, Brathähnchen oder Käse. Schärfegrad 4 Nicht für Veganer geeignet (enthält Honig)',
  ingredients_de = 'Honig 90%, Chilis 10%'
WHERE slug = 'sweet-heat-hot-honey';

-- Chilisaus.be - The 2023 Edition - "ASIAN MANGO"
UPDATE public.products SET 
  description_de = 'Edition 2023 - ASIAN MANGO. Zutaten ; Mango, Limette, orange Paprika, Ghost Peppers, Madame Jeanette Chilis, Apfelessig, Schalotten, Orangensaft, Zitronengras, Kräuter, Gewürze, Salz. Frisch, saftig und sehr süchtig machend. Perfekt zur asiatischen Küche, Reis, Hähnchen oder Fisch. Schärfegrad 10 Für Veganer geeignet',
  ingredients_de = 'Mango, Limette, orange Paprika, Ghost Peppers, Madame Jeanette Chilis, Apfelessig, Schalotten, Orangensaft, Zitronengras, Kräuter, Gewürze, Salz'
WHERE slug = 'chilisaus-be-the-2023-edition-asian-mango-heat-level-10';

-- Chilisaus.be TRIO
UPDATE public.products SET 
  description_de = 'TRIO Chilisaus.be - Unsere 3 eigenen Saucen: Garlic Italian (2020), Chocolate Smoked (2022) und Asian Mango (2023). Eine Geschmacksreise durch unsere jährlichen Kreationen. 100% natürliche Zutaten. Für Veganer geeignet.',
  details_de = 'Enthält 3 Flaschen: Garlic Italian (Schärfe 8), Chocolate Smoked (Schärfe 10), Asian Mango (Schärfe 10).'
WHERE slug = 'chilisaus-be-trio-all-3-sauces-2020-2022-2023';

-- Happy Hatter Hot Sauce - SHAKIRA
UPDATE public.products SET 
  description_de = 'Happy Hatter Hot Sauce – SHAKIRA. Zutaten ; Shakira-Chilis, Serrano-Chilis, Apfelessig, Rohrzucker, Zwiebel, Knoblauch, Limettensaft, Salz, Ingwer, Olivenöl. Eine leichte, frische und spritzige grüne Sauce mit der Shakira-Chili arabischen Ursprungs. Schärfegrad 3 Für Veganer geeignet',
  ingredients_de = 'Shakira-Chilis, Serrano-Chilis, Apfelessig, Rohrzucker, Zwiebel, Knoblauch, Limettensaft, Salz, Ingwer, Olivenöl'
WHERE slug = 'happy-hatter-hot-sauce-shakira-heat-level-3';

-- Happy Hatter Hot Sauce - PICKLE PUMPKIN PIRATE
UPDATE public.products SET 
  description_de = 'Happy Hatter – PICKLE PUMPKIN PIRATE. Zutaten ; Kürbis, Gewürzgurken, Aji Amarillo Chilis, Trinidad Scorpion, Zwiebel, Essig, Rohrzucker, würziger Rum, Knoblauch, Limette, Salz, Kräuter, Olivenöl, Senf. Eine herzhafte Sauce für echte Piraten mit einem Schuss Rum. Schärfegrad 8 Für Veganer geeignet',
  ingredients_de = 'Kürbis, Gewürzgurken, Aji Amarillo Chilis, Trinidad Scorpion, Zwiebel, Essig, Rohrzucker, würziger Rum, Knoblauch, Limette, Salz, Kräuter, Olivenöl, Senf'
WHERE slug = 'happy-hatter-hot-sauce-pickle-pumpkin-pirate-heat-level-7';

-- Happy Hatter Hot Sauce - THE WHOLE FAMILY
UPDATE public.products SET 
  description_de = 'Die komplette Happy Hatter Familie - 6 Saucen à 100ml. Schärfegrade 3 bis 10. Enthält: Original, Smoked, Bombay, Shakira, Pickle Pumpkin Pirate und Chocolate Smoked. Ein ideales Geschenk, um die ganze Palette zu entdecken.',
  details_de = 'Enthält 6x 100ml Flaschen mit verschiedenen Schärfegraden.'
WHERE slug = 'happy-hatter-the-whole-family-x6-sauces';

-- DOOMSDAY - 1.6 Million Scoville PURE Capsaicin
UPDATE public.products SET 
  description_de = 'DOOMSDAY - Reines Capsaicin 1,6 Mio. SHU - 30ml. Zutaten ; Chiliextrakt mit 1,6 Mio. Scoville-Einheiten. Nur als Lebensmittel- oder Getränkezusatz verwenden. Sofortige und langanhaltende Hitze. Achtung, extrem starkes Produkt!',
  ingredients_de = 'Chiliextrakt mit 1,6 Mio. SHU'
WHERE slug = 'doomsday-1-6million-scoville-pure-capsaicin-heat-level-15-30ml-dropper';

-- OBLIVION - 500,000 Scoville PURE Capsaicin
UPDATE public.products SET 
  description_de = 'OBLIVION - Reines Capsaicin 500.000 SHU - 30ml. Völlig transparent, ideal zum Schärfen von Gerichten, ohne die Farbe oder den ursprünglichen Geschmack zu verändern. Vorsichtig verwenden.',
  ingredients_de = 'Chiliextrakt mit 500.000 SHU'
WHERE slug = 'oblivion-500000-scoville-pure-capsaicin-heat-level-12-30ml-dropper-bottle';

-- El Jefe - PICANTE
UPDATE public.products SET 
  description_de = 'El Jefe - PICANTE. Zutaten ; Tomaten, Chilis, Knoblauch, Zitronensaft, Sonnenblumenöl, Meersalz. Eine Salsa im mexikanischen Stil mit geräucherten Chilis und geröstetem Knoblauch. Tiefe Aromen und reiche Textur. Schärfegrad 6 Für Veganer geeignet',
  ingredients_de = 'Tomaten, Chilis, Knoblauch, Zitronensaft, Sonnenblumenöl, Meersalz'
WHERE slug = 'el-jefe-picante-mexican-hot-sauce-heat-level-6';

-- Satan's Spawn Gummy Bears
UPDATE public.products SET 
  description_de = 'Satan''s Spawn Gummibärchen - 125g. Diese kleinen Bärchen haben eine dunkle Seite: Sie sind mit scharfen Habanero-Chilis versetzt. Köstlich fruchtig mit ordentlichem Brennen. Nicht für Veganer geeignet.',
  ingredients_de = 'Glukosesirup, Zucker, Gelatine (Schwein), Zitronensäure, Aromen, Habanero-Pulver (0,3%), Fruchtsaftkonzentrate'
WHERE slug = 'satans-spawn-gummy-bears-125g';

-- Lord Reaper (UK) - Carolina Reaper Hot Sauce
UPDATE public.products SET 
  description_de = 'Lord Reaper - Fermentierte Carolina Reaper Sauce 100ml. Zutaten ; Wasser, Rapsöl, Carolina Reaper (20%), Essig, Sojasauce, Orange, Rohrzucker, Gewürze, Salz, Ingwer, Knoblauch, Zitrone. Dickflüssig, klebrig und super scharf. Schärfegrad 10 Für Veganer geeignet',
  ingredients_de = 'Wasser, Rapsöl, Carolina Reaper (20%), Essig, Sojasauce, Orange, Rohrzucker, Gewürze, Salz, Ingwer, Knoblauch, Zitrone'
WHERE slug = 'lord-reaper-carolina-reaper-hot-sauce-heat-level-10';

-- Johnny Scoville - Tube Of Terror Challenge V1.0 Peanuts
UPDATE public.products SET 
  description_de = 'TUBE OF TERROR CHALLENGE V1.0. Erdnüsse, überzogen mit den schärfsten Chilis der Welt: Carolina Reaper, Trinidad Scorpion, 7 Pot Brain Strain, Duglah und Ghost, plus reine Capsaicin-Kristalle mit 13 Mio. SHU. Viel Glück!',
  ingredients_de = 'Erdnüsse, Carolina Reaper, Trinidad Scorpion, 7 Pot Brain Strain, Duglah, Ghost Peppers, reine Capsaicin-Kristalle'
WHERE slug = 'johnny-scoville-tube-of-terror-challenge-v1-0-peanuts-heat-level-off-the-scale';

-- The Level 20, Shit That's Hot
UPDATE public.products SET 
  description_de = 'LEVEL 20 - Shit that''s Hot! Super scharfe Sauce. Zutaten ; Tomate, Apfelessig, Knoblauch, Chipotle, Lemon Habanero, Zwiebel, Limettensaft, Agavensirup, reines Capsaicin 9 Mio. SHU, Kräuter, Gewürze, Salz. Perfekte Balance zwischen Geschmack und extremer Hitze. Schärfegrad 20 Für Veganer geeignet',
  ingredients_de = 'Tomate, Apfelessig, Knoblauch, Chipotle, Lemon Habanero, Zwiebel, Limettensaft, Agavensirup, reines Capsaicin 9M SHU, Kräuter, Gewürze, Salz'
WHERE slug = 'level-20-extreme-heat-sauce';

-- Chipotle Adobo Seasoning
UPDATE public.products SET 
  description_de = 'Chipotle Adobo Gewürzmischung - 65g. Zutaten: Kreuzkümmel, Paprika, Knoblauch, Zwiebel, Chipotle, Oregano, Pfeffer, Tomate, Salz. Inspiriert von der traditionellen mexikanischen Küche. Erdig, rauchig und reichhaltig. Schärfegrad 5 Für Veganer geeignet.',
  ingredients_de = 'Kreuzkümmel, Paprika, Knoblauch, Zwiebel, Chipotle, Oregano, Pfeffer, Tomate, Salz'
WHERE slug = 'chipotle-adobo-heat-level-5-65g';

-- Piri Piri & Co, PORTUGAL - Scorpion Chili Oil
UPDATE public.products SET 
  description_de = 'Scorpion Chili-Öl - Portugal. Zutaten: Sonnenblumenöl, Trinidad Scorpion, Ghost Pepper, Habanero, Malagueta-Pfeffer, Zitrone, Salz. Das Aroma der Chilis kommt in diesem seidigen Öl voll zur Geltung. Schärfegrad 8 Für Veganer geeignet.',
  ingredients_de = 'Sonnenblumenöl, Trinidad Scorpion, Ghost Pepper, Habanero, Malagueta-Pfeffer, Zitrone, Salz'
WHERE slug = 'piri-piri-co-portugal-scorpion-chili-oil-heat-level-8-100ml';
