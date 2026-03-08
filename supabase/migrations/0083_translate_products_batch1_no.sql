-- Migration: Translate products batch 1 (Norwegian)

-- Evil One
UPDATE public.products SET 
  description_no = 'Evil One Ingredienser ; Rød paprika, epleeddik, Scotch Bonnet chili (15%), løp, appelsinkjøtt, sitronkjøtt og -skall, Naga Ghost Pepper (3%), gulrot, hvitløk, brunt sukker, chiliekstrakt (1%), havsalt. Fullpakket med Scotch Bonnets, Naga Ghost Peppers og et hint av rent chilie-capsaicin for den supersterke, langvarige brennende følelsen, men uten den bitre smaken som ekstrakter ofte gir. Dette er en supersterk, deilig saus med hint av sitrus. Flott i spaghetti, på en burger, wok, pizza eller bland det med litt salsa for en god og sterk dip. Styrkegrad 10 Passer for veganere',
  ingredients_no = 'Rød paprika, epleeddik, Scotch Bonnet chili (15%), løp, appelsinkjøtt, sitronkjøtt og -skall, Naga Ghost Pepper (3%), gulrot, hvitløk, brunt sukker, chiliekstrakt (1%), havsalt'
WHERE slug = 'evil-one';

-- Evil Twin
UPDATE public.products SET 
  description_no = 'Evil Twin (uten tilsatt sukker) Ingredienser ; Grønn paprika, eddik, Scotch Bonnet chili, løk, eple, lime, Naga Ghost Pepper, gulrot, krydder, hvitløk, chiliekstrakt (1%), salt. Supersterk saus med Scotch Bonnet chilier, Naga Ghost Peppers og 1% chiliekstrakt. Har en fantastisk varme, flott og frisk takket være tilsatt lime. En veldig godt balansert saus som leverer en vedvarende varme. God til sterk spaghetti, tilsett i mayo for en dip eller i wok. Styrkegrad 10 Passer for veganere',
  ingredients_no = 'Grønn paprika, eddik, Scotch Bonnet chili, løk, eple, lime, Naga Ghost Pepper, gulrot, krydder, hvitløk, chiliekstrakt (1%), salt'
WHERE slug = 'evil-twin';

-- Naga Chilli Sauce
UPDATE public.products SET 
  description_no = 'Naga chilisaus (Styrkegrad 10). En kraftig saus fra Wiltshire Chilli Farm som bruker den berømte Naga Ghost-pepperen for en intens, langvarig varme som bygger seg opp sakte. For den erfarne chiliespiseren. Passer for veganere.',
  ingredients_no = 'Naga Ghost chilier, eddik, salt, krydder'
WHERE slug = 'naga-chilli-sauce-heat-level-10-140ml';

-- Caribbean Chilli Sauce
UPDATE public.products SET 
  description_no = 'Karibisk chilisaus (Styrkegrad 9). En tropisk eksplosjon av varme og smak. Inspirert av de tradisjonelle sausene fra øyene, rik på chilier og solfylte aromaer. Passer for veganere.',
  ingredients_no = 'Karibiske chilier, eddik, krydder, salt'
WHERE slug = 'caribbean-chilli-sauce';

-- Tempest Garlic Chili Oil
UPDATE public.products SET 
  description_no = 'Tempest hvitløks-chiliolje 150ml Ingredienser ; Kaldpresset rapsolje, naturlig chiliekstrakt, naturlig hvitløksekstrakt. Definitivt noe for hvitløkselskerne. En silkemyk, rik olje som raskt vil bli avhengighetsskapende. Tilsett under matlaging eller bruk den som en siste finish på pizza, pasta eller wok. Nydelig til stekt kylling eller blandet med mayo for en sterk aioli-dip. Styrkegrad 5 Passer for veganere',
  ingredients_no = 'Kaldpresset rapsolje, naturlig chiliekstrakt, naturlig hvitløksekstrakt'
WHERE slug = 'tempest';

-- Mango Chilli Sauce
UPDATE public.products SET 
  description_no = 'Mango chilisaus (Styrkegrad 7). En nydelig fruktig saus der sødmen fra modne mangoer passer perfekt sammen med et skarpt chilie-kick. Ideell til kylling, salater eller som dipsaus. Passer for veganere.',
  ingredients_no = 'Mango, chilier, eddik, sukker, salt'
WHERE slug = 'mango-chilli-sauce';

-- Sweet Chilli Sauce
UPDATE public.products SET 
  description_no = 'Søt chilisaus (Styrkegrad 1). Den klassiske milde dippen som alle elsker. Perfekt balanse mellom sødme og et veldig lite snev av sting. Utmerket til vårruller eller som en universal bordsaus. Passer for veganere.',
  ingredients_no = 'Chilier, sukker, eddik, hvitløk, salt'
WHERE slug = 'sweet-chilli-sauce';

-- Reaper Habanero
UPDATE public.products SET 
  description_no = 'Reaper Habanero (Styrkegrad 10). En kraftig saus fra Wiltshire Chilli Farm som kombinerer den ekstreme varmen fra Carolina Reaper med den klassiske smaken av røde habaneroer. Enkel, men effektiv. Passer for veganere.',
  ingredients_no = 'Rød habanero, epleeddik, brunt sukker, løk, rød paprika, Carolina Reaper, røkt paprika, hvitløk'
WHERE slug = 'reaper-habanero';

-- Garlic Chilli Salt
UPDATE public.products SET 
  description_no = 'Hvitløks-chilisalt (Styrkegrad 3). Et nydelig aromatisk salt med et mildt chilie-kick. Ideell for å strø over poteter, grønnsaker eller kjøtt for en umiddelbar smaksforbedring. Passer for veganere.',
  ingredients_no = 'Havsalt, hvitløk, chilier'
WHERE slug = 'garlic-chilli-salt';

-- BLACK - Carolina Reaper & Blueberry
UPDATE public.products SET 
  description_no = 'BLACK - Carolina Reaper & Blåbærsaue. Ingredienser: Paprika, løk, hvitvinseddik, epler, blåbær (10%), Carolina Reaper chili (8%), lime, olivenolje, havsalt. En uvanlig, men fantastisk kombination der den syrlige blåbæren utfyller Reaperens ekstreme varme vakkert. Styrkegrad 10 Passer for veganere.',
  ingredients_no = 'Paprika, løk, hvitvinseddik, epler, blåbær (10%), Carolina Reaper chili (8%), lime, olivenolje, havsalt'
WHERE slug = 'black-carolina-reaper-blueberry';

-- BLUE - Scotch Bonnet & Caribbean Spices
UPDATE public.products SET 
  description_no = 'BLUE - Scotch Bonnet & Karibisk krydder saus. Ingredienser: Paprika, løk, hvitvinseddik, Scotch Bonnet chili (13%), ingefær, hvitløk, lime, olivenolje, selleri, salt, krydderblanding. Autentisk smak av Karibia med den karakteristiske Scotch Bonnet-varmen. Styrkegrad 5 Passer for veganere.',
  ingredients_no = 'Paprika, løk, hvitvinseddik, Scotch Bonnet chili (13%), ingefær, hvitløk, lime, olivenolje, selleri, salt, krydderblanding'
WHERE slug = 'blue-scotch-bonnet-caribbean';

-- PINK - Chipotle and Pineapple
UPDATE public.products SET 
  description_no = 'PINK - Chipotle & Ananassaus. Ingredienser: Løk, paprika, ananas (17%), hvitvinseddik, rød Jalapeño chili, lime, Chipotle chili (1,7%), olivenolje, salt. En nydelig balanse mellom sødme og røyk. Styrkegrad 4 Passer for veganere.',
  ingredients_no = 'Løk, paprika, ananas (17%), hvitvinseddik, rød Jalapeño chili, lime, Chipotle chili (1,7%), olivenolje, salt'
WHERE slug = 'pink-chipotle-and-pineapple-hot-sauce';

-- Carolina Reaper Dried Pods
UPDATE public.products SET 
  description_no = 'Tørkede Carolina Reaper-belger (1,8 mill. - 2,2 mill. SHU). Verdens sterkeste chili i tørket form. For de vågale som vil lage egne sauser eller krydre retter ekstremt. Passer for veganere.',
  ingredients_no = 'Tørkede Carolina Reaper-chilier'
WHERE slug = 'carolina-reaper-dried-peppers';

-- "God Slayer" EXTREME
UPDATE public.products SET 
  description_no = '"God Slayer" EXTREME chilisaus (Styrkegrad 15). En av de mest intense sausene i vårt utvalg. Kun for svært erfarne chilieelskere. Passer for veganere.',
  ingredients_no = 'Carolina Reaper, chilieekstrakter, eddik, salt'
WHERE slug = 'god-slayer';

-- ORANGE - Ghost Pepper & Mango
UPDATE public.products SET 
  description_no = 'ORANGE - Ghost Pepper & Mangosaus. Ingredienser: Paprika, løk, hvitvinseddik, mango (12%), epler, Bhut Jolokia "Ghost" chili (7%), lime, olivenolje, spisskummen, havsalt. En vakkert balansert saus der varmen fra Ghost Pepper bygger seg opp sakte. Styrkegrad 10 Passer for veganere.',
  ingredients_no = 'Paprika, løk, hvitvinseddik, mango (12%), epler, Bhut Jolokia "Ghost" chili (7%), lime, olivenolje, spisskummen, havsalt'
WHERE slug = 'orange-ghost-pepper-and-mango-hot-sauce';

-- Mexican Smoked Chipotle Dried Pods
UPDATE public.products SET 
  description_no = 'Tørkede meksikanske røkte chipotle-belger (2500 - 8000 SHU). Tørkede og røkte Jalapeñoer. Uunnværlig for en autentisk røyksmak i gryteretter og supper. Passer for veganere.',
  ingredients_no = 'Røkte tørkede Jalapeño-chilier (Chipotle)'
WHERE slug = 'mexican-smoked-chipotle-peppers';

-- Coffee & Ghost Pepper Seasoning Rub
UPDATE public.products SET 
  description_no = 'Kaffe & Ghost Pepper krydderblanding. En unik rub som kombinerer den dype smaken av kaffe med den intense varmen fra Ghost Pepper. Perfekt for BBQ, spesielt på storfe eller svin. Styrkegrad 8.',
  ingredients_no = 'Kaffe, Ghost Pepper, sukker, salt, krydder'
WHERE slug = 'black-coffee-ghost-rub';

-- Happy Hatter Hot Sauce - ORIGINAL
UPDATE public.products SET 
  description_no = 'Happy Hatter Hot Sauce – ORIGINAL. Som sett i det populære TV-matprogrammet "Dagelijkse Kost". En tomatbasert saus med et hint av ferskensødme og Madame Jeanette chilier for et fruktig og sterkt kick. Styrkegrad 6 Passer for veganere.',
  ingredients_no = 'Tomat, fersken, rødløk, chilier (Madame Jeanette, Birds eye), hvitløk, eple, eddik, rørsukker, lime, salt, selleri, urter'
WHERE slug = 'happy-hatter-hot-sauce';

-- Trinidad Scorpion
UPDATE public.products SET 
  description_no = 'Trinidad Scorpion - Som sett i "HOT ONES" (Styrkegrad 10). Ingredienser: Epleeddik, sukker, Trinidad Scorpion chili, rød paprika, salt. Med et voldsomt bitt er denne supersterke sausen en sann opplevelse. Søt i starten, med en varme som bygger seg opp til en langvarig brenning. Styrkegrad 10 Passer for veganere.',
  ingredients_no = 'Epleeddik, sukker, Trinidad Scorpion chili, rød paprika, salt'
WHERE slug = 'trinidad-scorpion';

-- "Regret" SUPER EXTREME
UPDATE public.products SET 
  description_no = '"Regret" SUPER EXTREME chilisaus (Styrkegrad 20). Navnet sier alt... Med et styrkenivå på 20 er dette en av de sterkeste sausene vi noensinne har hatt. Kun for ekte "chiliheads" uten frykt. Bruk på eget ansvar!',
  ingredients_no = 'Ekstremt sterke chilier (Carolina Reaper), chilieekstrakt, eddik, salt'
WHERE slug = 'regret-extreme-hot-sauce';
