-- Migration: Translate products batch 3 (Norwegian)

-- Chilisaus.be - The 2022 Edition "CHOCOLATE SMOKED"
UPDATE public.products SET 
  description_no = 'Chilisaus.be - 2022-utgaven - CHOCOLATE SMOKED (uten tilsatt sukker). Ingredienser ; Ristet paprika, rødvinseddik, Carolina Reaper, røkt Chipotle, rødløk, ristet hvitløk, lime, rå kakao, ingefær, olivenolje, salt, urter fra Provence. En ekte eksplosjon av fruktige og røyksmaker med en fløyelsmyk sjokoladefinish. Styrkegrad 10 Egnet for veganere',
  ingredients_no = 'Ristet paprika, rødvinseddik, Carolina Reaper, røkt Chipotle, rødløk, ristet hvitløk, lime, rå kakao, ingefær, olivenolje, salt, urter fra Provence'
WHERE slug = 'the-2022-edition-smoked-heat-level-10';

-- Venus - Carolina Reaper Mayonnaise
UPDATE public.products SET 
  description_no = 'Carolina Reaper Majones - 180g. Ingredienser ; Rapsolje, pasteurisert eggeplomme fra frittgående høner, Dijon-sennep, Carolina Reaper-puré, epleeddik, sitronsaft, sukker, potetstivelse, salt, pepper. Kremet, tykk og deilig sterk. Bytt ut din vanlige mayo med denne Reaper-versjonen for et kick i ethvert måltid. Styrkegrad 9 Ikke egnet for veganere',
  ingredients_no = 'Rapsolje, pasteurisert eggeplomme, Dijon-sennep, Carolina Reaper-puré, epleeddik, sitronsaft, sukker, potetstivelse, salt, pepper'
WHERE slug = 'venus-carolina-reaper-mayonnaise';

-- Johnny Scoville - Tube of Terror Challenge V2.0
UPDATE public.products SET 
  description_no = 'TUBE OF TERROR CHALLENGE - Versjon 2.0. Ingredienser ; Mais, maisolje, chilier (Carolina Reaper, Moruga Scorpion, 7-Pot Primo, 7-Pot Douglah, Ghost), havsalt, krydder. Vilt sterkt! Ristede maiskjerner dekket med en blanding av verdens sterkeste chilier. Tar du utfordringen?',
  ingredients_no = 'Mais, maisolje, chilier (Carolina Reaper, Moruga Scorpion, 7-Pot Primo, 7-Pot Douglah, Ghost), havsalt, krydder'
WHERE slug = 'johnny-scoville-tube-of-terror-challenge-v2-0-heat-level-off-the-scale';

-- Trinidad Scorpion Powder 10g
UPDATE public.products SET 
  description_no = 'Trinidad Scorpion Pulver 10g. 1,2 mill. SHU. Verdens 2. sterkeste chili. Tørket og malt til et fint pulver. Perfekt for å tilsette en supersterk, progressiv varme til måltidene dine. Bruk med forsiktighet.',
  ingredients_no = 'Trinidad Scorpion-chilier'
WHERE slug = 'trinidad-scorpion-powder-10g-1-2-million-scoville-heat-units';

-- White Whale Sauces - "Gnarlicky"
UPDATE public.products SET 
  description_no = 'Gnarlicky Ingredienser ; Hvitløk, habanero-chilier, løk, limesaft, eddik, olivenolje, salt, sennepsfrø, timian, rosmarin, aktivt kull. En utrolig mengde konfitert hvitløk og fermentert svart hvitløk danner basen i denne sausen. Avhengighetsskapende for hvitløksfans. Styrkegrad 6 Egnet for veganere',
  ingredients_no = 'Hvitløk, habanero-chilier, løk, limesaft, eddik, olivenolje, salt, sennepsfrø, timian, rosmarin, aktivt kull'
WHERE slug = 'white-whale-sauces-gnarlicky-heat-level-6';

-- Sweet Heat Hot Honey (NL)
UPDATE public.products SET 
  description_no = 'Sterk Honning – DEN ORIGINALE. Ingredienser ; Honning 90%, 10% chilier. Deilig avhengighetsskapende, søtt og sterkt. Produsert i Amsterdam av den fineste blomsterhonning og en hemmelig chiliblanding. Perfekt på pizza, stekt kylling eller oster. Styrkegrad 4 Ikke egnet for veganere (inneholder honning)',
  ingredients_no = 'Honning 90%, chilier 10%'
WHERE slug = 'sweet-heat-hot-honey';

-- Chilisaus.be - The 2023 Edition - "ASIAN MANGO"
UPDATE public.products SET 
  description_no = '2023-utgaven - ASIAN MANGO. Ingredienser ; Mango, lime, oransje paprika, Ghost Peppers, Madame Jeanette-chilier, epleeddik, sjalottløk, appelsinjuice, sitrongress, urter, krydder, salt. Frisk, saftig og veldig avhengighetsskapende. Perfekt til asiatisk mat, ris, kylling eller fisk. Styrkegrad 10 Egnet for veganere',
  ingredients_no = 'Mango, lime, oransje paprika, Ghost Peppers, Madame Jeanette-chilier, epleeddik, sjalottløk, appelsinjuice, sitrongress, urter, krydder, salt'
WHERE slug = 'chilisaus-be-the-2023-edition-asian-mango-heat-level-10';

-- Chilisaus.be TRIO
UPDATE public.products SET 
  description_no = 'TRIO Chilisaus.be - Våre egne 3 sauser: Garlic Italian (2020), Chocolate Smoked (2022) og Asian Mango (2023). En smaksreise gjennom våre årlige kreasjoner. 100% naturlige ingredienser. Egnet for veganere.',
  details_no = 'Inneholder 3 flasker: Garlic Italian (Styrke 8), Chocolate Smoked (Styrke 10), Asian Mango (Styrke 10).'
WHERE slug = 'chilisaus-be-trio-all-3-sauces-2020-2022-2023';

-- Happy Hatter Hot Sauce - SHAKIRA
UPDATE public.products SET 
  description_no = 'Happy Hatter Hot Sauce – SHAKIRA. Ingredienser ; Shakira-chilier, Serrano-chilier, epleeddik, rørsukker, løk, hvitløk, limesaft, salt, ingefær, olivenolje. En lett, frisk og syrlig grønn saus med Shakira-chilien av arabisk opprinnelse. Styrkegrad 3 Egnet for veganere',
  ingredients_no = 'Shakira-chilier, Serrano-chilier, epleeddik, rørsukker, løk, hvitløk, limesaft, salt, ingefær, olivenolje'
WHERE slug = 'happy-hatter-hot-sauce-shakira-heat-level-3';

-- Happy Hatter Hot Sauce - PICKLE PUMPKIN PIRATE
UPDATE public.products SET 
  description_no = 'Happy Hatter – PICKLE PUMPKIN PIRATE. Ingredienser ; Gresskar, sylteagurk, Aji Amarillo-chilier, Trinidad Scorpion, løk, eddik, rørsukker, krydret rom, hvitløk, lime, salt, urter, olivenolje, sennep. En smaksrik saus for ekte pirater med et hint av rom. Styrkegrad 8 Egnet for veganere',
  ingredients_no = 'Gresskar, sylteagurk, Aji Amarillo-chilier, Trinidad Scorpion, løk, eddik, rørsukker, krydret rom, hvitløk, lime, salt, urter, olivenolje, sennep'
WHERE slug = 'happy-hatter-hot-sauce-pickle-pumpkin-pirate-heat-level-7';

-- Happy Hatter Hot Sauce - THE WHOLE FAMILY
UPDATE public.products SET 
  description_no = 'Hele Happy Hatter-familien - Sett med 6 sauser á 100ml. Fra styrkegrad 3 til 10. Inneholder: Original, Smoked, Bombay, Shakira, Pickle Pumpkin Pirate og Chocolate Smoked. En ideell gave for å utforske hele serien.',
  details_no = 'Inneholder 6x 100ml flasker med forskjellige styrkegrader.'
WHERE slug = 'happy-hatter-the-whole-family-x6-sauces';

-- DOOMSDAY - 1.6 Million Scoville PURE Capsaicin
UPDATE public.products SET 
  description_no = 'DOOMSDAY - Ren Capsaicin 1,6 mill. SHU - 30ml. Ingredienser ; Chiliekstrakt med 1,6 millioner Scoville-enheter. Skal kun brukes som tilsetning til mat eller drikke. En umiddelbar og langvarig varme. Advarsel, ekstremt kraftig produkt!',
  ingredients_no = 'Chiliekstrakt med 1,6 mill. SHU'
WHERE slug = 'doomsday-1-6million-scoville-pure-capsaicin-heat-level-15-30ml-dropper';

-- OBLIVION - 500,000 Scoville PURE Capsaicin
UPDATE public.products SET 
  description_no = 'OBLIVION - Ren Capsaicin 500.000 SHU - 30ml. Helt gjennomsiktig ekstrakt, ideell for å gjøre retter sterke uten å endre farge eller opprinnelig smak. Bruk med forsiktighet.',
  ingredients_no = 'Chiliekstrakt med 500.000 SHU'
WHERE slug = 'oblivion-500000-scoville-pure-capsaicin-heat-level-12-30ml-dropper-bottle';

-- El Jefe - PICANTE
UPDATE public.products SET 
  description_no = 'El Jefe - PICANTE. Ingredienser ; Tomater, chilier, hvitløk, sitronsaft, solsikkeolje, havsalt. En salsa i meksikansk stil med røykte chilier og ristet hvitløk. Dype smaker og fyldig tekstur. Styrkegrad 6 Egnet for veganere',
  ingredients_no = 'Tomater, chilier, hvitløk, sitronsaft, solsikkeolje, havsalt'
WHERE slug = 'el-jefe-picante-mexican-hot-sauce-heat-level-6';

-- Satan's Spawn Gummy Bears
UPDATE public.products SET 
  description_no = 'Satan''s Spawn Vingummibjørner - 125g. Disse små bjørnene har en mørk side: de er infisert med sterke habanero-chilier. Deilige og fruktige med en ordentlig brenning. Ikke egnet for veganere.',
  ingredients_no = 'Glukosesirup, sukker, gelatin (svin), sitronsyre, aromaer, habaneropulver (0,3%), fruktjuicekonsentrater'
WHERE slug = 'satans-spawn-gummy-bears-125g';

-- Lord Reaper (UK) - Carolina Reaper Hot Sauce
UPDATE public.products SET 
  description_no = 'Lord Reaper - Fermentert Carolina Reaper-saus 100ml. Ingredienser ; Vann, rapsolje, Carolina Reaper (20%), eddik, soyasaus, appelsin, rørsukker, krydder, salt, ingefær, hvitløk, sitron. Tyk, klebrig og supersterk. Styrkegrad 10 Egnet for veganere',
  ingredients_no = 'Vann, rapsolje, Carolina Reaper (20%), eddik, soyasaus, appelsin, rørsukker, krydder, salt, ingefær, hvitløk, sitron'
WHERE slug = 'lord-reaper-carolina-reaper-hot-sauce-heat-level-10';

-- Johnny Scoville - Tube Of Terror Challenge V1.0 Peanuts
UPDATE public.products SET 
  description_no = 'TUBE OF TERROR CHALLENGE V1.0. Peanøtter dekket med verdens sterkeste chilier: Carolina Reaper, Trinidad Scorpion, 7 Pot Brain Strain, Duglah og Ghost, pluss rene capsaicin-krystaller på 13M SHU. Lykke til!',
  ingredients_no = 'Peanøtter, Carolina Reaper, Trinidad Scorpion, 7 Pot Brain Strain, Duglah, Ghost Peppers, rene capsaicin-krystaller'
WHERE slug = 'johnny-scoville-tube-of-terror-challenge-v1-0-peanuts-heat-level-off-the-scale';

-- The Level 20, Shit That's Hot
UPDATE public.products SET 
  description_no = 'LEVEL 20 - Shit that''s Hot! Supersterk saus. Ingredienser ; Tomat, epleeddik, hvitløk, chipotle, habanero lemon, løk, limesaft, agavesirup, ren capsaicin 9 mill. SHU, urter, krydder, salt. Perfekt balanse mellom smak og ekstrem varme. Styrkegrad 20 Egnet for veganere',
  ingredients_no = 'Tomat, epleeddik, hvitløk, chipotle, habanero lemon, løk, limesaft, agavesirup, ren capsaicin 9M SHU, urter, krydder, salt'
WHERE slug = 'level-20-extreme-heat-sauce';

-- Chipotle Adobo Seasoning
UPDATE public.products SET 
  description_no = 'Chipotle Adobo Krydder - 65g. Ingredienser: Spisskummen, paprika, hvitløk, løk, chipotle, oregano, pepper, tomat, salt. Inspirert av tradisjonell meksikansk matlaging. Jordaktig, røykt og fyldig. Styrkegrad 5 Egnet for veganere.',
  ingredients_no = 'Spisskummen, paprika, hvitløk, løk, chipotle, oregano, pepper, tomat, salt'
WHERE slug = 'chipotle-adobo-heat-level-5-65g';

-- Piri Piri & Co, PORTUGAL - Scorpion Chili Oil
UPDATE public.products SET 
  description_no = 'Scorpion Chiliolje - Portugal. Ingredienser: Solsikkeolje, Trinidad Scorpion, Ghost Pepper, Habanero, Malagueta-chili, sitron, salt. Chilienes smak skinner gjennom i denne silkemyke oljen. Styrkegrad 8 Egnet for veganere.',
  ingredients_no = 'Solsikkeolje, Trinidad Scorpion, Ghost Pepper, Habanero, Malagueta-chili, sitron, salt'
WHERE slug = 'piri-piri-co-portugal-scorpion-chili-oil-heat-level-8-100ml';
