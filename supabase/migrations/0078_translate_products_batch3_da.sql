-- Migration: Translate products batch 3 (Danish)

-- Chilisaus.be - The 2022 Edition "CHOCOLATE SMOKED"
UPDATE public.products SET 
  description_da = 'Chilisaus.be - 2022 Edition - CHOCOLATE SMOKED (uden tilsat sukker). Ingredienser ; Ristede peberfrugter, rødvinseddike, Carolina Reaper, røget Chipotle, rødløg, ristet hvidløg, lime, rå kakao, ingefær, olivenolie, salt, herbes de Provence. En sand eksplosion af frugtige og røgede smage med en fløjlsblød chokoladefinish. Styrke 10 Velegnet til veganere',
  ingredients_da = 'Ristede peberfrugter, rødvinseddike, Carolina Reaper, røget Chipotle, rødløg, ristet hvidløg, lime, rå kakao, ingefær, olivenolie, salt, herbes de Provence'
WHERE slug = 'the-2022-edition-smoked-heat-level-10';

-- Venus - Carolina Reaper Mayonnaise
UPDATE public.products SET 
  description_da = 'Carolina Reaper Mayonnaise - 180g. Ingredienser ; Rapsolie, pastueriseret æggeblomme fra fritgående høns, Dijon sennep, Carolina Reaper puré, æbleeddike, citronsaft, sukker, kartoffelstivelse, salt, peber. Cremet, tyk og lækkert stærk. Erstat din almindelige mayo med denne Reaper-version for et kick til ethvert måltid. Styrke 9 Ikke velegnet til veganere',
  ingredients_da = 'Rapsolie, pastueriseret æggeblomme, Dijon sennep, Carolina Reaper puré, æbleeddike, citronsaft, sukker, kartoffelstivelse, salt, peber'
WHERE slug = 'venus-carolina-reaper-mayonnaise';

-- Johnny Scoville - Tube of Terror Challenge V2.0
UPDATE public.products SET 
  description_da = 'TUBE OF TERROR CHALLENGE - Version 2.0. Ingredienser ; Majs, majsolie, chilier (Carolina Reaper, Moruga Scorpion, 7-Pot Primo, 7-Pot Douglah, Ghost), havsalt, krydderier. Vildt stærkt! Ristede majskerner dækket med en blanding af verdens stærkeste chilier. Tør du tage udfordringen?',
  ingredients_da = 'Majs, majsolie, chilier (Carolina Reaper, Moruga Scorpion, 7-Pot Primo, 7-Pot Douglah, Ghost), havsalt, krydderier'
WHERE slug = 'johnny-scoville-tube-of-terror-challenge-v2-0-heat-level-off-the-scale';

-- Trinidad Scorpion Powder 10g
UPDATE public.products SET 
  description_da = 'Trinidad Scorpion Pulver 10g. 1,2 mio. SHU. Verdens 2. stærkeste chili. Tørret og malet til et fint pulver. Perfekt til at tilføje en super stærk, progressiv varme til dine måltider. Brug med forsigtighed.',
  ingredients_da = 'Trinidad Scorpion chilier'
WHERE slug = 'trinidad-scorpion-powder-10g-1-2-million-scoville-heat-units';

-- White Whale Sauces - "Gnarlicky"
UPDATE public.products SET 
  description_da = 'Gnarlicky Ingredienser ; Hvidløg, habanero chilier, løg, limesaft, eddike, olivenolie, salt, sennepsfrø, timian, rosmarin, aktivt kul. En utrolig mængde confiteret hvidløg og fermenteret sort hvidløg udgør basen i denne sauce. Vanedannende for hvidløgsfans. Styrke 6 Velegnet til veganere',
  ingredients_da = 'Hvidløg, habanero chilier, løg, limesaft, eddike, olivenolie, salt, sennepsfrø, timian, rosmarin, aktivt kul'
WHERE slug = 'white-whale-sauces-gnarlicky-heat-level-6';

-- Sweet Heat Hot Honey (NL)
UPDATE public.products SET 
  description_da = 'Stærk Honning – DEN ORIGINALE. Ingredienser ; Honning 90%, 10% chilier. Lækkert vanedannende, sødt og stærkt. Produceret i Amsterdam af den fineste blomsterhonning og en hemmelig chiliblanding. Perfekt på pizza, stegt kylling eller oste. Styrke 4 Ikke velegnet til veganere (indeholder honning)',
  ingredients_da = 'Honning 90%, chilier 10%'
WHERE slug = 'sweet-heat-hot-honey';

-- Chilisaus.be - The 2023 Edition - "ASIAN MANGO"
UPDATE public.products SET 
  description_da = '2023 Edition - ASIAN MANGO. Ingredienser ; Mango, lime, orange peberfrugt, Ghost Peppers, Madame Jeanette chilier, æbleeddike, skalotteløg, appelsinsaft, citrongræs, krydderurter, krydderier, salt. Frisk, saftig og meget vanedannende. Perfekt til asiatisk mad, ris, kylling eller fisk. Styrke 10 Velegnet til veganere',
  ingredients_da = 'Mango, lime, orange peberfrugt, Ghost Peppers, Madame Jeanette chilier, æbleeddike, skalotteløg, appelsinsaft, citrongræs, krydderurter, krydderier, salt'
WHERE slug = 'chilisaus-be-the-2023-edition-asian-mango-heat-level-10';

-- Chilisaus.be TRIO
UPDATE public.products SET 
  description_da = 'TRIO Chilisaus.be - Vores egne 3 saucer: Garlic Italian (2020), Chocolate Smoked (2022) og Asian Mango (2023). En smagsrejse gennem vores årlige kreationer. 100% naturlige ingredienser. Velegnet til veganere.',
  details_da = 'Indeholder 3 flasker: Garlic Italian (Styrke 8), Chocolate Smoked (Styrke 10), Asian Mango (Styrke 10).'
WHERE slug = 'chilisaus-be-trio-all-3-sauces-2020-2022-2023';

-- Happy Hatter Hot Sauce - SHAKIRA
UPDATE public.products SET 
  description_da = 'Happy Hatter Hot Sauce – SHAKIRA. Ingredienser ; Shakira chilier, Serrano chilier, æbleeddike, rørsukker, løg, hvidløg, limesaft, salt, ingefær, olivenolie. En let, frisk og syrlig grøn sauce med Shakira chilien af arabisk oprindelse. Styrke 3 Velegnet til veganere',
  ingredients_da = 'Shakira chilier, Serrano chilier, æbleeddike, rørsukker, løg, hvidløg, limesaft, salt, ingefær, olivenolie'
WHERE slug = 'happy-hatter-hot-sauce-shakira-heat-level-3';

-- Happy Hatter Hot Sauce - PICKLE PUMPKIN PIRATE
UPDATE public.products SET 
  description_da = 'Happy Hatter – PICKLE PUMPKIN PIRATE. Ingredienser ; Græskar, cornichoner, Aji Amarillo chilier, Trinidad Scorpion, løg, eddike, rørsukker, krydret rom, hvidløg, lime, salt, krydderurter, olivenolie, sennep. En smagfuld sauce til ægte pirater med et strejf af rom. Styrke 8 Velegnet til veganere',
  ingredients_da = 'Græskar, cornichoner, Aji Amarillo chilier, Trinidad Scorpion, løg, eddike, rørsukker, krydret rom, hvidløg, lime, salt, krydderurter, olivenolie, sennep'
WHERE slug = 'happy-hatter-hot-sauce-pickle-pumpkin-pirate-heat-level-7';

-- Happy Hatter Hot Sauce - THE WHOLE FAMILY
UPDATE public.products SET 
  description_da = 'Hele Happy Hatter familien - Sæt med 6 saucer á 100ml. Fra styrke 3 til 10. Indeholder: Original, Smoked, Bombay, Shakira, Pickle Pumpkin Pirate og Chocolate Smoked. En ideel gave til at udforske hele sortimentet.',
  details_da = 'Indeholder 6x 100ml flasker med forskellige styrkeniveauer.'
WHERE slug = 'happy-hatter-the-whole-family-x6-sauces';

-- DOOMSDAY - 1.6 Million Scoville PURE Capsaicin
UPDATE public.products SET 
  description_da = 'DOOMSDAY - Ren Capsaicin 1,6 mio. SHU - 30ml. Ingredienser ; Chiliekstrakt med 1,6 millioner Scoville-enheder. Må kun bruges som tilsætning til mad eller drikke. En øjeblikkelig og langvarig varme. Advarsel, ekstremt kraftfuldt produkt!',
  ingredients_da = 'Chiliekstrakt med 1,6 mio. SHU'
WHERE slug = 'doomsday-1-6million-scoville-pure-capsaicin-heat-level-15-30ml-dropper';

-- OBLIVION - 500,000 Scoville PURE Capsaicin
UPDATE public.products SET 
  description_da = 'OBLIVION - Ren Capsaicin 500.000 SHU - 30ml. Helt gennemsigtig ekstrakt, ideel til at gøre retter stærke uden at ændre deres farve eller oprindelige smag. Brug med forsigtighed.',
  ingredients_da = 'Chiliekstrakt med 500.000 SHU'
WHERE slug = 'oblivion-500000-scoville-pure-capsaicin-heat-level-12-30ml-dropper-bottle';

-- El Jefe - PICANTE
UPDATE public.products SET 
  description_da = 'El Jefe - PICANTE. Ingredienser ; Tomater, chilier, hvidløg, citronsaft, solsikkeolie, havsalt. En salsa i mexicansk stil med røgede chilier og ristet hvidløg. Dybe smage og fyldig tekstur. Styrke 6 Velegnet til veganere',
  ingredients_da = 'Tomater, chilier, hvidløg, citronsaft, solsikkeolie, havsalt'
WHERE slug = 'el-jefe-picante-mexican-hot-sauce-heat-level-6';

-- Satan's Spawn Gummy Bears
UPDATE public.products SET 
  description_da = 'Satan''s Spawn Vingummibamser - 125g. Disse små bamser har en mørk side: de er infuseret med stærke Habanero chilier. Lækre og frugtige med en ordentlig brænden. Ikke velegnet til veganere.',
  ingredients_da = 'Glukosesirup, sukker, gelatine (svin), citronsyre, aromaer, habanero pulver (0,3%), frugtsaftkoncentrater'
WHERE slug = 'satans-spawn-gummy-bears-125g';

-- Lord Reaper (UK) - Carolina Reaper Hot Sauce
UPDATE public.products SET 
  description_da = 'Lord Reaper - Fermenteret Carolina Reaper Sauce 100ml. Ingredienser ; Vand, rapsolie, Carolina Reaper (20%), eddike, sojasauce, appelsin, rørsukker, krydderier, salt, ingefær, hvidløg, citron. Tyk, klistret og super stærk. Styrke 10 Velegnet til veganere',
  ingredients_da = 'Vand, rapsolie, Carolina Reaper (20%), eddike, sojasauce, appelsin, rørsukker, krydderier, salt, ingefær, hvidløg, citron'
WHERE slug = 'lord-reaper-carolina-reaper-hot-sauce-heat-level-10';

-- Johnny Scoville - Tube Of Terror Challenge V1.0 Peanuts
UPDATE public.products SET 
  description_da = 'TUBE OF TERROR CHALLENGE V1.0. Jordnødder dækket med verdens stærkeste chilier: Carolina Reaper, Trinidad Scorpion, 7 Pot Brain Strain, Duglah og Ghost, plus rene capsaicin-krystaller på 13M SHU. Held og lykke!',
  ingredients_da = 'Jordnødder, Carolina Reaper, Trinidad Scorpion, 7 Pot Brain Strain, Duglah, Ghost Peppers, rene capsaicin-krystaller'
WHERE slug = 'johnny-scoville-tube-of-terror-challenge-v1-0-peanuts-heat-level-off-the-scale';

-- The Level 20, Shit That's Hot
UPDATE public.products SET 
  description_da = 'LEVEL 20 - Shit that''s Hot! Super stærk sauce. Ingredienser ; Tomat, æbleeddike, hvidløg, chipotle, habanero lemon, løg, limesaft, agavesirup, ren capsaicin 9 mio. SHU, krydderurter, krydderier, salt. Perfekt balance mellem smag og ekstrem varme. Styrke 20 Velegnet til veganere',
  ingredients_da = 'Tomat, æbleeddike, hvidløg, chipotle, habanero lemon, løg, limesaft, agavesirup, ren capsaicin 9M SHU, krydderurter, krydderier, salt'
WHERE slug = 'level-20-extreme-heat-sauce';

-- Chipotle Adobo Seasoning
UPDATE public.products SET 
  description_da = 'Chipotle Adobo Krydderi - 65g. Ingredienser: Spidskommen, paprika, hvidløg, løg, chipotle, oregano, peber, tomat, salt. Inspireret af traditionel mexicansk madlavning. Jordagtig, røget og fyldig. Styrke 5 Velegnet til veganere.',
  ingredients_da = 'Spidskommen, paprika, hvidløg, løg, chipotle, oregano, peber, tomat, salt'
WHERE slug = 'chipotle-adobo-heat-level-5-65g';

-- Piri Piri & Co, PORTUGAL - Scorpion Chili Oil
UPDATE public.products SET 
  description_da = 'Scorpion Chiliolie - Portugal. Ingredienser: Solsikkeolie, Trinidad Scorpion, Ghost Pepper, Habanero, Malagueta chili, citron, salt. Chiliernes smag skinner igennem i denne silkebløde olie. Styrke 8 Velegnet til veganere.',
  ingredients_da = 'Solsikkeolie, Trinidad Scorpion, Ghost Pepper, Habanero, Malagueta chili, citron, salt'
WHERE slug = 'piri-piri-co-portugal-scorpion-chili-oil-heat-level-8-100ml';
