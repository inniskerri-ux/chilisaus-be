-- Migration: Translate products batch 3 (Dutch)

-- Lord Reaper (UK) - Carolina Reaper Hot Sauce
UPDATE public.products SET 
  description_nl = 'Carolina Reaper gefermenteerde hete saus 100ml. Ingrediënten; Water, koolzaadolie, Carolina Reaper chili (20%), azijn, sojasaus (water, SOJAbonen, zout, TARWEbloem, suiker), sinaasappel (uit concentraat), rietsuiker, kruiden, zout, gember, knoflookpuree, citroen (uit concentraat), stabilisator: xanthaangom. "Superheet en superlekker met gefermenteerde Carolina Reaper pepers... Als je de hitte aankunt, ervaar je verschillende smaaklagen in deze vurige saus." Dik en plakkerig met een geweldige Reaper-hitte. Werkt uitstekend als woksaus, marinade of glazuur voor vlees. Geschikt voor veganisten.',
  ingredients_nl = 'Water, koolzaadolie, Carolina Reaper chili (20%), azijn, sojasaus (water, SOJAbonen, zout, TARWEbloem, suiker), sinaasappel (uit concentraat), rietsuiker, kruiden, zout, gember, knoflookpuree, citroen (uit concentraat), stabilisator: xanthaangom'
WHERE slug = 'lord-reaper-carolina-reaper-hot-sauce-heat-level-10';

-- Johnny Scoville - Tube Of Terror Challenge V1.0 Peanuts
UPDATE public.products SET 
  description_nl = 'TUBE OF TERROR CHALLENGE. Elke tube bevat genoeg pinda''s voor een uitdaging met 5-6 personen of één zeer dappere ziel. De heetste pinda-uitdaging die er is! Pinda''s overladen met Carolina Reaper, Trinidad Moruga Scorpion, 7 Pot Brain Strain, 7 Pot Duglah en Ghost Peppers, plus puur capsaïcine-kristallen van 13.000.000 Scoville. Niet voor bangeriken, kinderen of mensen met medische aandoeningen.',
  ingredients_nl = 'Pinda''s, Carolina Reaper, Trinidad Moruga Scorpion, 7 Pot Brain Strain, 7 Pot Duglah, Ghost Peppers, Pure Capsaïcine Kristallen (13M SHU)'
WHERE slug = 'johnny-scoville-tube-of-terror-challenge-v1-0-peanuts-heat-level-off-the-scale';

-- Chipotle Adobo Seasoning
UPDATE public.products SET 
  description_nl = 'Mexicaanse Chipotle Adobo - Gedroogde kruidenmix. Ingrediënten: Komijn, paprika, knoflook, ui, chipotle, oregano, peper, tomaat, zout. Geïnspireerd op de traditionele Mexicaanse keuken. Adobo is aards, rokerig en rijk aan tomaat en knoflook. Geweldig voor alle Mexicaanse gerechten, nacho''s, burrito''s of als marinade voor ribs. Geschikt voor veganisten.',
  ingredients_nl = 'Komijn, paprika, knoflook, ui, chipotle, oregano, peper, tomaat, zout'
WHERE slug = 'chipotle-adobo-heat-level-5-65g';

-- Piri Piri & Co, PORTUGAL - Scorpion Chili Oil
UPDATE public.products SET 
  description_nl = 'Portugese Chili Olie. Ingrediënten: Zonnebloemolie, Trinidad Scorpion, Ghost Pepper, Habanero, Malagueta peper, citroen, zout. De smaak en hitte van de pepers komen echt naar voren in deze olie. Gebruikt 4 verschillende soorten pepers, allemaal geteeld op hun boerderij in de Algarve. Fris door de citroenschil. Een compliment voor elk gerecht. Geschikt voor veganisten.',
  ingredients_nl = 'Zonnebloemolie, Trinidad Scorpion, Ghost Pepper, Habanero, Malagueta peper, citroen, zout'
WHERE slug = 'piri-piri-co-portugal-scorpion-chili-oil-heat-level-8-100ml';

-- Piri Piri & Co, PORTUGAL - x6 Sauce Gift Box
UPDATE public.products SET 
  description_nl = 'Onze favorieten uit Portugal in reisformaat (50ml). Allemaal gemaakt met vers geteelde Portugese pepers. Echte smaak, echte hitte. Bevat: Fiery Pizza, Habanero, Scorpion Oil, Bhutzilla, Supernova en Fogo. Creëer je eigen "Hot Ones Challenge". Geschikt voor veganisten.',
  details_nl = 'Bevat 6 flessen van 50ml met variërende heetheidsniveaus.'
WHERE slug = 'piri-piri-co-portugal-x6-sauce-gift-box-all-heat-levels';

-- Blazing Foods - Death Nut Challenge 3.0
UPDATE public.products SET 
  description_nl = 'De gloednieuwe Death Nut Challenge - Versie 3.0. Bevat 5 niveaus van pinda''s, elk uniek en progressief heter met de heetste pepers ter wereld. Niveau 5 bevat de nieuwe 16 miljoen Scoville Capsaïcine Kristallen. Elke uitdaging is genoeg voor 1-3 dappere spelers. Heetheidsniveau: BUITEN CATEGORIE.',
  ingredients_nl = 'Jumbo XL Virginia pinda''s, suiker, Carolina Reaper, 7-Pot Primo, Ghost Pepper, Scorpion, 16M Pure Capsaïcine Kristallen, zeezout, kruiden'
WHERE slug = 'blazing-foods-death-nut-challenge-3-0-heat-level-off-the-scale';

-- 7Pot Habanero Pineapple
UPDATE public.products SET 
  description_nl = 'Chilisaus.be Limited Edition Range. Een heerlijke combinatie van 7Pot pepers, Habanero en ananas. In samenwerking met Uncle Paul. Heetheidsniveau 6.',
  ingredients_nl = '7Pot pepers, Habanero, Ananas, azijn, zout'
WHERE slug = 'chilisaus-be-limited-edition-range-7pot-habanero-pineapple-heat-level-6';

-- Hurtberry Ghost Sriracha
UPDATE public.products SET 
  description_nl = 'Chilisaus.be Limited Edition Range. Een intense Ghost Pepper Sriracha in samenwerking met Uncle Paul. Voor de liefhebbers van een serieuze kick. Heetheidsniveau 10.',
  ingredients_nl = 'Ghost Peppers, knoflook, azijn, suiker, zout'
WHERE slug = 'chilisaus-be-limited-edition-range-hurtberry-ghost-sriracha-heat-level-10';

-- Scotch Bonnet Flakes - 30g
UPDATE public.products SET 
  description_nl = 'Scotch Bonnet Vlokken (100.000–350.000 SHU). De Scotch Bonnet peper is familie van de Habanero en veel gebruikt in de Caribische keuken. De smaak is fruitig en helder met een beetje zoetheid. Perfect voor Jerk Chicken. Geschikt voor veganisten.',
  ingredients_nl = 'Gedroogde Scotch Bonnet pepervlokken'
WHERE slug = 'scotch-bonnet-flakes-30g-100000-350000-scoville-heat-units';

-- Scotch Bonnet Pods 20g
UPDATE public.products SET 
  description_nl = 'Scotch Bonnet Pepernoten (100.000–350.000 SHU). Hele gedroogde Scotch Bonnet pepers. Gebruik ze in hun geheel, vermaal ze tot poeder of week ze in heet water. Geeft een authentieke Caribische en West-Afrikaanse smaak aan je gerechten. Geschikt voor veganisten.',
  ingredients_nl = 'Gedroogde Scotch Bonnet pepers'
WHERE slug = 'scotch-bonnet-pods-20g-100000-350000-scoville-heat-units';

-- Chilisaus.be - The 2024 Edition - Kokos Kerrie
UPDATE public.products SET 
  description_nl = 'Chilisaus.be – Editie 2024 – Coconut Curry Paste met een twist. Ingrediënten; Pepers (Birds Eye, Madame Jeanette, Lombok), tomaat, kokosmelk, ui, kokosazijn, water, pinda, knoflook, koriander, kokossuiker, gember, kruiden en specerijen (mosterd), zout. Een samenwerking met White Whale Sauces. Heetheidsniveau 8.',
  ingredients_nl = 'Pepers (Birds Eye, Madame Jeanette, Lombok), tomaat, kokosmelk, ui, kokosazijn, water, pinda, knoflook, koriander, kokossuiker, gember, kruiden (mosterd), zout'
WHERE slug = 'the-2024-edition-kokos-kerrie-coconut-curry-heat-level-8';

-- Pepper X - Sizzling Steak Seasoning
UPDATE public.products SET 
  description_nl = 's Werelds nieuwste heetste peper: PEPPER X (2,693 miljoen SHU). Hoewel de pepers zelf nog niet commercieel verkrijgbaar zijn, zijn deze kruidenmixen van Ed Currie (PukkerButt Pepper Company) dat wel! SIZZLING STEAK Ingrediënten: Grof zout, kruiden (waaronder zwarte peper en rode peper), knoflook, ui, zonnebloemolie, Pepper X. Geef je biefstuk, tofu of groenten een extreme kick. Geschikt voor veganisten.',
  ingredients_nl = 'Grof zout, zwarte peper, rode peper, knoflook, ui, zonnebloemolie, Pepper X extract'
WHERE slug = 'smokin-eds-pepper-x-sizzling-steak-seasoning';

-- Pepper X - Spicy Italian Seasoning
UPDATE public.products SET 
  description_nl = 'Pepper X - Spicy Italian Seasoning. Maak je pizza, pasta of marinades extreem heet met deze mix die de beruchte Pepper X bevat. Ontwikkeld door Ed Currie, de maker van de Carolina Reaper. Geschikt voor veganisten.',
  ingredients_nl = 'Italiaanse kruiden, Pepper X poeder'
WHERE slug = 'smokin-eds-pepper-x-spicy-italian-seasoning';

-- Pepper X - Spicy Garlicious Seasoning
UPDATE public.products SET 
  description_nl = 'Pepper X - Spicy Garlicious Seasoning. Een knoflookachtige kruidenmix met de hitte van Pepper X. Perfect om elke maaltijd direct naar een hoger plan te tillen. Geschikt voor veganisten.',
  ingredients_nl = 'Zout, knoflook, chilipeperpoeder, Pepper X'
WHERE slug = 'smokin-eds-pepper-x-spicy-garlicious-seasoning';

-- Cajun Spice Seasoning
UPDATE public.products SET 
  description_nl = 'Cajun Kruidenmix (Heetheid 4). Een klassieke Louisiana-stijl mix, perfect voor vis, kip of groenten. Geeft een milde hitte en diepe smaak. Geschikt voor veganisten.',
  ingredients_nl = 'Paprika, knoflook, ui, zwarte peper, cayenne, oregano, tijm'
WHERE slug = 'cajun-spice-seasoning-heat-level-4';

-- Piri Piri & Co, PORTUGAL - FOGO
UPDATE public.products SET 
  description_nl = '"FOGO" (Portugees voor VUUR) met Carolina Reaper en Trinidad Moruga Scorpion. Ingrediënten: Carolina Reaper, ananas, water, appelazijn, Licor Brutal, groene mango, Moruga pepers, Muscovado suiker, zout, munt, xanthaangom. Fris, levendig en fruitig met een verrassende hint van munt en een splash van Licor Brutal voordat de extreme hitte toeslaat. Heetheidsniveau 12.',
  ingredients_nl = 'Carolina Reaper, ananas, water, appelazijn, Licor Brutal, groene mango, Moruga pepers, Muscovado suiker, zout, munt, xanthaangom'
WHERE slug = 'piri-piri-co-portugal-fogo-heat-level-12';

-- El Jefe - Verde
UPDATE public.products SET 
  description_nl = 'Mexicaanse Stijl Verse Groene Salsa. Ingrediënten; Tomatillo''s, jalapeños, knoflook, citroensap, zonnebloemolie, uienpoeder, zeezout. Onze "ontbijtsalsa" - licht, fris en een tikkeltje zuur door de tomatillo. Een klassieke Salsa Verde, geperfectioneerd door El Jefe. Perfect voor nacho''s, burrito''s of eieren. Heetheidsniveau 4. Geschikt voor veganisten.',
  ingredients_nl = 'Tomatillo''s, jalapeños, knoflook, citroensap, zonnebloemolie, uienpoeder, zeezout'
WHERE slug = 'el-jefe-verde-mexican-salsa-heat-level-4';

-- The Chilli Alchemist - "Dark Matter"
UPDATE public.products SET 
  description_nl = '70% Belgische pure chocolade met chili, Ghost Pepper, munt en knettersuiker. Ingrediënten; Pure chocolade (cacaomassa 70%, suiker, cacaoboter, emulgator - SOJA-lecithine, natuurlijke vanille), knettersuiker (2%), Naga chili poeder (0,1%), essentiële muntolie. Een unieke smaakervaring met kleine explosies van knettersuiker. Mild tot medium heetheid. Geschikt voor vegetariërs.',
  ingredients_nl = 'Pure chocolade (70% cacao), knettersuiker, Naga chili poeder, muntolie'
WHERE slug = 'the-chilli-alchemist-dark-matter-belgian-chili-chocolate-heat-level-4-5-100g';

-- Hot Headz - Smoked Chilli + Garlic
UPDATE public.products SET 
  description_nl = 'Ingrediënten; Tomatenpuree, water, appelazijn, uien, suiker, sesamzaadjes, kruiden, chipotle, habanero, guajillo chili, gerookte knoflook, zout. Een fantastisch product voor de liefhebber van sterke rook- en knoflooksmaken! Dik, chunky en vol van smaak. Heetheidsniveau 5.',
  ingredients_nl = 'Tomatenpuree, water, appelazijn, uien, suiker, sesamzaadjes, kruiden, chipotle, habanero, guajillo chili, gerookte knoflook, zout'
WHERE slug = 'hot-headz-smoked-chilli-garlic';

-- Singularity Sauce Co - Buffalo Hot Sauce
UPDATE public.products SET 
  description_nl = 'Singularity Buffalo Hot Sauce. Ingrediënten; Kombucha-azijn, Cayenne-mash (cayennepeper, zout, azijnzuur), plantaardige boter, bruine suiker, knoflookpoeder, zout, gerookte paprika, xanthaangom. De Schotse variant van de klassieke Buffalo saus. Geweldig bij alles wat je een Buffalo-twist wilt geven. Heetheidsniveau 4. Geschikt voor veganisten.',
  ingredients_nl = 'Kombucha-azijn, Cayennepeper, plantaardige boter, bruine suiker, knoflookpoeder, zout, gerookte paprika, xanthaangom'
WHERE slug = 'singularity-sauce-co-buffalo-hot-sauce-148ml-heat-level-4';
