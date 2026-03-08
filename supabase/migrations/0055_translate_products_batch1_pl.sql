-- Migration: Translate products batch 1 (Polish)

-- Evil One
UPDATE public.products SET 
  description_pl = 'Evil One Składniki ; Czerwona papryka, ocet jabłkowy, papryczka Scotch Bonnet (15%), cebula, miąższ pomarańczy, miąższ i skórka z cytryny, papryczka Naga Ghost (3%), marchew, czosnek, brązowy cukier, ekstrakt z chili (1%), sól morska. Pełen Scotch Bonnet, Naga Ghost i nuty czystej kapsaicyny dla super ostrego, długotrwałego pieczenia, ale bez gorzkiego smaku, który często dają ekstrakty. To super ostry, pyszny sos z nutą cytrusów. Idealny do spaghetti, burgerów, woka, pizzy lub zmieszany z salsą dla świetnego ostrego dipu. Poziom ostrości 10 Odpowiedni dla wegan',
  ingredients_pl = 'Czerwona papryka, ocet jabłkowy, papryczka Scotch Bonnet (15%), cebula, miąższ pomarańczy, miąższ i skórka z cytryny, papryczka Naga Ghost (3%), marchew, czosnek, brązowy cukier, ekstrakt z chili (1%), sól morska'
WHERE slug = 'evil-one';

-- Evil Twin
UPDATE public.products SET 
  description_pl = 'Evil Twin (bez dodatku cukru) Składniki ; Zielona papryka, ocet, papryczka Scotch Bonnet, cebula, jabłko, limonka, papryczka Naga Ghost, marchew, przyprawy, czosnek, ekstrakt z chili (1%), sól. Super ostry sos z papryczkami Scotch Bonnet, Naga Ghost i 1% ekstraktu z chili. Ma świetną moc, piękny i świeży dzięki dodatkowi limonki. Bardzo dobrze zbalansowany sos, który dostarcza trwałej ostrości. Świetny do ostrego spaghetti, jako dodatek do majonezu lub do woka. Poziom ostrości 10 Odpowiedni dla wegan',
  ingredients_pl = 'Zielona papryka, ocet, papryczka Scotch Bonnet, cebula, jabłko, limonka, papryczka Naga Ghost, marchew, przyprawy, czosnek, ekstrakt z chili (1%), sól'
WHERE slug = 'evil-twin';

-- Naga Chilli Sauce
UPDATE public.products SET 
  description_pl = 'Sos z papryczki Naga (Poziom ostrości 10). Potężny sos od Wiltshire Chilli Farm wykorzystujący słynną papryczkę Naga Ghost dla intensywnej, długotrwałej ostrości, która buduje się powoli. Dla doświadczonych miłośników chili. Odpowiedni dla wegan.',
  ingredients_pl = 'Papryczki Naga Ghost, ocet, sól, przyprawy'
WHERE slug = 'naga-chilli-sauce-heat-level-10-140ml';

-- Caribbean Chilli Sauce
UPDATE public.products SET 
  description_pl = 'Karaibski Sos Chili (Poziom ostrości 9). Tropikalna eksplozja ostrości i smaku. Zainspirowany tradycyjnymi sosami z wysp, bogaty w papryczki i słoneczne aromaty. Odpowiedni dla wegan.',
  ingredients_pl = 'Karaibskie papryczki, ocet, przyprawy, sól'
WHERE slug = 'caribbean-chilli-sauce';

-- Tempest Garlic Chili Oil
UPDATE public.products SET 
  description_pl = 'Oliwa Chili z Czosnkiem Tempest 150ml Składniki ; Tłoczony na zimno olej rzepakowy, naturalny ekstrakt z chili, naturalny ekstrakt z czosnku. Zdecydowanie dla miłośników czosnku. Jedwabista, bogata oliwa, która szybko uzależnia. Dodawaj podczas gotowania lub używaj do wykończenia pizzy, makaronu czy woka. Pyszna z pieczonym kurczakiem lub zmieszana z majonezem dla ostrego dipu aioli. Poziom ostrości 5 Odpowiedni dla wegan',
  ingredients_pl = 'Tłoczony na zimno olej rzepakowy, naturalny ekstrakt z chili, naturalny ekstrakt z czosnku'
WHERE slug = 'tempest';

-- Mango Chilli Sauce
UPDATE public.products SET 
  description_pl = 'Sos Chili z Mango (Poziom ostrości 7). Pysznie owocowy sos, w którym słodycz dojrzałych mango idealnie łączy się z ostrym uderzeniem chili. Idealny do kurczaka, sałatek lub jako dip. Odpowiedni dla wegan.',
  ingredients_pl = 'Mango, papryczki chili, ocet, cukier, sól'
WHERE slug = 'mango-chilli-sauce';

-- Sweet Chilli Sauce
UPDATE public.products SET 
  description_pl = 'Słodki Sos Chili (Poziom ostrości 1). Klasyczny łagodny dip, który wszyscy kochają. Idealna równowaga między słodyczą a bardzo lekką nutą ostrości. Doskonały do sajgonek lub jako uniwersalny sos stołowy. Odpowiedni dla wegan.',
  ingredients_pl = 'Papryczki chili, cukier, ocet, czosnek, sól'
WHERE slug = 'sweet-chilli-sauce';

-- Reaper Habanero
UPDATE public.products SET 
  description_pl = 'Reaper Habanero (Poziom ostrości 10). Potężny sos od Wiltshire Chilli Farm łączący ekstremalną ostrość Carolina Reaper z klasycznym smakiem czerwonych papryczek Habanero. Prosty, ale skuteczny. Odpowiedni dla wegan.',
  ingredients_pl = 'Czerwone Habanero, ocet jabłkowy, brązowy cukier, cebula, czerwona papryka, Carolina Reaper, wędzona papryka, czosnek'
WHERE slug = 'reaper-habanero';

-- Garlic Chilli Salt
UPDATE public.products SET 
  description_pl = 'Sól Chili z Czosnkiem (Poziom ostrości 3). Pyszna aromatyczna sól z lekkim kopem chili. Idealna do posypania ziemniaków, warzyw lub mięsa dla natychmiastowego wzmocnienia smaku. Odpowiedni dla wegan.',
  ingredients_pl = 'Sól morska, czosnek, papryczki chili'
WHERE slug = 'garlic-chilli-salt';

-- BLACK - Carolina Reaper & Blueberry
UPDATE public.products SET 
  description_pl = 'BLACK - Sos Carolina Reaper i Borówka. Składniki: Papryka, cebula, ocet z białego wina, jabłka, borówki (10%), papryczka Carolina Reaper (8%), limonka, oliwa z oliwek, sól morska. Niezwykłe, ale fantastyczne połączenie, w którym kwasowość borówki pięknie uzupełnia ekstremalną ostrość Reapera. Poziom ostrości 10 Odpowiedni dla wegan.',
  ingredients_pl = 'Papryka, cebula, ocet z białego wina, jabłka, borówki (10%), papryczka Carolina Reaper (8%), limonka, oliwa z oliwek, sól morska'
WHERE slug = 'black-carolina-reaper-blueberry';

-- BLUE - Scotch Bonnet & Caribbean Spices
UPDATE public.products SET 
  description_pl = 'BLUE - Sos Scotch Bonnet i Przyprawy Karaibskie. Składniki: Papryka, cebula, ocet z białego wina, papryczka Scotch Bonnet (13%), imbir, czosnek, limonka, oliwa z oliwek, seler, sól, mieszanka przypraw. Autentyczny smak Karaibów z charakterystyczną ostrością Scotch Bonnet. Poziom ostrości 5 Odpowiedni dla wegan.',
  ingredients_pl = 'Papryka, cebula, ocet z białego wina, papryczka Scotch Bonnet (13%), imbir, czosnek, limonka, oliwa z oliwek, seler, sól, mieszanka przypraw'
WHERE slug = 'blue-scotch-bonnet-caribbean';

-- PINK - Chipotle and Pineapple
UPDATE public.products SET 
  description_pl = 'PINK - Sos Chipotle i Ananas. Składniki: Cebula, papryka, ananas (17%), ocet z białego wina, czerwona papryczka Jalapeño, limonka, papryczka Chipotle (1,7%), oliwa z oliwek, sól. Pyszna równowaga między słodyczą a dymem. Poziom ostrości 4 Odpowiedni dla wegan.',
  ingredients_pl = 'Cebula, papryka, ananas (17%), ocet z białego wina, czerwona papryczka Jalapeño, limonka, papryczka Chipotle (1,7%), oliwa z oliwek, sól'
WHERE slug = 'pink-chipotle-and-pineapple-hot-sauce';

-- Carolina Reaper Dried Pods
UPDATE public.products SET 
  description_pl = 'Suszone Strąki Carolina Reaper (1,8 mln - 2,2 mln SHU). Najostrzejsza papryczka świata w formie suszonej. Dla odważnych, którzy chcą tworzyć własne sosy lub ekstremalnie zaostrzyć swoje potrawy. Odpowiedni dla wegan.',
  ingredients_pl = 'Suszone papryczki Carolina Reaper'
WHERE slug = 'carolina-reaper-dried-peppers';

-- "God Slayer" EXTREME
UPDATE public.products SET 
  description_pl = 'Sos "God Slayer" EXTREME (Poziom ostrości 15). Jeden z najbardziej intensywnych sosów w naszej ofercie. Tylko dla bardzo doświadczonych miłośników ostrości. Odpowiedni dla wegan.',
  ingredients_pl = 'Carolina Reaper, ekstrakty chili, ocet, sól'
WHERE slug = 'god-slayer';

-- ORANGE - Ghost Pepper & Mango
UPDATE public.products SET 
  description_pl = 'ORANGE - Sos Ghost Pepper i Mango. Składniki: Papryka, cebula, ocet z białego wina, mango (12%), jabłka, papryczka Ghost Pepper Bhut Jolokia (7%), limonka, oliwa z oliwek, kumin, sól morska. Pięknie zbalansowany sos, w którym ostrość Ghost Pepper buduje się powoli. Poziom ostrości 10 Odpowiedni dla wegan.',
  ingredients_pl = 'Papryka, cebula, ocet z białego wina, mango (12%), jabłka, papryczka Ghost Pepper Bhut Jolokia (7%), limonka, oliwa z oliwek, kumin, sól morska'
WHERE slug = 'orange-ghost-pepper-and-mango-hot-sauce';

-- Mexican Smoked Chipotle Dried Pods
UPDATE public.products SET 
  description_pl = 'Suszone Strąki Wędzonego Chipotle Meksykańskiego (2500 - 8000 SHU). Suszone i wędzone Jalapeño. Niezbędne dla autentycznego dymnego smaku w gulaszach i zupach. Odpowiedni dla wegan.',
  ingredients_pl = 'Suszone i wędzone papryczki Jalapeño (Chipotle)'
WHERE slug = 'mexican-smoked-chipotle-peppers';

-- Coffee & Ghost Pepper Seasoning Rub
UPDATE public.products SET 
  description_pl = 'Przyprawa Kawa i Ghost Pepper. Unikalna mieszanka łącząca głęboki smak kawy z intensywną ostrością Ghost Pepper. Idealna do BBQ, szczególnie do wołowiny lub wieprzowiny. Poziom ostrości 8.',
  ingredients_pl = 'Kawa, Ghost Pepper, cukier, sól, przyprawy'
WHERE slug = 'black-coffee-ghost-rub';

-- Happy Hatter Hot Sauce - ORIGINAL
UPDATE public.products SET 
  description_pl = 'Happy Hatter Hot Sauce – ORIGINAL. Jak widać w popularnym programie kulinarnym "Dagelijkse Kost". Sos na bazie pomidorów z nutą słodyczy brzoskwini i papryczkami Madame Jeanette dla owocowo-ostrego kopnięcia. Poziom ostrości 6 Odpowiedni dla wegan.',
  ingredients_pl = 'Pomidor, brzoskwinia, czerwona cebula, papryczki (Madame Jeanette, Birds eye), czosnek, jabłko, ocet, cukier trzcinowy, limonka, sól, seler, zioła'
WHERE slug = 'happy-hatter-hot-sauce';

-- Trinidad Scorpion
UPDATE public.products SET 
  description_pl = 'Trinidad Scorpion - Jak widać w "HOT ONES" (Poziom ostrości 10). Składniki ; Ocet jabłkowy, cukier, papryczka Trinidad Scorpion, czerwona papryka, sól. Z drapieżnym ugryzieniem, ten super ostry sos to prawdziwe przeżycie. Słodki na początku, z budującą się ostrością dla trwałego pieczenia. Poziom ostrości 10 Odpowiedni dla wegan.',
  ingredients_pl = 'Ocet jabłkowy, cukier, papryczka Trinidad Scorpion, czerwona papryka, sól'
WHERE slug = 'trinidad-scorpion';

-- "Regret" SUPER EXTREME
UPDATE public.products SET 
  description_pl = 'Sos "Regret" SUPER EXTREME (Poziom ostrości 20). Nazwa mówi sama za siebie... Z poziomem ostrości 20, jest to jeden z najostrzejszych sosów, jakie kiedykolwiek mieliśmy. Tylko dla prawdziwych "chiliheadów" bez strachu. Używać na własne ryzyko!',
  ingredients_pl = 'Ekstremalnie ostre papryczki (Carolina Reaper), ekstrakt chili, ocet, sól'
WHERE slug = 'regret-extreme-hot-sauce';
