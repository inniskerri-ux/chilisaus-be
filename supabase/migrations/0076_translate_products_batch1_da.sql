-- Migration: Translate products batch 1 (Danish)

-- Evil One
UPDATE public.products SET 
  description_da = 'Evil One Ingredienser ; Røde peberfrugter, æbleeddike, Scotch Bonnet chili (15%), løg, appelsinkød, citronkød og skal, Naga Ghost Pepper (3%), gulerod, hvidløg, brunt sukker, chiliekstrakt (1%), havsalt. Spækket med Scotch Bonnets, Naga Ghost Peppers og et strejf af ren chili-capsaicin for den super stærke, langvarige efterbrænder, men uden den bitre smag som ekstrakter ofte giver. En super stærk, lækker sauce med strejf af citrus. Fantastisk i spaghetti, på en burger, wok, pizza eller blandet med lidt salsa for en god stærk dip. Styrke 10 Velegnet til veganere',
  ingredients_da = 'Røde peberfrugter, æbleeddike, Scotch Bonnet chili (15%), løg, appelsinkød, citronkød og skal, Naga Ghost Pepper (3%), gulerod, hvidløg, brunt sukker, chiliekstrakt (1%), havsalt'
WHERE slug = 'evil-one';

-- Evil Twin
UPDATE public.products SET 
  description_da = 'Evil Twin (uden tilsat sukker) Ingredienser ; Grønne peberfrugter, eddike, Scotch Bonnet chili, løg, æble, lime, Naga Ghost Pepper, gulerod, krydderier, hvidløg, chiliekstrakt (1%), salt. Super stærk sauce med Scotch Bonnet chilier, Naga Ghost Peppers og 1% chiliekstrakt. Har en fantastisk varme, flot og frisk takket være tilsætningen af lime. En meget velafbalanceret sauce, der leverer en vedvarende varme. God til stærk spaghetti, tilsæt til mayo for en dip eller i wokken. Styrke 10 Velegnet til veganere',
  ingredients_da = 'Grønne peberfrugter, eddike, Scotch Bonnet chili, løg, æble, lime, Naga Ghost Pepper, gulerod, krydderier, hvidløg, chiliekstrakt (1%), salt'
WHERE slug = 'evil-twin';

-- Naga Chilli Sauce
UPDATE public.products SET 
  description_da = 'Naga Chilisauce (Styrke 10). En kraftfuld sauce fra Wiltshire Chilli Farm, der bruger den berømte Naga Ghost Pepper for en intens, langvarig varme, der bygger sig langsomt op. For den erfarne chili-spiser. Velegnet til veganere.',
  ingredients_da = 'Naga Ghost chilier, eddike, salt, krydderier'
WHERE slug = 'naga-chilli-sauce-heat-level-10-140ml';

-- Caribbean Chilli Sauce
UPDATE public.products SET 
  description_da = 'Caribbean Chilisauce (Styrke 9). En tropisk eksplosion af varme og smag. Inspireret af de traditionelle saucer fra øerne, rig på chilier og solrige aromaer. Velegnet til veganere.',
  ingredients_da = 'Karibiske chilier, eddike, krydderier, salt'
WHERE slug = 'caribbean-chilli-sauce';

-- Tempest Garlic Chili Oil
UPDATE public.products SET 
  description_da = 'Tempest Hvidløg Chiliolie 150ml Ingredienser ; Koldpresset rapsolie, naturligt chiliekstrakt, naturligt hvidløgsekstrakt. Definitivt en for hvidløgselskere. En silkeblød, fyldig olie, der hurtigt bliver vanedannende. Tilsæt under madlavningen eller brug den som finish på pizza, pasta eller wok. Lækker til stegt kylling eller blandet med mayo for en stærk aioli dip. Styrke 5 Velegnet til veganere',
  ingredients_da = 'Koldpresset rapsolie, naturligt chiliekstrakt, naturligt hvidløgsekstrakt'
WHERE slug = 'tempest';

-- Mango Chilli Sauce
UPDATE public.products SET 
  description_da = 'Mango Chilisauce (Styrke 7). En lækker frugtig sauce, hvor sødmen fra modne mangoer passer perfekt sammen med et skarpt chili-kick. Ideel til kylling, salater eller som dipsauce. Velegnet til veganere.',
  ingredients_da = 'Mango, chilier, eddike, sukker, salt'
WHERE slug = 'mango-chilli-sauce';

-- Sweet Chilli Sauce
UPDATE public.products SET 
  description_da = 'Sød Chilisauce (Styrke 1). Den klassiske milde dip, som alle elsker. Perfekt balance mellem sødt og et ganske lille strejf af bid. Fremragende til forårsruller eller som en universel bordsauce. Velegnet til veganere.',
  ingredients_da = 'Chilier, sukker, eddike, hvidløg, salt'
WHERE slug = 'sweet-chilli-sauce';

-- Reaper Habanero
UPDATE public.products SET 
  description_da = 'Reaper Habanero (Styrke 10). En kraftfuld sauce fra Wiltshire Chilli Farm, der kombinerer den ekstreme varme fra Carolina Reaper med den klassiske smag af røde Habaneros. Enkel, men effektiv. Velegnet til veganere.',
  ingredients_da = 'Rød Habanero, æbleeddike, brunt sukker, løg, rød peberfrugt, Carolina Reaper, røget paprika, hvidløg'
WHERE slug = 'reaper-habanero';

-- Garlic Chilli Salt
UPDATE public.products SET 
  description_da = 'Hvidløg Chilisalt (Styrke 3). Et lækkert aromatisk salt med et mildt chili-kick. Ideelt til at drysse over kartofler, grøntsager eller kød for en øjeblikkelig smagsforbedring. Velegnet til veganere.',
  ingredients_da = 'Havsalt, hvidløg, chilier'
WHERE slug = 'garlic-chilli-salt';

-- BLACK - Carolina Reaper & Blueberry
UPDATE public.products SET 
  description_da = 'BLACK - Carolina Reaper & Blåbær Sauce. Ingredienser: Peberfrugt, løg, hvidvinseddike, æbler, blåbær (10%), Carolina Reaper chili (8%), lime, olivenolie, havsalt. En usædvanlig men fantastisk kombination, hvor det syrlige blåbær supplerer Reaperens ekstreme varme smukt. Styrke 10 Velegnet til veganere.',
  ingredients_da = 'Peberfrugt, løg, hvidvinseddike, æbler, blåbær (10%), Carolina Reaper chili (8%), lime, olivenolie, havsalt'
WHERE slug = 'black-carolina-reaper-blueberry';

-- BLUE - Scotch Bonnet & Caribbean Spices
UPDATE public.products SET 
  description_da = 'BLUE - Scotch Bonnet & Karibiske Krydderier Sauce. Ingredienser: Peberfrugt, løg, hvidvinseddike, Scotch Bonnet chili (13%), ingefær, hvidløg, lime, olivenolie, selleri, salt, krydderiblanding. Autentisk smag af Caribien med den karakteristiske Scotch Bonnet varme. Styrke 5 Velegnet til veganere.',
  ingredients_da = 'Peberfrugt, løg, hvidvinseddike, Scotch Bonnet chili (13%), ingefær, hvidløg, lime, olivenolie, selleri, salt, krydderiblanding'
WHERE slug = 'blue-scotch-bonnet-caribbean';

-- PINK - Chipotle and Pineapple
UPDATE public.products SET 
  description_da = 'PINK - Chipotle & Ananas Sauce. Ingredienser: Løg, peberfrugt, ananas (17%), hvidvinseddike, rød Jalapeño chili, lime, Chipotle chili (1,7%), olivenolie, salt. En lækker balance mellem sødt og røget. Styrke 4 Velegnet til veganere.',
  ingredients_da = 'Løg, peberfrugt, ananas (17%), hvidvinseddike, rød Jalapeño chili, lime, Chipotle chili (1,7%), olivenolie, salt'
WHERE slug = 'pink-chipotle-and-pineapple-hot-sauce';

-- Carolina Reaper Dried Pods
UPDATE public.products SET 
  description_da = 'Tørrede Carolina Reaper Bælge (1,8 mio. - 2,2 mio. SHU). Verdens stærkeste chili i tørret form. For de vovede, der ønsker at lave deres egne saucer eller krydre retter ekstremt. Velegnet til veganere.',
  ingredients_da = 'Tørrede Carolina Reaper chilier'
WHERE slug = 'carolina-reaper-dried-peppers';

-- "God Slayer" EXTREME
UPDATE public.products SET 
  description_da = '"God Slayer" EXTREME Chilisauce (Styrke 15). En af de mest intense saucer i vores sortiment. Kun for de mest erfarne chili-elskere. Velegnet til veganere.',
  ingredients_da = 'Carolina Reaper, chiliektrakter, eddike, salt'
WHERE slug = 'god-slayer';

-- ORANGE - Ghost Pepper & Mango
UPDATE public.products SET 
  description_da = 'ORANGE - Ghost Pepper & Mango Sauce. Ingredienser: Peberfrugt, løg, hvidvinseddike, mango (12%), æbler, Bhut Jolokia "Ghost" chili (7%), lime, olivenolie, spidskommen, havsalt. En smukt afbalanceret sauce, hvor varmen fra Ghost Pepper langsomt bygger sig op. Styrke 10 Velegnet til veganere.',
  ingredients_da = 'Peberfrugt, løg, hvidvinseddike, mango (12%), æbler, Bhut Jolokia "Ghost" chili (7%), lime, olivenolie, spidskommen, havsalt'
WHERE slug = 'orange-ghost-pepper-and-mango-hot-sauce';

-- Mexican Smoked Chipotle Dried Pods
UPDATE public.products SET 
  description_da = 'Tørrede mexicanske røgede Chipotle-bælge (2500 - 8000 SHU). Tørrede og røgede Jalapeños. Uundværlig for en autentisk røget smag i gryderetter og supper. Velegnet til veganere.',
  ingredients_da = 'Røgede tørrede Jalapeño chilier (Chipotle)'
WHERE slug = 'mexican-smoked-chipotle-peppers';

-- Coffee & Ghost Pepper Seasoning Rub
UPDATE public.products SET 
  description_da = 'Kaffe & Ghost Pepper Krydderimix. En unik rub, der kombinerer den dybe smag af kaffe med den intense varme fra Ghost Pepper. Perfekt til BBQ, især til oksekød eller svinekød. Styrke 8.',
  ingredients_da = 'Kaffe, Ghost Pepper, sukker, salt, krydderier'
WHERE slug = 'black-coffee-ghost-rub';

-- Happy Hatter Hot Sauce - ORIGINAL
UPDATE public.products SET 
  description_da = 'Happy Hatter Hot Sauce – ORIGINAL. Som set i det populære tv-madprogram "Dagelijkse Kost". En tomatbaseret sauce med et strejf af fersken-sødme og Madame Jeanette chilier for et frugtigt-stærkt kick. Styrke 6 Velegnet til veganere.',
  ingredients_da = 'Tomat, fersken, rødløg, chilier (Madame Jeanette, Birds eye), hvidløg, æble, eddike, rørsukker, lime, salt, selleri, krydderurter'
WHERE slug = 'happy-hatter-hot-sauce';

-- Trinidad Scorpion
UPDATE public.products SET 
  description_da = 'Trinidad Scorpion - Som set i "HOT ONES" (Styrke 10). Ingredienser: Æbleeddike, sukker, Trinidad Scorpion chili, røde peberfrugter, salt. Med et voldsomt bid er denne super stærke sauce en sand oplevelse. Sød til at starte med, med en varme der bygger sig op til en langvarig brænden. Styrke 10 Velegnet til veganere.',
  ingredients_da = 'Æbleeddike, sukker, Trinidad Scorpion chili, røde peberfrugter, salt'
WHERE slug = 'trinidad-scorpion';

-- "Regret" SUPER EXTREME
UPDATE public.products SET 
  description_da = '"Regret" SUPER EXTREME Chilisauce (Styrke 20). Navnet siger det hele... Med et styrkeniveau på 20 er dette en af de stærkeste saucer, vi nogensinde har haft. Kun for ægte "chiliheads" uden frygt. Brug på eget ansvar!',
  ingredients_da = 'Ekstremt stærke chilier (Carolina Reaper), chiliekstrakt, eddike, salt'
WHERE slug = 'regret-extreme-hot-sauce';
