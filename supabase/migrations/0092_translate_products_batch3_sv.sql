-- Migration: Translate products batch 3 (Swedish)

-- Chilisaus.be - The 2022 Edition "CHOCOLATE SMOKED"
UPDATE public.products SET 
  description_sv = 'Chilisaus.be - 2022-utgåvan - CHOCOLATE SMOKED (utan tillsatt socker). Ingredienser ; Rostad paprika, rödvinsvinäger, Carolina Reaper, rökt Chipotle, rödlök, rostad vitlök, lime, rå kakao, ingefära, olivolja, salt, herbes de Provence. En verklig explosion av fruktiga och rökiga smaker med en sammetslen chokladfinish. Hetta 10 Lämplig för veganer',
  ingredients_sv = 'Rostad paprika, rödvinsvinäger, Carolina Reaper, rökt Chipotle, rödlök, rostad vitlök, lime, rå kakao, ingefära, olivolja, salt, herbes de Provence'
WHERE slug = 'the-2022-edition-smoked-heat-level-10';

-- Venus - Carolina Reaper Mayonnaise
UPDATE public.products SET 
  description_sv = 'Carolina Reaper Majonnäs - 180g. Ingredienser ; Rapsolja, pastöriserad äggula från frigående höns, Dijonsenap, Carolina Reaper-puré, äppelcidervinäger, citronjuice, socker, potatisstärkelse, salt, peppar. Krämig, tjock och härligt stark. Ersätt din vanliga mayo med denna Reaper-version för en kick i varje rätt. Hetta 9 Ej lämplig för veganer',
  ingredients_sv = 'Rapsolja, pastöriserad äggula, Dijonsenap, Carolina Reaper-puré, äppelcidervinäger, citronjuice, socker, potatisstärkelse, salt, peppar'
WHERE slug = 'venus-carolina-reaper-mayonnaise';

-- Johnny Scoville - Tube of Terror Challenge V2.0
UPDATE public.products SET 
  description_sv = 'TUBE OF TERROR CHALLENGE - Version 2.0. Ingredienser ; Majs, majsolja, chili (Carolina Reaper, Moruga Scorpion, 7-Pot Primo, 7-Pot Douglah, Ghost), havssalt, kryddor. Vilt starkt! Rostade majskärnor täckta med en blandning av världens starkaste chilifrukter. Antar du utmaningen?',
  ingredients_sv = 'Majs, majsolja, chili (Carolina Reaper, Moruga Scorpion, 7-Pot Primo, 7-Pot Douglah, Ghost), havssalt, kryddor'
WHERE slug = 'johnny-scoville-tube-of-terror-challenge-v2-0-heat-level-off-the-scale';

-- Trinidad Scorpion Powder 10g
UPDATE public.products SET 
  description_sv = 'Trinidad Scorpion Pulver 10g. 1,2 milj. SHU. Världens näst starkaste chili. Torkad och malen till ett fint pulver. Perfekt för att tillsätta en superstark, progressiv hetta till dina måltider. Använd med försiktighet.',
  ingredients_sv = 'Trinidad Scorpion chili'
WHERE slug = 'trinidad-scorpion-powder-10g-1-2-million-scoville-heat-units';

-- White Whale Sauces - "Gnarlicky"
UPDATE public.products SET 
  description_sv = 'Gnarlicky Ingredienser ; Vitlök, habanero-chili, lök, limesaft, vinäger, olivolja, salt, senapsfrö, timjan, rosmarin, aktivt kol. En otrolig mängd confiterad vitlök och fermenterad svart vitlök utgör basen i denna sås. Beroendeframkallande för vitlöksfans. Hetta 6 Lämplig för veganer',
  ingredients_sv = 'Vitlök, habanero-chili, lök, limesaft, vinäger, olivolja, salt, senapsfrö, timjan, rosmarin, aktivt kol'
WHERE slug = 'white-whale-sauces-gnarlicky-heat-level-6';

-- Sweet Heat Hot Honey (NL)
UPDATE public.products SET 
  description_sv = 'Stark Honung – ORIGINALET. Ingredienser ; Honung 90%, 10% chili. Härligt beroendeframkallande, sött och starkt. Producerad i Amsterdam av den finaste blomsterhonungen och en hemlig chiliblandning. Perfekt på pizza, friterad kyckling eller ostar. Hetta 4 Ej lämplig för veganer (innehåller honung)',
  ingredients_sv = 'Honung 90%, chili 10%'
WHERE slug = 'sweet-heat-hot-honey';

-- Chilisaus.be - The 2023 Edition - "ASIAN MANGO"
UPDATE public.products SET 
  description_sv = '2023-utgåvan - ASIAN MANGO. Ingredienser ; Mango, lime, orange paprika, Ghost Peppers, Madame Jeanette-chili, äppelcidervinäger, schalottenlök, apelsinjuice, citrongräs, örter, kryddor, salt. Fräsch, saftig och mycket beroendeframkallande. Perfekt till asiatisk mat, ris, kyckling eller fisk. Hetta 10 Lämplig för veganer',
  ingredients_sv = 'Mango, lime, orange paprika, Ghost Peppers, Madame Jeanette-chili, äppelcidervinäger, schalottenlök, apelsinjuice, citrongräs, örter, kryddor, salt'
WHERE slug = 'chilisaus-be-the-2023-edition-asian-mango-heat-level-10';

-- Chilisaus.be TRIO
UPDATE public.products SET 
  description_sv = 'TRIO Chilisaus.be - Våra egna 3 såser: Garlic Italian (2020), Chocolate Smoked (2022) och Asian Mango (2023). En smaksresa genom våra årliga kreationer. 100% naturliga ingredienser. Lämplig för veganer.',
  details_sv = 'Innehåller 3 flaskor: Garlic Italian (Hetta 8), Chocolate Smoked (Hetta 10), Asian Mango (Hetta 10).'
WHERE slug = 'chilisaus-be-trio-all-3-sauces-2020-2022-2023';

-- Happy Hatter Hot Sauce - SHAKIRA
UPDATE public.products SET 
  description_sv = 'Happy Hatter Hot Sauce – SHAKIRA. Ingredienser ; Shakira-chili, Serrano-chili, äppelcidervinäger, rörsocker, lök, vitlök, limesaft, salt, ingefära, olivolja. En lätt, fräsch och syrlig grön sås med Shakira-chilin av arabiskt ursprung. Hetta 3 Lämplig för veganer',
  ingredients_sv = 'Shakira-chili, Serrano-chili, äppelcidervinäger, rörsocker, lök, vitlök, limesaft, salt, ingefära, olivolja'
WHERE slug = 'happy-hatter-hot-sauce-shakira-heat-level-3';

-- Happy Hatter Hot Sauce - PICKLE PUMPKIN PIRATE
UPDATE public.products SET 
  description_sv = 'Happy Hatter – PICKLE PUMPKIN PIRATE. Ingredienser ; Pumpa, saltgurka, Aji Amarillo-chili, Trinidad Scorpion, lök, vinäger, rörsocker, kryddad rom, vitlök, lime, salt, örter, olivolja, senap. En smakrik sås för äkta pirater med en touch av rom. Hetta 8 Lämplig för veganer',
  ingredients_sv = 'Pumpa, saltgurka, Aji Amarillo-chili, Trinidad Scorpion, lök, vinäger, rörsocker, kryddad rom, vitlök, lime, salt, örter, olivolja, senap'
WHERE slug = 'happy-hatter-hot-sauce-pickle-pumpkin-pirate-heat-level-7';

-- Happy Hatter Hot Sauce - THE WHOLE FAMILY
UPDATE public.products SET 
  description_sv = 'Hela Happy Hatter-familjen - Set med 6 såser à 100ml. Från hetta 3 till 10. Innehåller: Original, Smoked, Bombay, Shakira, Pickle Pumpkin Pirate och Chocolate Smoked. En idealisk present för att utforska hela sortimentet.',
  details_sv = 'Innehåller 6x 100ml flaskor med olika hettagrupper.'
WHERE slug = 'happy-hatter-the-whole-family-x6-sauces';

-- DOOMSDAY - 1.6 Million Scoville PURE Capsaicin
UPDATE public.products SET 
  description_sv = 'DOOMSDAY - Ren Capsaicin 1,6 milj. SHU - 30ml. Ingredienser ; Chiliextrakt med 1,6 miljoner Scoville-enheter. Får endast användas som tillsats i mat eller dryck. En omedelbar och långvarig hetta. Varning, extremt kraftfull produkt!',
  ingredients_sv = 'Chiliextrakt med 1,6 milj. SHU'
WHERE slug = 'doomsday-1-6million-scoville-pure-capsaicin-heat-level-15-30ml-dropper';

-- OBLIVION - 500,000 Scoville PURE Capsaicin
UPDATE public.products SET 
  description_sv = 'OBLIVION - Ren Capsaicin 500 000 SHU - 30ml. Helt genomskinligt extrakt, perfekt för att hetta upp rätter utan att ändra deras färg eller ursprungliga smak. Använd med försiktighet.',
  ingredients_sv = 'Chiliextrakt med 500 000 SHU'
WHERE slug = 'oblivion-500000-scoville-pure-capsaicin-heat-level-12-30ml-dropper-bottle';

-- El Jefe - PICANTE
UPDATE public.products SET 
  description_sv = 'El Jefe - PICANTE. Ingredienser ; Tomater, chilifrukter, vitlök, citronjuice, solrosolja, havssalt. En salsa i mexikansk stil med rökta chilifrukter och rostad vitlök. Djupa smaker och rik textur. Hetta 6 Lämplig för veganer',
  ingredients_sv = 'Tomater, chilifrukter, vitlök, citronjuice, solrosolja, havssalt'
WHERE slug = 'el-jefe-picante-mexican-hot-sauce-heat-level-6';

-- Satan's Spawn Gummy Bears
UPDATE public.products SET 
  description_sv = 'Satan''s Spawn Gummibjörnar - 125g. Dessa små björnar har en mörk sida: de är infuserade med stark habanero-chili. Utsökta och fruktiga med en rejäl bränna. Ej lämplig för veganer.',
  ingredients_sv = 'Glukossirap, socker, gelatin (svin), citronsyra, aromer, habaneropulver (0,3%), fruktjuicekoncentrat'
WHERE slug = 'satans-spawn-gummy-bears-125g';

-- Lord Reaper (UK) - Carolina Reaper Hot Sauce
UPDATE public.products SET 
  description_sv = 'Lord Reaper - Fermenterad Carolina Reaper-sås 100ml. Ingredienser ; Vatten, rapsolja, Carolina Reaper (20%), vinäger, sojasås, apelsin, rörsocker, kryddor, salt, ingefära, vitlök, citron. Tjock, klibbig och superstark. Hetta 10 Lämplig för veganer',
  ingredients_sv = 'Vatten, rapsolja, Carolina Reaper (20%), vinäger, sojasås, apelsin, rörsocker, kryddor, salt, ingefära, vitlök, citron'
WHERE slug = 'lord-reaper-carolina-reaper-hot-sauce-heat-level-10';

-- Johnny Scoville - Tube Of Terror Challenge V1.0 Peanuts
UPDATE public.products SET 
  description_sv = 'TUBE OF TERROR CHALLENGE V1.0. Jordnötter täckta med världens starkaste chilifrukter: Carolina Reaper, Trinidad Scorpion, 7 Pot Brain Strain, Duglah och Ghost, plus rena capsaicinkristaller på 13M SHU. Lycka till!',
  ingredients_sv = 'Jordnötter, Carolina Reaper, Trinidad Scorpion, 7 Pot Brain Strain, Duglah, Ghost Peppers, rena capsaicinkristaller'
WHERE slug = 'johnny-scoville-tube-of-terror-challenge-v1-0-peanuts-heat-level-off-the-scale';

-- The Level 20, Shit That's Hot
UPDATE public.products SET 
  description_sv = 'LEVEL 20 - Shit that''s Hot! Superstark sås. Ingredienser ; Tomat, äppelcidervinäger, vitlök, chipotle, habanero lemon, lök, limesaft, agavesirap, ren capsaicin 9 milj. SHU, örter, kryddor, salt. Perfekt balans mellan smak och extrem hetta. Hetta 20 Lämplig för veganer',
  ingredients_sv = 'Tomat, äppelcidervinäger, vitlök, chipotle, habanero lemon, lök, limesaft, agavesirap, ren capsaicin 9M SHU, örter, kryddor, salt'
WHERE slug = 'level-20-extreme-heat-sauce';

-- Chipotle Adobo Seasoning
UPDATE public.products SET 
  description_sv = 'Chipotle Adobo Krydda - 65g. Ingredienser: Spiskummin, paprika, vitlök, lök, chipotle, oregano, peppar, tomat, salt. Inspirerad av traditionell mexikansk matlagning. Jordig, rökig och fyllig. Hetta 5 Lämplig för veganer.',
  ingredients_sv = 'Spiskummin, paprika, vitlök, lök, chipotle, oregano, peppar, tomat, salt'
WHERE slug = 'chipotle-adobo-heat-level-5-65g';

-- Piri Piri & Co, PORTUGAL - Scorpion Chili Oil
UPDATE public.products SET 
  description_sv = 'Scorpion Chiliolja - Portugal. Ingredienser: Solrosolja, Trinidad Scorpion, Ghost Pepper, Habanero, Malagueta-chili, citron, salt. Chilifrukternas smak lyser igenom i denna silkeslena olja. Hetta 8 Lämplig för veganer.',
  ingredients_sv = 'Solrosolja, Trinidad Scorpion, Ghost Pepper, Habanero, Malagueta-chili, citron, salt'
WHERE slug = 'piri-piri-co-portugal-scorpion-chili-oil-heat-level-8-100ml';
