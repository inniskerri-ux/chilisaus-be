-- Migration: Translate products batch 2 (Polish)

-- Happy Hatter Hot Sauce - SMOKED
UPDATE public.products SET 
  description_pl = 'Happy Hatter Hot Sauce – SMOKED. Składniki ; Owoce leśne, czerwone wino Porto, ocet z czerwonego wina, daktyle, miód kwiatowy, papryczki Ghost, czerwona cebula, szalotka, czosnek, proszek chipotle, wędzona papryka, oliwa z oliwek, sól. Bogaty i dymny sos, słodki i pyszny. Wypełniony papryczkami Ghost, meksykańskim wędzonym Chipotle i soczystymi owocami leśnymi. Dekadencki, pełny i jedwabisty z wspaniałym, trwałym pikantnym finiszem. Idealny do dziczyzny, steków, szarpanej wieprzowiny lub burgerów. Poziom ostrości 7 Nieodpowiedni dla wegan (zawiera miód)',
  ingredients_pl = 'Owoce leśne, czerwone wino Porto, ocet z czerwonego wina, daktyle, miód kwiatowy, papryczki Ghost, czerwona cebula, szalotka, czosnek, proszek chipotle, wędzona papryka, oliwa z oliwek, sól'
WHERE slug = 'smoked-happy-hatter-hot-sauce';

-- Carolina Reaper Powder 10g
UPDATE public.products SET 
  description_pl = 'Proszek Carolina Reaper 10g. 1,8 mln – 2,2 mln SHU. Najostrzejszy proszek chili na świecie. Używać z ekstremalną ostrożnością. Idealny do natychmiastowego dodania ognia do każdej potrawy. Odpowiedni dla wegan.',
  ingredients_pl = 'Papryczki Carolina Reaper'
WHERE slug = 'carolina-reaper-powder-10g';

-- Mexican Habanero Chili Flakes 20g
UPDATE public.products SET 
  description_pl = 'Płatki chili Habanero 100 000 – 350 000 SHU. Idealna równowaga między ostrością a smakiem. Znane ze swojego owocowego aromatu, te płatki dodadzą Twoim posiłkom pysznego pikantnego kopa. Świeże czerwone habanero uprawiane w Meksyku, suszone w piecu i kruszone. Odpowiedni dla wegan.',
  ingredients_pl = 'Suszone papryczki Habanero'
WHERE slug = 'habanero-chili-flakes-15g-100000-350000-scoville-heat-units';

-- Mexican Habanero Dried Pods
UPDATE public.products SET 
  description_pl = 'Suszone Strąki Habanero Meksykańskiego (100 000 - 350 000 SHU). Klasyczna owocowa ostrość z Meksyku. Idealne do sals, marynat i gulaszy. Odpowiedni dla wegan.',
  ingredients_pl = 'Suszone papryczki Habanero'
WHERE slug = 'mexican-habanero-peppers-100000-350000-scoville-heat-units';

-- Naga / Ghost Pepper Dried Pods
UPDATE public.products SET 
  description_pl = 'Suszone Strąki Naga / Ghost Pepper 855 000 – 1 mln SHU. 3. najostrzejsza papryczka świata. Torebka 12 suszonych papryczek Ghost. Smak początkowo dymny i prawie słodki, ostrość uderza po 30 sekundach. Używaj suszonych, skruszonych lub po namoczeniu w gorącej wodzie. Odpowiedni dla wegan.',
  ingredients_pl = 'Suszone papryczki Ghost Pepper (Bhut Jolokia)'
WHERE slug = 'naga-ghost-pepper-855000-1-million-scoville-heat-units';

-- Mexican Smoked Chipotle Flakes
UPDATE public.products SET 
  description_pl = 'Płatki Wędzonego Chipotle Meksykańskiego - 20g (2500 - 8000 SHU). Pyszne płatki wędzonego Jalapeño. Niezbędne w kuchni meksykańskiej dla uzyskania głębokiego, autentycznego smaku BBQ. Odpowiedni dla wegan.',
  ingredients_pl = 'Suszone i wędzone papryczki Jalapeño (Chipotle)'
WHERE slug = 'mexican-smoked-chipotle-powder-40g-2500-8000-scoville-heat-units';

-- Mexican Habanero Powder 30g
UPDATE public.products SET 
  description_pl = 'Proszek Habanero 100 000 – 350 000 SHU. Wykonany z suszonych i drobno zmielonych strąków Habanero. Idealny do potraw meksykańskich lub BBQ. Wymieszaj z majonezem lub jogurtem dla ostrego dipu. Odpowiedni dla wegan.',
  ingredients_pl = 'Proszek z papryczek Habanero'
WHERE slug = 'habanero-powder-40g-100000-350000-scoville-heat-units';

-- 33% Pure Carolina Reaper Sambal
UPDATE public.products SET 
  description_pl = '33% Czysty Sambal Carolina Reaper. Składniki ; Cebula 40%, Carolina Reaper 33%, cukier rafinowany 8%, olej słonecznikowy 7,5%, słodki sos sojowy 7,5%, biały ocet 0,5%, sól, przyprawy. Wyprodukowany przez słynnego Devon Chilli Man z Wielkiej Brytanii. Najpierw pyszny słodki smak dzięki karmelizowanej cebuli, potem jazda bez trzymanki dzięki świeżym Carolina Reaper. Poziom ostrości 12 Odpowiedni dla wegan',
  ingredients_pl = 'Cebula 40%, Carolina Reaper 33%, cukier rafinowany 8%, olej słonecznikowy 7,5%, słodki sos sojowy 7,5%, biały ocet 0,5%, sól, przyprawy'
WHERE slug = '33-carolina-reaper-sambal-heat-level-15';

-- Chilisaus.be - The 2020 Edition - Garlic Italian
UPDATE public.products SET 
  description_pl = 'Garlic Italian (bez dodatku cukru) Idealny do spaghetti. Składniki ; Olej rzepakowy, woda, ocet z białego wina, oliwa z oliwek, czerwone chili, chili Naga (3%), purée z czosnku, sól, przyprawy, zioła. Nasz pierwszy własny sos! Wysokiej jakości składniki, jedwabista oliwa, świeże papryczki Naga Ghost, DUŻO czosnku i włoskie zioła. Prosty i pyszny. Poziom ostrości 8 Odpowiedni dla wegan',
  ingredients_pl = 'Olej rzepakowy, woda, ocet z białego wina, oliwa z oliwek, czerwone chili, chili Naga (3%), purée z czosnku, sól, przyprawy, zioła'
WHERE slug = 'chilisaus-be-the-2020-edition-heat-level-8';

-- Carolina Reaper Flakes 10g
UPDATE public.products SET 
  description_pl = 'Płatki Carolina Reaper 1,8 mln – 2,2 mln SHU. Najostrzejsza papryczka świata, suszona i kruszona w piękne płatki ognia (wraz z nasionami). Szczypta wystarczy, by nadać mocny akcent zupom, curry czy makaronom. Używać z rozwagą. Odpowiedni dla wegan.',
  ingredients_pl = 'Płatki papryczki Carolina Reaper'
WHERE slug = 'carolina-reaper-flakes-10g-1-8-million-2-2-million-scoville-heat-units';

-- Happy Hatter Hot Sauce - BOMBAY
UPDATE public.products SET 
  description_pl = 'Happy Hatter Hot Sauce – BOMBAY. Składniki ; Mango, ananas, żółte chili Habanero, cebula, ocet z białego wina, cukier trzcinowy, banany, czosnek, sok z limonki, oliwa z oliwek, mieszanka przypraw (zawiera seler), sól. Świeży i owocowy sos z kurkumą i azjatyckimi przyprawami. Idealnie zbalansowany z dobrą mocą żółtego Habanero. Idealny do woka lub dań z ryżu. Poziom ostrości 8 Odpowiedni dla wegan',
  ingredients_pl = 'Mango, ananas, żółte chili Habanero, cebula, ocet z białego wina, cukier trzcinowy, banany, czosnek, sok z limonki, oliwa z oliwek, mieszanka przypraw (zawiera seler), sól'
WHERE slug = 'happy-hatter-bombay-produced-in-belgium-heat-level-7';

-- Naga / Ghost Pepper Powder 10g
UPDATE public.products SET 
  description_pl = 'Proszek Naga / Ghost 855 000 - 1 mln SHU. Prosto z Nagaland w Indiach. Smak początkowo dymny i niemal słodki, ale intensywna ostrość uderza po 30-40 sekundach. Używać z troską. Odpowiedni dla wegan.',
  ingredients_pl = 'Proszek z papryczki Ghost Pepper'
WHERE slug = 'naga-ghost-powder-10g-850000-1-million-scoville-heat-units';

-- Naga / Ghost Pepper Flakes 10g
UPDATE public.products SET 
  description_pl = 'Płatki Naga / Ghost 855 000 - 1 mln SHU. Prosto z Nagaland, te płatki są świetną alternatywą dla świeżych papryczek, aby nadać Twoim potrawom ekstremalną moc chili. Odpowiedni dla wegan.',
  ingredients_pl = 'Płatki papryczki Ghost Pepper'
WHERE slug = 'naga-ghost-pepper-flakes-10g-855000-1-million-scoville-heat-units';

-- Happy Hatter Gift Box
UPDATE public.products SET 
  description_pl = 'Rodzina Happy Hatter – 3 Sosy – Zapakowane w ręcznie robione pudełko prezentowe. Zawiera ORIGINAL (Moc 6), SMOKED (Moc 7) i BOMBAY (Moc 7). 100% jakość od belgijskiego producenta Wima Daansa.',
  details_pl = 'Zawiera 3 butelki 100ml: Original, Smoked i Bombay.'
WHERE slug = 'happy-hatter-trio-gift-boxed';

-- The Carolina Reaper Essentials Kit
UPDATE public.products SET 
  description_pl = 'Niezbędnik Carolina Reaper: Strąki, Proszek, Sambal i Sos. Wszystko, czego potrzebujesz, aby doświadczyć najostrzejszej papryczki świata w 4 różnych formach. Maksymalna moc gwarantowana! Odpowiedni dla wegan.',
  details_pl = 'W zestawie: 1x Sos, 1x Sambal, 1x Proszek, 1x Suszone strąki.'
WHERE slug = 'the-ultimate-reaper-pack';

-- White Whale Sauces - Limonhello
UPDATE public.products SET 
  description_pl = '"Limon-hello" Używa tylko najlepszych cytryn "Sfusato" z włoskiego wybrzeża Amalfi. Składniki ; Papryczki Madame Jeanette, cytryny Sfusato, marchew, cebula, żółta papryka, czosnek, imbir, ocet jabłkowy, kurkuma, sól. Świeży i rześki sos, bogaty w witaminę C. Fantastyczny do ryb, tacos lub w koktajlu. Bezglutenowy, bez dodatku cukru. Poziom ostrości 8 Odpowiedni dla wegan',
  ingredients_pl = 'Papryczki Madame Jeanette, cytryny Sfusato, marchew, cebula, żółta papryka, czosnek, imbir, ocet jabłkowy, kurkuma, sól'
WHERE slug = 'white-whale-sauces-limonhello-hot-sauce-heat-level-8';

-- "The Ripper"
UPDATE public.products SET 
  description_pl = 'The Ripper (bez dodatku cukru). Składniki: papryczka Scotch Bonnet, czerwona papryka, papryczka Carolina Reaper, ocet jabłkowy, sól, chili w proszku, ekstrakt z chili. Niebezpiecznie pyszne połączenie owocowego Scotch Bonnet i najostrzejszej na świecie Carolina Reaper. Maksymalne pieczenie! Poziom ostrości 12 Odpowiedni dla wegan',
  ingredients_pl = 'Papryczka Scotch Bonnet, czerwona papryka, papryczka Carolina Reaper, ocet jabłkowy, sól, chili w proszku, ekstrakt z chili'
WHERE slug = 'the-ripper-carolina-reaper';

-- Crazy Bastard - FULL Collection
UPDATE public.products SET 
  description_pl = 'Pełna kolekcja Crazy Bastard - 7 sosów w pudełku prezentowym. Ręcznie robione w Berlinie z pieczonych papryczek chili i świeżych, naturalnych składników. Bez rafinowanego cukru i ekstraktów. Zawiera wszystkie warianty od Jalapeño po Carolina Reaper.',
  details_pl = 'Zawiera 7 butelek 100ml: Zielony, Różowy, Niebieski, Żółty, Pomarańczowy, Czerwony i Czarny.'
WHERE slug = 'crazy-bastard-full-collection-x7-sauces';

-- Crazy Bastard HOT BOX
UPDATE public.products SET 
  description_pl = 'Crazy Bastard Hot Box - 3 najostrzejsze sosy z kolekcji: Pomarańczowy (Ghost Pepper i Mango), Czerwony (Trinidad Scorpion i Klementynka) oraz Czarny (Carolina Reaper i Borówka). Dla prawdziwych poszukiwaczy wrażeń. Odpowiedni dla wegan.',
  details_pl = 'Zawiera 3 butelki 100ml: Ghost Pepper, Trinidad Scorpion i Carolina Reaper.'
WHERE slug = 'crazy-bastard-hot-box-x3-heat-level-10';

-- RED - Trinidad Scorpion & Clementine
UPDATE public.products SET 
  description_pl = 'RED - Sos Trinidad Scorpion i Klementynka. Składniki: Papryka, jabłko, cebula, ocet z białego wina, klementynki (10%), papryczka Trinidad Scorpion (6%), czosnek, limonka, oliwa z oliwek, sól morska. Drugi najostrzejszy sos z kolekcji. Świetny do grillowanych ryb lub krewetek. Poziom ostrości 10 Odpowiedni dla wegan',
  ingredients_pl = 'Papryka, jabłko, cebula, ocet z białego wina, klementynki (10%), papryczka Trinidad Scorpion (6%), czosnek, limonka, oliwa z oliwek, sól morska'
WHERE slug = 'red-trinidad-scorpion-clementine-heat-level-10';
