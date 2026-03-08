-- Migration: Translate products batch 2 (Dutch)

-- Carolina Reaper Powder 10g
UPDATE public.products SET 
  description_nl = 'Carolina Reaper Poeder 10g. 1,8 miljoen – 2,2 miljoen Scoville Heat Units. Het heetste peperpoeder ter wereld. Gebruik met uiterste voorzichtigheid. Perfect om direct hitte toe te voegen aan elk gerecht. Geschikt voor veganisten.',
  ingredients_nl = 'Carolina Reaper pepers'
WHERE slug = 'carolina-reaper-powder-10g';

-- Mexican Habanero Chili Flakes 20g
UPDATE public.products SET 
  description_nl = 'Habanero Chili Vlokken 100.000 – 350.000 Scoville Heat Units. Op zoek naar een chilipeper met de juiste balans tussen hitte en smaak? De Habanero is een perfecte keuze. Deze pepers zijn een van de meest populaire ter wereld, vooral bekend om hun fruitige smaak en een goede balans in hitte. Strooi in elk gerecht om je maaltijd een heerlijke pittige kick te geven. Verse rode habanero pepers worden geteeld in Mexico, schoongemaakt, in de oven gedroogd en vermalen tot deze prachtige donkerrode pepervlokken. Geschikt voor veganisten.',
  ingredients_nl = 'Gedroogde Habanero pepers'
WHERE slug = 'habanero-chili-flakes-15g-100000-350000-scoville-heat-units';

-- Mexican Habanero Dried Pods
UPDATE public.products SET 
  description_nl = 'Mexicaanse Habanero Gedroogde Pepernoten (100.000 - 350.000 Scoville Heat Units). De klassieke fruitige hitte uit Mexico. Perfect voor salsa''s, marinades en stoofschotels. Geschikt voor veganisten.',
  ingredients_nl = 'Gedroogde Habanero pepers'
WHERE slug = 'mexican-habanero-peppers-100000-350000-scoville-heat-units';

-- Naga / Ghost Pepper Dried Pods
UPDATE public.products SET 
  description_nl = 'Naga / Ghost Pepper Pepernoten 855.000 – 1 miljoen Scoville Heat Units. De op twee na heetste peper ter wereld. Een zakje van 12 gedroogde Ghost Peppers. De Naga / Ghost Pepper heeft een paar verschillende namen. De oorspronkelijke Indiase naam is Bhut Jolokia. Het vindt zijn oorsprong in Nagaland, Noordoost-India. Deze peper heeft een geweldige smaak; eerst smaakt hij rokerig, bijna zoet, maar na 30 seconden sluipt de hitte op je af, net als een geest! Gebruik ze gedroogd, vermalen of week ze 10-15 minuten in heet water om ze te hydrateren. Geschikt voor veganisten.',
  ingredients_nl = 'Gedroogde Ghost Peppers (Bhut Jolokia)'
WHERE slug = 'naga-ghost-pepper-855000-1-million-scoville-heat-units';

-- Mexican Smoked Chipotle Flakes
UPDATE public.products SET 
  description_nl = 'Mexicaanse Gerookte Chipotle Vlokken - 20g (2500 - 8000 Scoville Heat Units). Heerlijk rokerige Jalapeño vlokken. Onmisbaar in de Mexicaanse keuken voor die diepe, authentieke BBQ-smaak. Geschikt voor veganisten.',
  ingredients_nl = 'Gerookte gedroogde Jalapeño pepers (Chipotle)'
WHERE slug = 'mexican-smoked-chipotle-powder-40g-2500-8000-scoville-heat-units';

-- Mexican Habanero Powder 30g
UPDATE public.products SET 
  description_nl = 'Habanero Poeder 100.000 – 350.000 Scoville Heat Units. De poeder is afkomstig van hele gedroogde Habanero pepers die fijn gemalen zijn. Ideaal voor Mexicaanse gerechten of de BBQ. Meng door mayo, yoghurt of ketchup voor een pittige dipsaus. Geschikt voor veganisten.',
  ingredients_nl = 'Habanero peperpoeder'
WHERE slug = 'habanero-powder-40g-100000-350000-scoville-heat-units';

-- Chilisaus.be - Garlic Italian
UPDATE public.products SET 
  description_nl = 'Garlic Italian (geen toegevoegde suiker) Perfect voor spaghetti. Ingrediënten; Koolzaadolie, water, witte wijnazijn, olijfol, rode chili, Naga chili (3%), knoflookpuree, zout, kruiden. Geïnspireerd door de gekte van 2020, hebben we samengewerkt met een kleine Britse producent om onze eerste eigen hete saus te lanceren. Topkwaliteit ingrediënten, zijdezachte olijfol, verse Naga / Ghost peppers, VEEL knoflook en Italiaanse kruiden. Simpel en heerlijk. Heetheidsniveau 8 Geschikt voor veganisten',
  ingredients_nl = 'Koolzaadolie, water, witte wijnazijn, olijfol, rode chili, Naga chili (3%), knoflookpuree, zout, kruiden'
WHERE slug = 'chilisaus-be-the-2020-edition-heat-level-8';

-- Carolina Reaper Flakes 10g
UPDATE public.products SET 
  description_nl = 'Carolina Reaper Vlokken 1,8 miljoen – 2,2 miljoen Scoville Heat Units. De heetste chilipeper ter wereld, gedroogd en gemalen tot prachtige vlokken van vuur (inclusief zaden). Een lichte besprenkeling geeft direct die Reaper-kick aan soepen, curry''s of pasta. Gebruik met voorzichtigheid. Geschikt voor veganisten.',
  ingredients_nl = 'Carolina Reaper pepervlokken'
WHERE slug = 'carolina-reaper-flakes-10g-1-8-million-2-2-million-scoville-heat-units';

-- Happy Hatter BOMBAY
UPDATE public.products SET 
  description_nl = 'Happy Hatter Hot Sauce – BOMBAY Ingrediënten; Mango, ananas, gele Habanero chili, ui, witte wijnazijn, rietsuiker, bananen, knoflook, limoensap, olijfol, kruidenmix (bevat selderij), zout. Een verse en fruitige hete saus met kurkuma en Aziatische kruiden. Perfect uitgebalanceerd met een goede hitte van de gele Habanero. Ideaal voor de wok, noedels of rijstgerechten. Ook heerlijk als marinade. Heetheidsniveau 8 Geschikt voor veganisten',
  ingredients_nl = 'Mango, ananas, gele Habanero chili, ui, witte wijnazijn, rietsuiker, bananen, knoflook, limoensap, olijfol, kruidenmix (bevat selderij), zout'
WHERE slug = 'happy-hatter-bombay-produced-in-belgium-heat-level-7';

-- Naga / Ghost Pepper Powder 10g
UPDATE public.products SET 
  description_nl = 'Naga / Ghost Poeder 855.000 - 1 miljoen Scoville Heat Units. Rechtstreeks uit Nagaland, India. Smaakt eerst rokerig en bijna zoet, maar de intense hitte sluipt na 30-40 seconden op je af. Gebruik met zorg. Geschikt voor veganisten.',
  ingredients_nl = 'Ghost Pepper poeder'
WHERE slug = 'naga-ghost-powder-10g-850000-1-million-scoville-heat-units';

-- Naga / Ghost Pepper Flakes 10g
UPDATE public.products SET 
  description_nl = 'Naga / Ghost Peper Vlokken 855.000 - 1 miljoen Scoville Heat Units. Deze vlokken komen rechtstreeks uit Nagaland en moeten met zorg worden gebruikt. Een geweldige vervanger voor verse pepers om een superhete chili-hitte aan je gerechten te geven. Geschikt voor veganisten.',
  ingredients_nl = 'Ghost Pepper vlokken'
WHERE slug = 'naga-ghost-pepper-flakes-10g-855000-1-million-scoville-heat-units';

-- Happy Hatter Gift Box
UPDATE public.products SET 
  description_nl = 'Happy Hatter Familie – 3 Sauzen – Verpakt in een handgemaakte geschenkdoos. Bevat ORIGINAL (Heetheid 6), SMOKED (Heetheid 7) en BOMBAY (Heetheid 7). 100% kwaliteit van de Belgische producent Wim Daans.',
  details_nl = 'Bevat 3x 100ml flessen: Original, Smoked en Bombay.'
WHERE slug = 'happy-hatter-trio-gift-boxed';

-- The Carolina Reaper Essentials Kit
UPDATE public.products SET 
  description_nl = 'De ultieme Reaper-ervaring op 4 verschillende manieren: Reaper Habanero Saus (148ml), 33% Verse Carolina Reaper Sambal (100ml), Carolina Reaper Poeder (10g) en Gedroogde Reaper Pepernoten (10-12 stuks). Alles wat je nodig hebt voor de ultieme hitte-uitdaging. Geschikt voor veganisten.',
  details_nl = 'Inhoud: 1x Saus, 1x Sambal, 1x Poeder, 1x Gedroogde pepers.'
WHERE slug = 'the-ultimate-reaper-pack';

-- White Whale Sauces - Limonhello
UPDATE public.products SET 
  description_nl = '"Limon-hello" Gebruikt alleen de beste "Sfusato" citroenen van de Italiaanse Amalfikust. Ingrediënten; Madame Jeanette pepers, Sfusato citroenen, wortel, ui, gele paprika, knoflook, gember, appelazijn, kurkuma, zout. Een frisse en levendige hete saus, rijk aan vitamine C. Fantastisch bij vis, taco''s, noedels of in een cocktail. Glutenvrij, geen toegevoegde suikers. Heetheidsniveau 8 Geschikt voor veganisten',
  ingredients_nl = 'Madame Jeanette pepers, Sfusato citroenen, wortel, ui, gele paprika, knoflook, gember, appelazijn, kurkuma, zout'
WHERE slug = 'white-whale-sauces-limonhello-hot-sauce-heat-level-8';

-- "The Ripper"
UPDATE public.products SET 
  description_nl = 'The Ripper (geen toegevoegde suiker). Ingrediënten: Scotch Bonnet chili, rode paprika, Carolina Reaper chili, appelazijn, zout, chilipoeder, chili-extract. Een gevaarlijk lekkere combinatie van fruitige Scotch Bonnet en de heetste Carolina Reaper ter wereld. Maximale verbranding! Heetheidsniveau 12 Geschikt voor veganisten',
  ingredients_nl = 'Scotch Bonnet chili, rode paprika, Carolina Reaper chili, appelazijn, zout, chilipoeder, chili-extract'
WHERE slug = 'the-ripper-carolina-reaper';

-- Crazy Bastard - FULL Collection
UPDATE public.products SET 
  description_nl = 'De volledige Crazy Bastard collectie - 7 sauzen in één geschenkdoos. Handgemaakt in Berlijn met in de oven geroosterde chili''s en verse natuurlijke ingrediënten. Geen geraffineerde suikers of extracten. Bevat alle varianten van Jalapeño tot Carolina Reaper.',
  details_nl = 'Bevat 7x 100ml flessen: Groen, Roze, Blauw, Geel, Oranje, Rood en Zwart.'
WHERE slug = 'crazy-bastard-full-collection-x7-sauces';

-- Crazy Bastard HOT BOX
UPDATE public.products SET 
  description_nl = 'Crazy Bastard Hot Box - De 3 heetste sauzen uit de collectie: Oranje (Ghost Pepper & Mango), Rood (Trinidad Scorpion & Clementine) en Zwart (Carolina Reaper & Blueberry). Voor de echte hitteliefhebbers. Geschikt voor veganisten.',
  details_nl = 'Bevat 3x 100ml flessen: Ghost Pepper, Trinidad Scorpion en Carolina Reaper.'
WHERE slug = 'crazy-bastard-hot-box-x3-heat-level-10';

-- RED - Trinidad Scorpion & Clementine
UPDATE public.products SET 
  description_nl = 'RED - Trinidad Scorpion & Clementine. Ingrediënten: Zoete paprika, appel, ui, witte wijnazijn, clementines (10%), Trinidad Scorpion chili (6%), knoflook, limoen, olijfol, zeezout. De op één na heetste saus uit de collectie. Geweldig bij gegrilde vis of gamba''s. Heetheidsniveau 10 Geschikt voor veganisten',
  ingredients_nl = 'Zoete paprika, appel, ui, witte wijnazijn, clementines (10%), Trinidad Scorpion chili (6%), knoflook, limoen, olijfol, zeezout'
WHERE slug = 'red-trinidad-scorpion-clementine-heat-level-10';

-- "Slasher"
UPDATE public.products SET 
  description_nl = '"Slasher" - Een bekroonde samenwerking met een Britse brouwerij. Bevat sappige ananas en "The Raven King" IPA bier. Een heerlijke zoetheid en fruitige Scotch Bonnets voor een medium hitte. Goed bij vis, kip of in de wok. Heetheidsniveau 5 Geschikt voor veganisten',
  ingredients_nl = 'Gele paprika, suiker, ananas, moutazijn (van GERST), Indian Pale Ale bier, knoflook, Scotch Bonnet, vitamine C, hop'
WHERE slug = 'slasher-pineapple-indian-pale-ale-heat-level-5';

-- Crazy Bastard - 3 Best Sellers
UPDATE public.products SET 
  description_nl = 'Crazy Bastard Hot Box - De 3 bestsellers: PINK (Chipotle & Ananas), YELLOW (Habanero & Tomatillo) en ORANGE (Ghost Pepper & Mango). Een perfecte introductie tot het assortiment met verschillende heetheidsniveaus.',
  details_nl = 'Bevat 3x 100ml flessen: Chipotle, Habanero en Ghost Pepper.'
WHERE slug = 'crazy-bastard-sauce-3-best-sellers-box-heat-levels-4-7-10';
