-- Migration: Translate products batch 5 (Polish)

-- Black Death - Carolina Reaper + Black Garlic
UPDATE public.products SET 
  description_pl = 'Naturalny ekstremalnie ostry sos z Carolina Reaper i czarnym czosnkiem. Składniki ; Ocet balsamiczny, melasa, czarny czosnek (8,5%), Carolina Reaper (5,5%), pomidor w proszku, woda, cebula, sól, czarny pieprz. Gwiazdą tego sosu jest czarny czosnek fermentowany przez 14 dni, który nadaje słodką, syropowatą teksturę z nutami soi i balsamico. Poziom ostrości 15. Odpowiedni dla wegan.',
  ingredients_pl = 'Ocet balsamiczny, melasa, czarny czosnek (8,5%), Carolina Reaper (5,5%), pomidor w proszku, woda, cebula, sól, czarny pieprz'
WHERE slug = 'black-death-carolina-reaper-black-garlic-heat-level-15';

-- Crazy Bastard Sauce - Caribbean Edition
UPDATE public.products SET 
  description_pl = 'Zestaw Karaibski - 3 sosy z 3 różnymi owocowymi papryczkami z Karaibów. Tropikalna podróż przez smaki Antyli. Odpowiedni dla wegan.',
  details_pl = 'Zawiera 3 butelki 100ml o karaibskich smakach.'
WHERE slug = 'crazy-bastard-sauce-caribbean-edition';

-- Chilisaus.be - Limited Edition Range - Bad Decision
UPDATE public.products SET 
  description_pl = 'Nasza nowa seria limitowana - Bad Decision. Fermentowany sos chili z ekstremalnym kopnięciem. Czasem zła decyzja smakuje najlepiej. Poziom ostrości 11.',
  ingredients_pl = 'Fermentowane papryczki, ocet, sól'
WHERE slug = 'chilisaus-be-limited-edition-range-bad-decision-heat-level-11';

-- Dirty Dick’s (USA) Tropical Twist
UPDATE public.products SET 
  description_pl = 'JAK WIDAĆ W HOT ONES. Jeden z trzech najlepszych ostrych sosów z USA. Tropikalny twist z nagradzanym smakiem. Stworzony przez utytułowanego szefa BBQ. Poziom ostrości 6.',
  ingredients_pl = 'Papryczki Habanero, owoce tropikalne, cebula, ocet, przyprawy'
WHERE slug = 'dirty-dicks-usa-tropical-twist';

-- Firelli - Italian Hot Sauce with Porcini Mushrooms
UPDATE public.products SET 
  description_pl = 'Dumnie włoski - ostry sos z borowikami (Porcini). Ręcznie robiony w Parmie we Włoszech. Bogaty, złożony smak z kalabryjskimi papryczkami, octem balsamicznym i włoskimi ziołami. Pełen umami. Poziom ostrości 6. Odpowiedni dla wegan.',
  ingredients_pl = 'Pieczona czerwona papryka, woda, ocet balsamiczny z Modeny (11%), ocet jabłkowy, kalabryjskie papryczki, sok z cytryny, cukier, pieprz cayenne, przyprawy, sól, suszone borowiki, czosnek'
WHERE slug = 'firelli-italian-hot-sauce-with-porcini-mushrooms-heat-level-6-148ml';

-- Firelli - Italian Hot Sauce with Truffles
UPDATE public.products SET 
  description_pl = 'Dumnie włoski - truflowy ostry sos. Niesamowity aromat włoskich trufli połączony z kalabryjskimi papryczkami i octem balsamicznym. Luksusowy dodatek do każdego dania. Poziom ostrości 5.',
  ingredients_pl = 'Pieczona czerwona papryka, woda, ocet balsamiczny, aromat truflowy, kalabryjskie papryczki, przyprawy'
WHERE slug = 'firelli-italian-hot-sauce-with-truffles-heat-level-5-148ml';

-- High River Sauces - Pepper X - Taco Sauce
UPDATE public.products SET 
  description_pl = 'Sos do taco z Pepper X z USA. Pepper X został uznany za najostrzejszą papryczkę świata. Ten sos przenosi ten ekstremalny ogień do Twoich ulubionych meksykańskich dań. Poziom ostrości 15.',
  ingredients_pl = 'Papryczki Pepper X, ocet, pomidory, przyprawy'
WHERE slug = 'high-river-sauces-pepper-x-taco-sauce';

-- Smoky Pepper Seasoning
UPDATE public.products SET 
  description_pl = 'Przyprawa Wędzony Pieprz z Chipotle i Czosnkiem. Składniki ; Sól, czarny pieprz, czosnek, ziarna białego pieprzu, płatki chipotle, skórka z cytryny, rozmaryn, bazylia, kwas cytrynowy, tymianek, werbena cytrynowa, suszone chili. Tajny składnik, który podniesie smak każdego posiłku. Wędzony z rześkim cytrynowym finiszem. Odpowiedni dla wegan.',
  ingredients_pl = 'Sól, czarny pieprz, czosnek, biały pieprz, chipotle, skórka cytrynowa, rozmaryn, bazylia, kwas cytrynowy, tymianek, werbena cytrynowa, suszone chili'
WHERE slug = 'smoky-pepper-seasoning-heat-level-6-65g';
