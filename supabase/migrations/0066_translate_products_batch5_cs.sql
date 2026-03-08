-- Migration: Translate products batch 5 (Czech)

-- Black Death - Carolina Reaper + Black Garlic
UPDATE public.products SET 
  description_cs = 'Přírodní super pálivá omáčka s Carolina Reaper a černým česnekem. Složení ; Balzamikový ocet, melasa, černý česnek (8,5 %), Carolina Reaper (5,5 %), sušená rajčata, voda, cibule, sůl, černý pepř. Hvězdou této omáčky je černý česnek fermentovaný po dobu 14 dní, který dodává sladkou, sirupovitou texturu s tóny sóji a balzamika. Úroveň pálivosti 15. Vhodné pro vegany.',
  ingredients_cs = 'Balzamikový ocet, melasa, černý česnek (8,5 %), Carolina Reaper (5,5 %), sušená rajčata, voda, cibule, sůl, černý pepř'
WHERE slug = 'black-death-carolina-reaper-black-garlic-heat-level-15';

-- Crazy Bastard Sauce - Caribbean Edition
UPDATE public.products SET 
  description_cs = 'Caribbean Box - 3 omáčky se 3 různými ovocnými karibskými papričkami. Tropická jízda skrze pálivost Antil. Vhodné pro vegany.',
  details_cs = 'Obsahuje 3x 100ml lahvičky s karibskými příchutěmi.'
WHERE slug = 'crazy-bastard-sauce-caribbean-edition';

-- Chilisaus.be - Limited Edition Range - Bad Decision
UPDATE public.products SET 
  description_cs = 'Naše nová limitovaná edice - Bad Decision. Fermentovaná chili omáčka s extrémním řízem. Někdy je špatné rozhodnutí to nejlepší. Úroveň pálivosti 11.',
  ingredients_cs = 'Fermentované papričky, ocet, sůl'
WHERE slug = 'chilisaus-be-limited-edition-range-bad-decision-heat-level-11';

-- Dirty Dick’s (USA) Tropical Twist
UPDATE public.products SET 
  description_cs = 'JAK BYLO VIDĚT V HOT ONES. Jedna ze tří nejlepších pálivých omáček z USA. Tropický twist s oceňovanou chutí. Vytvořeno uznávaným BBQ šéfkuchařem. Úroveň pálivosti 6.',
  ingredients_cs = 'Papričky Habanero, tropické ovoce, cibule, ocet, koření'
WHERE slug = 'dirty-dicks-usa-tropical-twist';

-- Firelli - Italian Hot Sauce with Porcini Mushrooms
UPDATE public.products SET 
  description_cs = 'Hrdě italská - pálivá omáčka s hřiby (Porcini). Ručně vyráběná v Parmě v Itálii. Bohatá, komplexní chuť s kalábrijskými papričkami, balzamikovým octem a italskými bylinkami. Plná umami. Úroveň pálivosti 6. Vhodné pro vegany.',
  ingredients_cs = 'Pečené červené papriky, voda, balzamikový ocet z Modeny (11 %), jablečný ocet, kalábrijské papričky, citronová šťáva, cukr, kajenský pepř, koření, sůl, sušené hřiby, česnek'
WHERE slug = 'firelli-italian-hot-sauce-with-porcini-mushrooms-heat-level-6-148ml';

-- Firelli - Italian Hot Sauce with Truffles
UPDATE public.products SET 
  description_cs = 'Hrdě italská - lanýžová pálivá omáčka. Neuvěřitelné aroma italských lanýžů v kombinaci s kalábrijskými papričkami a balzamikovým octem. Luxusní doplněk ke každému jídlu. Úroveň pálivosti 5.',
  ingredients_cs = 'Pečené červené papriky, voda, balzamikový ocet, lanýžové aroma, kalábrijské papričky, koření'
WHERE slug = 'firelli-italian-hot-sauce-with-truffles-heat-level-5-148ml';

-- High River Sauces - Pepper X - Taco Sauce
UPDATE public.products SET 
  description_cs = 'Taco omáčka s Pepper X z USA. Pepper X je uznáván jako nejpálivější paprička na světě. Tato taco omáčka přináší ten extrémní žár do vašich oblíbených mexických jídel. Úroveň pálivosti 15.',
  ingredients_cs = 'Papričky Pepper X, ocet, rajčata, koření'
WHERE slug = 'high-river-sauces-pepper-x-taco-sauce';

-- Smoky Pepper Seasoning
UPDATE public.products SET 
  description_cs = 'Smoky Pepper kořenící směs s Chipotle a česnekem. Složení ; Sůl, černý pepř, česnek, bílý pepř, chipotle vločky, citronová kůra, rozmarýn, bazalka, kyselina citronová, tymián, citronová verbena, sušené chili. Tajná ingredience, která pozvedne každé jídlo. Kouřové s čerstvým citronovým závěrem. Vhodné pro vegany.',
  ingredients_cs = 'Sůl, černý pepř, česnek, bílý pepř, chipotle, citronová kůra, rozmarýn, bazalka, kyselina citronová, tymián, citronová verbena, sušené chili'
WHERE slug = 'smoky-pepper-seasoning-heat-level-6-65g';
