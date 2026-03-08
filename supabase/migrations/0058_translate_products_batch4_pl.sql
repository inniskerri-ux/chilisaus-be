-- Migration: Translate products batch 4 (Polish)

-- Blazing Foods - Death Nut Challenge 3.0
UPDATE public.products SET 
  description_pl = 'Zupełnie nowe wyzwanie Death Nut Challenge - wersja 3.0. Składniki ; Orzeszki ziemne Jumbo XL Virginia, czysty cukier trzcinowy, papryczki Carolina Reaper, 7-Pot Primo, papryczki (Datil, Scotch Bonnet, Ghost, Brain Strain, Duglah, Trinidad Moruga Scorpion), kryształki czystej kapsaicyny 16M SHU, sól morska, przyprawy. Pięć poziomów orzeszków o narastającej ostrości. Czy odważysz się dojść do poziomu 5? Poziom ostrości: POZA SKALĄ.',
  ingredients_pl = 'Orzeszki ziemne Jumbo XL, cukier, Carolina Reaper, 7-Pot Primo, Ghost Pepper, Scorpion, kryształki czystej kapsaicyny 16M SHU, sól morska, przyprawy'
WHERE slug = 'blazing-foods-death-nut-challenge-3-0-heat-level-off-the-scale';

-- 7Pot Habanero Pineapple
UPDATE public.products SET 
  description_pl = 'Seria limitowana Chilisaus.be. Pyszne połączenie papryczek 7Pot, Habanero i ananasa. Powstałe we współpracy z Uncle Paul. Poziom ostrości 6.',
  ingredients_pl = 'Papryczki 7Pot, Habanero, Ananas, ocet, sól'
WHERE slug = 'chilisaus-be-limited-edition-range-7pot-habanero-pineapple-heat-level-6';

-- Hurtberry Ghost Sriracha
UPDATE public.products SET 
  description_pl = 'Seria limitowana Chilisaus.be. Intensywna Sriracha z papryczką Ghost, stworzona we współpracy z Uncle Paul. Dla tych, którzy szukają solidnego uderzenia. Poziom ostrości 10.',
  ingredients_pl = 'Papryczki Ghost, czosnek, ocet, cukier, sól'
WHERE slug = 'chilisaus-be-limited-edition-range-hurtberry-ghost-sriracha-heat-level-10';

-- Scotch Bonnet Flakes - 30g
UPDATE public.products SET 
  description_pl = 'Płatki Scotch Bonnet (100 000 – 350 000 SHU). Papryczka Scotch Bonnet to rodzina Habanero, bardzo popularna w kuchni karaibskiej. Owocowy, jasny smak z lekką słodyczą. Idealna do Jerk Chicken. Odpowiedni dla wegan.',
  ingredients_pl = 'Suszone płatki papryczki Scotch Bonnet'
WHERE slug = 'scotch-bonnet-flakes-30g-100000-350000-scoville-heat-units';

-- Scotch Bonnet Pods 20g
UPDATE public.products SET 
  description_pl = 'Suszone Strąki Scotch Bonnet (100 000 – 350 000 SHU). Całe suszone papryczki Scotch Bonnet. Używaj w całości, zmielone lub po namoczeniu w gorącej wodzie. Nadaje potrawom autentyczny smak Karaibów i Afryki Zachodniej. Odpowiedni dla wegan.',
  ingredients_pl = 'Suszone papryczki Scotch Bonnet'
WHERE slug = 'scotch-bonnet-pods-20g-100000-350000-scoville-heat-units';

-- Chilisaus.be - The 2024 Edition - Kokos Kerrie
UPDATE public.products SET 
  description_pl = 'Chilisaus.be – Edycja 2024 – Pasta kokosowa curry z twistem. Składniki ; Papryczki (Birds Eye, Madame Jeanette, Lombok), pomidor, mleczko kokosowe, cebula, ocet kokosowy, woda, orzeszki ziemne, czosnek, kolendra, cukier kokosowy, imbir, zioła i przyprawy (gorczyca), sól. Współpraca z White Whale Sauces. Poziom ostrości 8.',
  ingredients_pl = 'Papryczki (Birds Eye, Madame Jeanette, Lombok), pomidor, mleczko kokosowe, cebula, ocet kokosowy, woda, orzeszki ziemne, czosnek, kolendra, cukier kokosowy, imbir, zioła (gorczyca), sól'
WHERE slug = 'the-2024-edition-kokos-kerrie-coconut-curry-heat-level-8';

-- Culley's (NZ) World's Hottest Ramen Noodles - V2.0
UPDATE public.products SET 
  description_pl = 'Najostrzejszy Ramen na świecie. Składniki ; Makaron (mąka pszenna, woda, jaja), Ramen (papryczka Naga Jolokia, Carolina Reaper, pasta miso, sos sojowy, olej sezamowy, zioła, przyprawy). Szacowana moc to ponad 1 milion jednostek Scoville. Powodzenia!',
  ingredients_pl = 'Makaron (Pszenica, Jaja), Naga Jolokia, Carolina Reaper, Pasta miso, Olej sezamowy, Przyprawy'
WHERE slug = 'culleys-worlds-hottest-ramen-noodles-v2-0-heat-level-off-the-scale';

-- Germano's (PHL) - Crispy Garlic and Chili Olive Oil
UPDATE public.products SET 
  description_pl = 'Oliwa z oliwek z chrupiącym czosnkiem i chili crunch. Składniki ; Papryczki, czosnek, oliwa z oliwek, przyprawy, cukier, sól jodowana. Wyprodukowana na Filipinach, ta oliwa to prawdziwe uzależnienie. Chrupiący czosnek, świetna ostrość i głębokie, prażone smaki. Złoty medalista Clifton National Chilli Awards 2023. Poziom ostrości 7 Odpowiedni dla wegan.',
  ingredients_pl = 'Papryczki, czosnek, oliwa z oliwek, przyprawy, cukier, sól jodowana'
WHERE slug = 'germanos-crispy-garlic-and-chili-crunch-olive-oil-heat-level-7';

-- Pepper X - Sizzling Steak Seasoning
UPDATE public.products SET 
  description_pl = 'Najnowsza najostrzejsza papryczka świata: PEPPER X (2,693 mln SHU). SIZZLING STEAK Składniki: Sól morska, przyprawy (w tym czarny pieprz i czerwona papryka), czosnek, cebula, olej słonecznikowy, Pepper X. Nadaj swoim stekom, tofu lub warzywom ekstremalną moc. Stworzona przez Eda Currie. Odpowiedni dla wegan.',
  ingredients_pl = 'Sól morska, czarny pieprz, czerwona papryka, czosnek, cebula, olej słonecznikowy, Pepper X'
WHERE slug = 'smokin-eds-pepper-x-sizzling-steak-seasoning';

-- Pepper X - Spicy Italian Seasoning
UPDATE public.products SET 
  description_pl = 'Ostra włoska przyprawa z Pepper X. Podkręć pizzę, makaron lub marynaty mieszanką zawierającą słynną Pepper X. Stworzona przez Eda Currie, twórcę Carolina Reaper. Odpowiedni dla wegan.',
  ingredients_pl = 'Włoskie zioła, proszek Pepper X'
WHERE slug = 'smokin-eds-pepper-x-spicy-italian-seasoning';

-- Pepper X - Spicy Garlicious Seasoning
UPDATE public.products SET 
  description_pl = 'Ostra czosnkowa przyprawa z Pepper X. Czosnkowa mieszanka przypraw z potężną mocą Pepper X. Idealna do zamiany każdego posiłku w ostre wyzwanie. Odpowiedni dla wegan.',
  ingredients_pl = 'Sól, czosnek, proszek chili, Pepper X'
WHERE slug = 'smokin-eds-pepper-x-spicy-garlicious-seasoning';

-- Cajun Spice Seasoning
UPDATE public.products SET 
  description_pl = 'Mieszanka przypraw Cajun (Moc 4). Klasyczna mieszanka w stylu Luizjany, idealna do ryb, kurczaka lub warzyw. Nadaje łagodną ostrość i głęboki smak. Odpowiedni dla wegan.',
  ingredients_pl = 'Papryka, czosnek, cebula, czarny pieprz, cayenne, oregano, tymianek'
WHERE slug = 'cajun-spice-seasoning-heat-level-4';

-- Blazin' Inferno Ghost Pepper Seasoning
UPDATE public.products SET 
  description_pl = 'Przyprawa Blazin'' Inferno Ghost Pepper (Poziom ostrości 10). Potężna mieszanka dla szukających natychmiastowego, intensywnego uderzenia gorąca. Idealna do grillowania i marynat. Odpowiedni dla wegan.',
  ingredients_pl = 'Ghost Pepper, sól morska, czosnek, przyprawy'
WHERE slug = 'blazin-inferno-ghost-pepper-seasoning-heat-level-10';

-- Piri Piri & Co, PORTUGAL - FOGO
UPDATE public.products SET 
  description_pl = '"FOGO" (ogień po portugalsku) z Carolina Reaper i Trinidad Moruga Scorpion. Składniki: Carolina Reaper, ananas, woda, ocet jabłkowy, Licor Brutal, zielone mango, papryczki Moruga, cukier Muscovado, sól, mięta, guma ksantanowa. Świeży, żywy i owocowy z zaskakującą nutą mięty, zanim uderzy ekstremalna ostrość. Poziom ostrości 12.',
  ingredients_pl = 'Carolina Reaper, ananas, woda, ocet jabłkowy, Licor Brutal, zielone mango, papryczki Moruga, cukier Muscovado, sól, mięta, guma ksantanowa'
WHERE slug = 'piri-piri-co-portugal-fogo-heat-level-12';

-- El Jefe - Verde
UPDATE public.products SET 
  description_pl = 'Świeża zielona salsa w stylu meksykańskim. Składniki ; Tomatillo, jalapeño, czosnek, sok z cytryny, olej słonecznikowy, cebula w proszku, sól morska. Nasza "salsa śniadaniowa" - lekka, świeża i nieco kwaskowata dzięki tomatillo. Klasyczna Salsa Verde dopracowana przez El Jefe. Poziom ostrości 4. Odpowiedni dla wegan.',
  ingredients_pl = 'Tomatillo, jalapeño, czosnek, sok z cytryny, olej słonecznikowy, cebula w proszku, sól morska'
WHERE slug = 'el-jefe-verde-mexican-salsa-heat-level-4';

-- The Chilli Alchemist (UK) - "Dark Matter" Belgian Chili + Mint Chocolate
UPDATE public.products SET 
  description_pl = '70% belgijska gorzka czekolada z papryczką Ghost, miętą i strzelającym cukrem. Składniki ; Gorzka czekolada (miazga kakaowa 70%, cukier, tłuszcz kakaowy, emulgator - lecytyna SOJOWA, naturalna wanilia), cukier strzelający (2%), proszek Naga chili (0,1%), olejek miętowy. Wyjątkowe doświadczenie. Lekka do średniej ostrości. Odpowiedni dla wegetarian.',
  ingredients_pl = 'Gorzka czekolada (70% kakao), cukier strzelający, proszek Naga chili, olejek miętowy'
WHERE slug = 'the-chilli-alchemist-dark-matter-belgian-chili-chocolate-heat-level-4-5-100g';

-- Hot Headz - Smoked Chilli + Garlic
UPDATE public.products SET 
  description_pl = 'Składniki ; Przecier pomidorowy, woda, ocet jabłkowy, cebula, cukier, nasiona sezamu, przyprawy, chipotle, habanero, papryczka guajillo, wędzony czosnek, sól. Fantastyczny produkt dla miłośników mocnych aromatów dymu i czosnku! Gęsty i pełen smaku. Poziom ostrości 5. Odpowiedni dla wegan.',
  ingredients_pl = 'Przecier pomidorowy, woda, ocet jabłkowy, cebula, cukier, nasiona sezamu, przyprawy, chipotle, habanero, papryczka guajillo, wędzony czosnek, sól'
WHERE slug = 'hot-headz-smoked-chilli-garlic';

-- Singularity Sauce Co (UK) - Buffalo Hot Sauce
UPDATE public.products SET 
  description_pl = 'Sos Buffalo Singularity. Składniki ; Ocet Kombucha, Cayenne mash (papryczka cayenne, sól, kwas octowy), masło roślinne, brązowy cukier, czosnek w proszku, sól, wędzona papryka, guma ksantanowa. Szkocka wersja klasycznego sosu Buffalo. Idealny do skrzydełek. Poziom ostrości 4. Odpowiedni dla wegan.',
  ingredients_pl = 'Ocet Kombucha, papryczka Cayenne, masło roślinne, brązowy cukier, czosnek w proszku, sól, wędzona papryka, guma ksantanowa'
WHERE slug = 'singularity-sauce-co-buffalo-hot-sauce-148ml-heat-level-4';

-- Dave's Insanity Sauce (USA) The Original
UPDATE public.products SET 
  description_pl = 'Oryginalny Dave''s Insanity Sauce - Jak widać w 1. sezonie Hot Ones. Składniki ; Ostre papryczki, woda, przecier pomidorowy, ekstrakt chili, ocet trzcinowy, sól, cebula, czosnek, przyprawy. Jedna kropla wystarczy! Sos, który zapoczątkował rynek ekstremalnie ostrych sosów. Poziom ostrości: BARDZO WYSOKI. Odpowiedni dla wegan.',
  ingredients_pl = 'Papryczki, woda, przecier pomidorowy, ekstrakt chili, ocet trzcinowy, sól, cebula, czosnek, przyprawy'
WHERE slug = 'daves-insanity-sauce-the-original-148ml-hot-as-hell';

-- Dirty Dick's (USA) Caribbean Dreams
UPDATE public.products SET 
  description_pl = 'Dirty Dick''s Caribbean Dreams - Składniki ; Papryczki Habanero, gruszki, brzoskwinie, sok ananasowy, ocet jabłkowy, musztarda, sok jabłkowy, brązowy cukier, miód i świeżo mielone przyprawy. Sos na bazie musztardy w stylu karaibskim. Odważne smaki, idealnie zbalansowane. Poziom ostrości 6 Nieodpowiedni dla wegan (zawiera miód).',
  ingredients_pl = 'Papryczki Habanero, gruszki, brzoskwinie, sok ananasowy, ocet jabłkowy, musztarda, sok jabłkowy, brązowy cukier, miód, przyprawy'
WHERE slug = 'dirty-dicks-caribbean-dreams';
