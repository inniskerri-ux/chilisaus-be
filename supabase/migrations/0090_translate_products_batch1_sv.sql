-- Migration: Translate products batch 1 (Swedish)

-- Evil One
UPDATE public.products SET 
  description_sv = 'Evil One Ingredienser ; Röd paprika, äppelcidervinäger, Scotch Bonnet chili (15%), lök, apelsinkött, citronkött och skal, Naga Ghost Pepper (3%), morot, vitlök, brunt socker, chiliextrakt (1%), havssalt. Fullpackad med Scotch Bonnets, Naga Ghost Peppers och en antydan av rent chili-capsaicin för den superheta, långvariga efterbrännkänslan, men utan den bittra smak som extrakt ofta ger. Detta är en superhet, utsökt sås med inslag av citrus. Utmärkt i spaghetti, på en burgare, wok, pizza eller blanda med lite salsa för en god stark dip. Hetta 10 Lämplig för veganer',
  ingredients_sv = 'Röd paprika, äppelcidervinäger, Scotch Bonnet chili (15%), lök, apelsinkött, citronkött och skal, Naga Ghost Pepper (3%), morot, vitlök, brunt socker, chiliextrakt (1%), havssalt'
WHERE slug = 'evil-one';

-- Evil Twin
UPDATE public.products SET 
  description_sv = 'Evil Twin (utan tillsatt socker) Ingredienser ; Grön paprika, vinäger, Scotch Bonnet chili, lök, äpple, lime, Naga Ghost Pepper, morot, kryddor, vitlök, chiliextrakt (1%), salt. Superhet sås med Scotch Bonnet chili, Naga Ghost Peppers och 1% chiliextrakt. Har en fantastisk hetta, fin och fräsch tack vare tillsatsen av lime. En mycket välbalanserad sås som levererar en ihållande hetta. God till stark spaghetti, tillsätt i mayo för en dip eller i wok. Hetta 10 Lämplig för veganer',
  ingredients_sv = 'Grön paprika, vinäger, Scotch Bonnet chili, lök, äpple, lime, Naga Ghost Pepper, morot, kryddor, vitlök, chiliextrakt (1%), salt'
WHERE slug = 'evil-twin';

-- Naga Chilli Sauce
UPDATE public.products SET 
  description_sv = 'Naga Chilisås (Hetta 10). En kraftfull sås från Wiltshire Chilli Farm som använder den berömda Naga Ghost-pepparn för en intensiv, långvarig hetta som byggs upp långsamt. För den erfarne chiliätaren. Lämplig för veganer.',
  ingredients_sv = 'Naga Ghost chilifrukter, vinäger, salt, kryddor'
WHERE slug = 'naga-chilli-sauce-heat-level-10-140ml';

-- Caribbean Chilli Sauce
UPDATE public.products SET 
  description_sv = 'Karibisk Chilisås (Hetta 9). En tropisk explosion av hetta och smak. Inspirerad av de traditionella såserna från öarna, rik på chili och soliga aromer. Lämplig för veganer.',
  ingredients_sv = 'Karibisk chili, vinäger, kryddor, salt'
WHERE slug = 'caribbean-chilli-sauce';

-- Tempest Garlic Chili Oil
UPDATE public.products SET 
  description_sv = 'Tempest Vitlök Chiliolja 150ml Ingredienser ; Kallpressad rapsolja, naturligt chiliextrakt, naturligt vitlöksextrakt. Definitivt en för vitlöksälskare. En silkeslen, fyllig olja som snabbt blir beroendeframkallande. Tillsätt under matlagning eller använd som finish på pizza, pasta eller wok. Underbar till stekt kyckling eller blanda med mayo för en stark aioli-dip. Hetta 5 Lämplig för veganer',
  ingredients_sv = 'Kallpressad rapsolja, naturligt chiliextrakt, naturligt vitlöksextrakt'
WHERE slug = 'tempest';

-- Mango Chilli Sauce
UPDATE public.products SET 
  description_sv = 'Mango Chilisås (Hetta 7). En härligt fruktig sås där sötman från mogna mangofrukter passar perfekt ihop med en skarp chili-kick. Idealisk till kyckling, sallader eller som dipsås. Lämplig for veganer.',
  ingredients_sv = 'Mango, chilifrukter, vinäger, socker, salt'
WHERE slug = 'mango-chilli-sauce';

-- Sweet Chilli Sauce
UPDATE public.products SET 
  description_sv = 'Söt Chilisås (Hetta 1). Den klassiska milda dippen som alla älskar. Perfekt balans mellan sötma och en mycket liten antydan till sting. Utmärkt till vårrullar eller som en universell bordssås. Lämplig för veganer.',
  ingredients_sv = 'Chilifrukter, socker, vinäger, vitlök, salt'
WHERE slug = 'sweet-chilli-sauce';

-- Reaper Habanero
UPDATE public.products SET 
  description_sv = 'Reaper Habanero (Hetta 10). En kraftfull sås från Wiltshire Chilli Farm som kombinerar den extrema hettan från Carolina Reaper med den klassiska smaken av röda Habaneros. Enkel men effektiv. Lämplig för veganer.',
  ingredients_sv = 'Röd Habanero, äppelcidervinäger, brunt socker, lök, röd paprika, Carolina Reaper, rökt paprika, vitlök'
WHERE slug = 'reaper-habanero';

-- Garlic Chilli Salt
UPDATE public.products SET 
  description_sv = 'Vitlök Chilisalt (Hetta 3). Ett härligt aromatiskt salt med en mild chili-kick. Idealiskt att strö över potatis, grönsaker eller kött för en omedelbar smakhöjning. Lämplig för veganer.',
  ingredients_sv = 'Havssalt, vitlök, chilifrukter'
WHERE slug = 'garlic-chilli-salt';

-- BLACK - Carolina Reaper & Blueberry
UPDATE public.products SET 
  description_sv = 'BLACK - Carolina Reaper & Blåbär Sås. Ingredienser: Paprika, lök, vitvinsvinäger, äpplen, blåbär (10%), Carolina Reaper chili (8%), lime, olivolja, havssalt. En ovanlig men fantastisk kombination där det syrliga blåbäret kompletterar Reaperens extrema hetta vackert. Hetta 10 Lämplig för veganer.',
  ingredients_sv = 'Paprika, lök, vitvinsvinäger, äpplen, blåbär (10%), Carolina Reaper chili (8%), lime, olivolja, havssalt'
WHERE slug = 'black-carolina-reaper-blueberry';

-- BLUE - Scotch Bonnet & Caribbean Spices
UPDATE public.products SET 
  description_sv = 'BLUE - Scotch Bonnet & Karibiska Kryddor Sås. Ingredienser: Paprika, lök, vitvinsvinäger, Scotch Bonnet chili (13%), ingefära, vitlök, lime, olivolja, selleri, salt, kryddblandning. Autentisk smak av Karibien med den karakteristiska Scotch Bonnet-hettan. Hetta 5 Lämplig för veganer.',
  ingredients_sv = 'Paprika, lök, vitvinsvinäger, Scotch Bonnet chili (13%), ingefära, vitlök, lime, olivolja, selleri, salt, kryddblandning'
WHERE slug = 'blue-scotch-bonnet-caribbean';

-- PINK - Chipotle and Pineapple
UPDATE public.products SET 
  description_sv = 'PINK - Chipotle & Ananas Sås. Ingredienser: Lök, paprika, ananas (17%), vitvinsvinäger, röd Jalapeño chili, lime, Chipotle chili (1,7%), olivolja, salt. En härlig balans mellan sött och rökt. Hetta 4 Lämplig för veganer.',
  ingredients_sv = 'Lök, paprika, ananas (17%), vitvinsvinäger, röd Jalapeño chili, lime, Chipotle chili (1,7%), olivolja, salt'
WHERE slug = 'pink-chipotle-and-pineapple-hot-sauce';

-- Carolina Reaper Dried Pods
UPDATE public.products SET 
  description_sv = 'Torkad Carolina Reaper (1,8 miljoner - 2,2 miljoner SHU). Världens starkaste chili i torkad form. För de vågade som vill göra sina egna såser eller krydda rätter extremt. Lämplig för veganer.',
  ingredients_sv = 'Torkad Carolina Reaper chili'
WHERE slug = 'carolina-reaper-dried-peppers';

-- "God Slayer" EXTREME
UPDATE public.products SET 
  description_sv = '"God Slayer" EXTREME Chilisås (Hetta 15). En av de mest intensiva såserna i vårt sortiment. Endast för de mest erfarna chili-älskarna. Lämplig för veganer.',
  ingredients_sv = 'Carolina Reaper, chiliextrakt, vinäger, salt'
WHERE slug = 'god-slayer';

-- ORANGE - Ghost Pepper & Mango
UPDATE public.products SET 
  description_sv = 'ORANGE - Ghost Pepper & Mango Sås. Ingredienser: Paprika, lök, vitvinsvinäger, mango (12%), äpplen, Bhut Jolokia "Ghost" chili (7%), lime, olivolja, spiskummin, havssalt. En vackert balanserad sås där hettan från Ghost Pepper långsamt byggs upp. Hetta 10 Lämplig för veganer.',
  ingredients_sv = 'Paprika, lök, vitvinsvinäger, mango (12%), äpplen, Bhut Jolokia "Ghost" chili (7%), lime, olivolja, spiskummin, havssalt'
WHERE slug = 'orange-ghost-pepper-and-mango-hot-sauce';

-- Mexican Smoked Chipotle Dried Pods
UPDATE public.products SET 
  description_sv = 'Torkad mexikansk rökt Chipotle (2500 - 8000 SHU). Torkad och rökt Jalapeño. Oumbärlig för en autentisk röksmak i grytor och soppor. Lämplig för veganer.',
  ingredients_sv = 'Rökt torkad Jalapeño chili (Chipotle)'
WHERE slug = 'mexican-smoked-chipotle-peppers';

-- Coffee & Ghost Pepper Seasoning Rub
UPDATE public.products SET 
  description_sv = 'Kaffe & Ghost Pepper Kryddmix. En unik rub som kombinerar den djupa smaken av kaffe med den intensiva hettan från Ghost Pepper. Perfekt för BBQ, speciellt på nöt- eller fläskkött. Hetta 8.',
  ingredients_sv = 'Kaffe, Ghost Pepper, socker, salt, kryddor'
WHERE slug = 'black-coffee-ghost-rub';

-- Happy Hatter Hot Sauce - ORIGINAL
UPDATE public.products SET 
  description_sv = 'Happy Hatter Hot Sauce – ORIGINAL. Som setts i det populära tv-matlagningsprogrammet "Dagelijkse Kost". En tomatbaserad sås med en antydan av persikosötma och Madame Jeanette chili för en fruktig-stark kick. Hetta 6 Lämplig för veganer.',
  ingredients_sv = 'Tomat, persika, rödlök, chili (Madame Jeanette, Birds eye), vitlök, äpple, vinäger, rörsocker, lime, salt, selleri, örter'
WHERE slug = 'happy-hatter-hot-sauce';

-- Trinidad Scorpion
UPDATE public.products SET 
  description_sv = 'Trinidad Scorpion - Som setts i "HOT ONES" (Hetta 10). Ingredienser: Äppelcidervinäger, socker, Trinidad Scorpion chili, röd paprika, salt. Med ett vildsint bett är denna superstarka sås en sann upplevelse. Söt till en början, med en hetta som byggs upp till en långvarig bränna. Hetta 10 Lämplig för veganer.',
  ingredients_sv = 'Äppelcidervinäger, socker, Trinidad Scorpion chili, röd paprika, salt'
WHERE slug = 'trinidad-scorpion';

-- "Regret" SUPER EXTREME
UPDATE public.products SET 
  description_sv = '"Regret" SUPER EXTREME Chilisås (Hetta 20). Namnet säger allt... Med en styrka på 20 är detta en av de starkaste såserna vi någonsin har haft. Endast för äkta "chiliheads" utan fruktan. Använd på egen risk!',
  ingredients_sv = 'Extremt stark chili (Carolina Reaper), chiliextrakt, vinäger, salt'
WHERE slug = 'regret-extreme-hot-sauce';
