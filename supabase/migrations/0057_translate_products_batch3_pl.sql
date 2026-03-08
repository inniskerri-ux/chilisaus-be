-- Migration: Translate products batch 3 (Polish)

-- Chilisaus.be - The 2022 Edition "CHOCOLATE SMOKED"
UPDATE public.products SET 
  description_pl = 'Chilisaus.be - Edycja 2022 - CHOCOLATE SMOKED (bez dodatku cukru). Składniki ; Pieczona papryka, ocet z czerwonego wina, Carolina Reaper, wędzone Chipotle, czerwona cebula, pieczony czosnek, limonka, surowe kakao, imbir, oliwa z oliwek, sól, zioła prowansalskie. Prawdziwa eksplozja owocowych i dymnych smaków z aksamitnym czekoladowym finiszem. Poziom ostrości 10 Odpowiedni dla wegan',
  ingredients_pl = 'Pieczona papryka, ocet z czerwonego wina, Carolina Reaper, wędzone Chipotle, czerwona cebula, pieczony czosnek, limonka, surowe kakao, imbir, oliwa z oliwek, sól, zioła prowansalskie'
WHERE slug = 'the-2022-edition-smoked-heat-level-10';

-- Venus - Carolina Reaper Mayonnaise
UPDATE public.products SET 
  description_pl = 'Majonez Carolina Reaper - 180g. Składniki ; Olej rzepakowy, pasteryzowane żółtko jaja od kur z wolnego wybiegu, musztarda Dijon, purée z Carolina Reaper, ocet jabłkowy, sok z cytryny, cukier, skrobia ziemniaczana, sól, pieprz. Kremowy, gęsty i pysznie ostry. Zastąp swój zwykły majonez tą wersją z Reaperem, aby dodać charakteru każdemu daniu. Poziom ostrości 9 Nieodpowiedni dla wegan',
  ingredients_pl = 'Olej rzepakowy, pasteryzowane żółtko jaja, musztarda Dijon, purée z Carolina Reaper, ocet jabłkowy, sok z cytryny, cukier, skrobia ziemniaczana, sól, pieprz'
WHERE slug = 'venus-carolina-reaper-mayonnaise';

-- Johnny Scoville - Tube of Terror Challenge V2.0
UPDATE public.products SET 
  description_pl = 'WYZWANIE TUBE OF TERROR - Wersja 2.0. Składniki ; Kukurydza, olej kukurydziany, papryczki (Carolina Reaper, Moruga Scorpion, 7-Pot Primo, 7-Pot Douglah, Ghost), sól morska, przyprawy. Dziko ostre! Prażone ziarna kukurydzy w posypce z najostrzejszych papryczek świata. Podejmiesz wyzwanie?',
  ingredients_pl = 'Kukurydza, olej kukurydziany, papryczki (Carolina Reaper, Moruga Scorpion, 7-Pot Primo, 7-Pot Douglah, Ghost), sól morska, przyprawy'
WHERE slug = 'johnny-scoville-tube-of-terror-challenge-v2-0-heat-level-off-the-scale';

-- Trinidad Scorpion Powder 10g
UPDATE public.products SET 
  description_pl = 'Proszek Trinidad Scorpion 10g. 1,2 mln SHU. 2. najostrzejsza papryczka świata. Suszona i zmielona na drobny proszek. Idealna do nadawania potrawom super mocnej, narastającej ostrości. Używać z rozwagą.',
  ingredients_pl = 'Papryczki Trinidad Scorpion'
WHERE slug = 'trinidad-scorpion-powder-10g-1-2-million-scoville-heat-units';

-- White Whale Sauces - "Gnarlicky"
UPDATE public.products SET 
  description_pl = 'Gnarlicky Składniki ; Czosnek, papryczki habanero, cebula, sok z limonki, ocet, oliwa z oliwek, sól, gorczyca, tymianek, rozmaryn, węgiel aktywny. Niesamowita ilość konfitowanego czosnku i fermentowanego czarnego czosnku stanowi bazę tego sosu. Uzależniający dla fanów czosnku. Poziom ostrości 6 Odpowiedni dla wegan',
  ingredients_pl = 'Czosnek, papryczki habanero, cebula, sok z limonki, ocet, oliwa z oliwek, sól, gorczyca, tymianek, rozmaryn, węgiel aktywny'
WHERE slug = 'white-whale-sauces-gnarlicky-heat-level-6';

-- Sweet Heat Hot Honey (NL)
UPDATE public.products SET 
  description_pl = 'Ostry Miód – ORYGINALNY. Składniki ; Miód 90%, 10% papryczek. Pysznie uzależniający, słodki i ostry. Produkowany w Amsterdamie z najlepszego miodu kwiatowego i tajnej mieszanki papryczek. Idealny do pizzy, pieczonego kurczaka lub serów. Poziom ostrości 4 Nieodpowiedni dla wegan (zawiera miód)',
  ingredients_pl = 'Miód 90%, papryczki 10%'
WHERE slug = 'sweet-heat-hot-honey';

-- Chilisaus.be - The 2023 Edition - "ASIAN MANGO"
UPDATE public.products SET 
  description_pl = 'Edycja 2023 - ASIAN MANGO. Składniki ; Mango, limonka, pomarańczowa papryka, papryczki Ghost, papryczki Madame Jeanette, ocet jabłkowy, szalotka, sok pomarańczowy, trawa cytrynowa, zioła, przyprawy, sól. Świeży, soczysty i bardzo uzależniający. Idealny do kuchni azjatyckiej, ryżu, kurczaka lub ryb. Poziom ostrości 10 Odpowiedni dla wegan',
  ingredients_pl = 'Mango, limonka, pomarańczowa papryka, papryczki Ghost, papryczki Madame Jeanette, ocet jabłkowy, szalotka, sok pomarańczowy, trawa cytrynowa, zioła, przyprawy, sól'
WHERE slug = 'chilisaus-be-the-2023-edition-asian-mango-heat-level-10';

-- Chilisaus.be TRIO
UPDATE public.products SET 
  description_pl = 'TRIO Chilisaus.be - Nasze 3 własne sosy: Garlic Italian (2020), Chocolate Smoked (2022) oraz Asian Mango (2023). Podróż smakowa przez nasze coroczne kreacje. 100% naturalnych składników. Odpowiedni dla wegan.',
  details_pl = 'Zawiera 3 butelki: Garlic Italian (Moc 8), Chocolate Smoked (Moc 10), Asian Mango (Moc 10).'
WHERE slug = 'chilisaus-be-trio-all-3-sauces-2020-2022-2023';

-- Happy Hatter Hot Sauce - SHAKIRA
UPDATE public.products SET 
  description_pl = 'Happy Hatter Hot Sauce – SHAKIRA. Składniki ; Papryczki Shakira, papryczki Serrano, ocet jabłkowy, cukier trzcinowy, cebula, czosnek, sok z limonki, sól, imbir, oliwa z oliwek. Lekki, świeży i cytrusowy zielony sos z papryczką Shakira pochodzenia arabskiego. Poziom ostrości 3 Odpowiedni dla wegan',
  ingredients_pl = 'Papryczki Shakira, papryczki Serrano, ocet jabłkowy, cukier trzcinowy, cebula, czosnek, sok z limonki, sól, imbir, oliwa z oliwek'
WHERE slug = 'happy-hatter-hot-sauce-shakira-heat-level-3';

-- Happy Hatter Hot Sauce - PICKLE PUMPKIN PIRATE
UPDATE public.products SET 
  description_pl = 'Happy Hatter – PICKLE PUMPKIN PIRATE. Składniki ; Dynia, korniszony, papryczki Aji Amarillo, Trinidad Scorpion, cebula, ocet, cukier trzcinowy, przyprawiony rum, czosnek, limonka, sól, zioła, oliwa z oliwek, gorczyca. Treściwy sos dla prawdziwych piratów z nutą rumu. Poziom ostrości 8 Odpowiedni dla wegan',
  ingredients_pl = 'Dynia, korniszony, papryczki Aji Amarillo, Trinidad Scorpion, cebula, ocet, cukier trzcinowy, przyprawiony rum, czosnek, limonka, sól, zioła, oliwa z oliwek, gorczyca'
WHERE slug = 'happy-hatter-hot-sauce-pickle-pumpkin-pirate-heat-level-7';

-- Happy Hatter Hot Sauce - THE WHOLE FAMILY
UPDATE public.products SET 
  description_pl = 'Cała Rodzina Happy Hatter - Zestaw 6 sosów 100ml. Od poziomu ostrości 3 do 10. Zawiera: Original, Smoked, Bombay, Shakira, Pickle Pumpkin Pirate oraz Chocolate Smoked. Idealny prezent do poznania całej gamy.',
  details_pl = 'Zawiera 6 butelek 100ml o różnym stopniu ostrości.'
WHERE slug = 'happy-hatter-the-whole-family-x6-sauces';

-- DOOMSDAY - 1.6 Million Scoville PURE Capsaicin
UPDATE public.products SET 
  description_pl = 'DOOMSDAY - Czysta Kapsaicyna 1,6 mln SHU - 30ml. Składniki ; Ekstrakt z chili o mocy 1,6 mln jednostek Scoville. Stosować wyłącznie jako dodatek do żywności lub napojów. Natychmiastowe i trwałe pieczenie. Uwaga, produkt o ekstremalnej mocy!',
  ingredients_pl = 'Ekstrakt chili o mocy 1,6 mln SHU'
WHERE slug = 'doomsday-1-6million-scoville-pure-capsaicin-heat-level-15-30ml-dropper';

-- OBLIVION - 500,000 Scoville PURE Capsaicin
UPDATE public.products SET 
  description_pl = 'OBLIVION - Czysta Kapsaicyna 500 000 SHU - 30ml. Całkowicie przezroczysty ekstrakt, idealny do zaostrzania potraw bez zmiany ich koloru lub oryginalnego smaku. Używać z rozwagą.',
  ingredients_pl = 'Ekstrakt chili o mocy 500 000 SHU'
WHERE slug = 'oblivion-500000-scoville-pure-capsaicin-heat-level-12-30ml-dropper-bottle';

-- El Jefe - PICANTE
UPDATE public.products SET 
  description_pl = 'El Jefe - PICANTE. Składniki ; Pomidory, papryczki chili, czosnek, sok z cytryny, olej słonecznikowy, sól morska. Salsa w stylu meksykańskim z wędzonymi papryczkami i pieczonym czosnkiem. Głębokie smaki i bogata tekstura. Poziom ostrości 6 Odpowiedni dla wegan',
  ingredients_pl = 'Pomidory, papryczki chili, czosnek, sok z cytryny, olej słonecznikowy, sól morska'
WHERE slug = 'el-jefe-picante-mexican-hot-sauce-heat-level-6';

-- Satan's Spawn Gummy Bears
UPDATE public.products SET 
  description_pl = 'Żelki Satan''s Spawn - 125g. Te małe misie mają mroczną stronę: są nasączone ostrymi papryczkami Habanero. Pyszne i owocowe z konkretnym pieczeniem. Nieodpowiednie dla wegan.',
  ingredients_pl = 'Syrop glukozowy, cukier, żelatyna (wieprzowa), kwas cytrynowy, aromaty, proszek habanero (0,3%), koncentraty soków owocowych'
WHERE slug = 'satans-spawn-gummy-bears-125g';

-- Lord Reaper (UK) - Carolina Reaper Hot Sauce
UPDATE public.products SET 
  description_pl = 'Lord Reaper - Sos z fermentowanej Carolina Reaper 100ml. Składniki ; Woda, olej rzepakowy, Carolina Reaper (20%), ocet, sos sojowy, pomarańcza, cukier trzcinowy, przyprawy, sól, imbir, czosnek, cytryna. Gęsty, lepki i super ostry. Poziom ostrości 10 Odpowiedni dla wegan',
  ingredients_pl = 'Woda, olej rzepakowy, Carolina Reaper (20%), ocet, sos sojowy, pomarańcza, cukier trzcinowy, przyprawy, sól, imbir, czosnek, cytryna'
WHERE slug = 'lord-reaper-carolina-reaper-hot-sauce-heat-level-10';

-- Johnny Scoville - Tube Of Terror Challenge V1.0 Peanuts
UPDATE public.products SET 
  description_pl = 'WYZWANIE TUBE OF TERROR V1.0. Orzeszki ziemne otoczone najostrzejszymi papryczkami świata: Carolina Reaper, Trinidad Scorpion, 7 Pot Brain Strain, Duglah oraz Ghost, plus kryształki czystej kapsaicyny 13M SHU. Powodzenia!',
  ingredients_pl = 'Orzeszki ziemne, Carolina Reaper, Trinidad Scorpion, 7 Pot Brain Strain, Duglah, Ghost Peppers, kryształki czystej kapsaicyny'
WHERE slug = 'johnny-scoville-tube-of-terror-challenge-v1-0-peanuts-heat-level-off-the-scale';

-- The Level 20, Shit That's Hot
UPDATE public.products SET 
  description_pl = 'LEVEL 20 - Shit that''s Hot! Super ostry sos. Składniki ; Pomidor, ocet jabłkowy, czosnek, chipotle, habanero lemon, cebula, sok z limonki, syrop z agawy, czysta kapsaicyna 9 mln SHU, zioła, przyprawy, sól. Idealna równowaga między smakiem a ekstremalną ostrością. Poziom ostrości 20 Odpowiedni dla wegan',
  ingredients_pl = 'Pomidor, ocet jabłkowy, czosnek, chipotle, habanero lemon, cebula, sok z limonki, syrop z agawy, czysta kapsaicyna 9M SHU, zioła, przyprawy, sól'
WHERE slug = 'level-20-extreme-heat-sauce';

-- Chipotle Adobo Seasoning
UPDATE public.products SET 
  description_pl = 'Przyprawa Chipotle Adobo - 65g. Składniki: Kumin, papryka, czosnek, cebula, chipotle, oregano, pieprz, pomidor, sól. Zainspirowana tradycyjną kuchnią meksykańską. Ziemista, dymna i bogata. Poziom ostrości 5 Odpowiedni dla wegan.',
  ingredients_pl = 'Kumin, papryka, czosnek, cebula, chipotle, oregano, pieprz, pomidor, sól'
WHERE slug = 'chipotle-adobo-heat-level-5-65g';

-- Piri Piri & Co, PORTUGAL - Scorpion Chili Oil
UPDATE public.products SET 
  description_pl = 'Oliwa Chili Scorpion - Portugalia. Składniki: Olej słonecznikowy, Trinidad Scorpion, Ghost Pepper, Habanero, papryczka Malagueta, cytryna, sól. Smak papryczek dominuje w tej jedwabistej oliwie. Poziom ostrości 8 Odpowiedni dla wegan.',
  ingredients_pl = 'Olej słonecznikowy, Trinidad Scorpion, Ghost Pepper, Habanero, papryczka Malagueta, cytryna, sól'
WHERE slug = 'piri-piri-co-portugal-scorpion-chili-oil-heat-level-8-100ml';
