-- Migration: Translate products batch 4 (Italian)

-- Blazing Foods - Death Nut Challenge 3.0
UPDATE public.products SET 
  description_it = 'La nuovissima Death Nut Challenge - Versione 3.0. Ingredienti ; Arachidi Jumbo XL Virginia, puro zucchero di canna, peperoncini Carolina Reaper, 7-Pot Primo, peperoncini (Datil, Scotch Bonnet, Ghost, Brain Strain, Duglah, Trinidad Moruga Scorpion), cristalli di capsaicina pura 16M SHU, sale marino, spezie. Cinque livelli di arachidi progressivamente più piccanti. Hai il coraggio di arrivare al livello 5? Grado di piccantezza: FUORI SCALA.',
  ingredients_it = 'Arachidi Jumbo XL, zucchero, Carolina Reaper, 7-Pot Primo, Ghost Pepper, Scorpion, cristalli di capsaicina pura 16M SHU, sale marino, spezie'
WHERE slug = 'blazing-foods-death-nut-challenge-3-0-heat-level-off-the-scale';

-- 7Pot Habanero Pineapple
UPDATE public.products SET 
  description_it = 'Gamma Edizione Limitata Chilisaus.be. Una deliziosa combinazione di peperoncini 7Pot, Habanero e ananas. In collaborazione con Uncle Paul. Grado di piccantezza 6.',
  ingredients_it = 'Peperoncini 7Pot, Habanero, Ananas, aceto, sale'
WHERE slug = 'chilisaus-be-limited-edition-range-7pot-habanero-pineapple-heat-level-6';

-- Hurtberry Ghost Sriracha
UPDATE public.products SET 
  description_it = 'Gamma Edizione Limitata Chilisaus.be. Una Sriracha intensa al peperoncino Ghost in collaborazione con Uncle Paul. Per chi cerca una spinta decisa. Grado di piccantezza 10.',
  ingredients_it = 'Peperoncini Ghost, aglio, aceto, zucchero, sale'
WHERE slug = 'chilisaus-be-limited-edition-range-hurtberry-ghost-sriracha-heat-level-10';

-- Scotch Bonnet Flakes - 30g
UPDATE public.products SET 
  description_it = 'Fiocchi di Scotch Bonnet (100.000 – 350.000 SHU). Il peperoncino Scotch Bonnet appartiene alla famiglia degli Habanero, molto usato nella cucina caraibica. Sapore fruttato e vivace con una punta di dolcezza. Ideale per il Jerk Chicken. Adatto ai vegani.',
  ingredients_it = 'Fiocchi di peperoncino Scotch Bonnet essiccati'
WHERE slug = 'scotch-bonnet-flakes-30g-100000-350000-scoville-heat-units';

-- Scotch Bonnet Pods 20g
UPDATE public.products SET 
  description_it = 'Bacche di Scotch Bonnet (100.000 – 350.000 SHU). Peperoncini Scotch Bonnet interi essiccati. Usali interi, macinati in polvere o reidratati in acqua calda. Apporta un sapore autentico dei Caraibi e dell''Africa occidentale ai tuoi piatti. Adatto ai vegani.',
  ingredients_it = 'Peperoncini Scotch Bonnet essiccati'
WHERE slug = 'scotch-bonnet-pods-20g-100000-350000-scoville-heat-units';

-- Chilisaus.be - The 2024 Edition - Kokos Kerrie
UPDATE public.products SET 
  description_it = 'Chilisaus.be – Edizione 2024 – Pasta di curry al cocco con un tocco speciale. Ingredienti ; Peperoncini (Birds Eye, Madame Jeanette, Lombok), pomodoro, latte di cocco, cipolla, aceto di cocco, acqua, arachidi, aglio, coriandolo, zucchero di cocco, zenzero, erbe e spezie (senape), sale. Una collaborazione con White Whale Sauces. Grado di piccantezza 8.',
  ingredients_it = 'Peperoncini (Birds Eye, Madame Jeanette, Lombok), pomodoro, latte di cocco, cipolla, aceto di cocco, acqua, arachidi, aglio, coriandolo, zucchero di cocco, zenzero, erbe aromatiche (senape), sale'
WHERE slug = 'the-2024-edition-kokos-kerrie-coconut-curry-heat-level-8';

-- Culley's (NZ) World's Hottest Ramen Noodles - V2.0
UPDATE public.products SET 
  description_it = 'I noodle Ramen più piccanti al mondo. Ingredienti ; Noodle (farina di frumento, acqua, uovo), Ramen (peperoncino Naga Jolokia, Carolina Reaper, pasta di miso, salsa di soia, olio di sesamo, erbe aromatiche, spezie). Stimati oltre 1 milione di unità Scoville. Buona fortuna!',
  ingredients_it = 'Noodle (Frumento, Uovo), Naga Jolokia, Carolina Reaper, Pasta di miso, Olio di sesamo, Spezie'
WHERE slug = 'culleys-worlds-hottest-ramen-noodles-v2-0-heat-level-off-the-scale';

-- Germano's (PHL) - Crispy Garlic and Chili Olive Oil
UPDATE public.products SET 
  description_it = 'Olio d''oliva con aglio croccante e chili crunch. Ingredienti ; Peperoncini, aglio, olio d''oliva, condimento, zucchero, sale iodato. Prodotto nelle Filippine, questo olio crea dipendenza. Aglio croccante, piccantezza decisa e profondi sapori tostati. Vincitore della medaglia d''oro ai Clifton National Chilli Awards 2023. Grado di piccantezza 7 Adatto ai vegani.',
  ingredients_it = 'Peperoncini, aglio, olio d''oliva, condimento, zucchero, sale iodato'
WHERE slug = 'germanos-crispy-garlic-and-chili-crunch-olive-oil-heat-level-7';

-- Pepper X - Sizzling Steak Seasoning
UPDATE public.products SET 
  description_it = 'Il nuovo peperoncino più piccante al mondo: PEPPER X (2,693 milioni SHU). SIZZLING STEAK Ingredienti: Sale marino, spezie (tra cui pepe nero e peperoncino rosso), aglio, cipolla, olio di girasole, Pepper X. Dai alle tue bistecche, al tofu o alle verdure un calore estremo. Inventato da Ed Currie. Adatto ai vegani.',
  ingredients_it = 'Sale marino, pepe nero, peperoncino rosso, aglio, cipolla, olio di girasole, Pepper X'
WHERE slug = 'smokin-eds-pepper-x-sizzling-steak-seasoning';

-- Pepper X - Spicy Italian Seasoning
UPDATE public.products SET 
  description_it = 'Condimento Italiano Piccante al Pepper X. Esala le tue pizze, paste o marinature con questa miscela contenente il famoso Pepper X. Creato da Ed Currie, il creatore del Carolina Reaper. Adatto ai vegani.',
  ingredients_it = 'Erbe italiane, polvere di Pepper X'
WHERE slug = 'smokin-eds-pepper-x-spicy-italian-seasoning';

-- Pepper X - Spicy Garlicious Seasoning
UPDATE public.products SET 
  description_it = 'Condimento all''Aglio Piccante al Pepper X. Una miscela di spezie ricca di aglio con il calore massiccio del Pepper X. Perfetto per trasformare ogni pasto in una sfida piccante. Adatto ai vegani.',
  ingredients_it = 'Sale, aglio, peperoncino in polvere, Pepper X'
WHERE slug = 'smokin-eds-pepper-x-spicy-garlicious-seasoning';

-- Cajun Spice Seasoning
UPDATE public.products SET 
  description_it = 'Miscela di spezie Cajun (Piccantezza 4). Un classico stile Louisiana, perfetto per pesce, pollo o verdure. Apporta una piccantezza delicata e un sapore profondo. Adatto ai vegani.',
  ingredients_it = 'Paprika, aglio, cipolla, pepe nero, cayenna, origano, timo'
WHERE slug = 'cajun-spice-seasoning-heat-level-4';

-- Blazin' Inferno Ghost Pepper Seasoning
UPDATE public.products SET 
  description_it = 'Condimento Blazin'' Inferno al peperoncino Ghost (Grado di piccantezza 10). Una miscela potente per chi cerca un calore intenso e istantaneo. Ideale per grigliate e marinature. Adatto ai vegani.',
  ingredients_it = 'Peperoncino Ghost Pepper, sale marino, aglio, spezie'
WHERE slug = 'blazin-inferno-ghost-pepper-seasoning-heat-level-10';

-- Piri Piri & Co, PORTUGAL - FOGO
UPDATE public.products SET 
  description_it = '"FOGO" (fuoco in portoghese) con Carolina Reaper e Trinidad Moruga Scorpion. Ingredienti: Carolina Reaper, ananas, acqua, aceto di sidro, Licor Brutal, mango verde, peperoncini Moruga, zucchero muscovado, sale, menta, gomma xantana. Fresco, vivace e fruttato con una punta di menta sorprendente prima che colpisca il calore estremo. Grado di piccantezza 12.',
  ingredients_it = 'Carolina Reaper, ananas, acqua, aceto di sidro, Licor Brutal, mango verde, peperoncini Moruga, zucchero muscovado, sale, menta, gomma xantana'
WHERE slug = 'piri-piri-co-portugal-fogo-heat-level-12';

-- El Jefe - Verde
UPDATE public.products SET 
  description_it = 'Salsa verde fresca in stile messicano. Ingredienti ; Tomatillos, jalapeños, aglio, succo di limone, olio di girasole, cipolla in polvere, sale marino. La nostra "salsa da colazione": leggera, fresca e leggermente acidula grazie al tomatillo. Una Salsa Verde classica, perfezionata da El Jefe. Grado di piccantezza 4. Adatto ai vegani.',
  ingredients_it = 'Tomatillos, jalapeños, aglio, succo di limone, olio di girasole, cipolla in polvere, sale marino'
WHERE slug = 'el-jefe-verde-mexican-salsa-heat-level-4';

-- The Chilli Alchemist (UK) - "Dark Matter" Belgian Chili + Mint Chocolate
UPDATE public.products SET 
  description_it = 'Cioccolato fondente belga al 70% con Ghost Pepper, menta e zucchero frizzante. Ingredienti ; Cioccolato fondente (pasta di cacao 70%, zucchero, burro di cacao, emulsionante - lecitina di SOIA, vaniglia naturale), zucchero frizzante (2%), polvere di peperoncino Naga (0,1%), olio essenziale di menta. Un''esperienza unica. Calore da leggero a medio. Adatto ai vegetariani.',
  ingredients_it = 'Cioccolato fondente (70% cacao), zucchero frizzante, polvere di peperoncino Naga, olio di menta'
WHERE slug = 'the-chilli-alchemist-dark-matter-belgian-chili-chocolate-heat-level-4-5-100g';

-- Hot Headz - Smoked Chilli + Garlic
UPDATE public.products SET 
  description_it = 'Ingredienti ; Pasta di pomodoro, acqua, aceto di sidro, cipolle, zucchero, semi di sesamo, spezie, chipotle, habanero, peperoncino guajillo, aglio affumicato, sale. Un prodotto fantastico per gli amanti dei sapori affumicati e dell''aglio intensi! Denso e saporito. Grado di piccantezza 5. Adatto ai vegani.',
  ingredients_it = 'Pasta di pomodoro, acqua, aceto di sidro, cipolle, zucchero, semi di sesamo, spezie, chipotle, habanero, peperoncino guajillo, aglio affumicato, sale'
WHERE slug = 'hot-headz-smoked-chilli-garlic';

-- Singularity Sauce Co (UK) - Buffalo Hot Sauce
UPDATE public.products SET 
  description_it = 'Salsa Buffalo Singularity. Ingredienti ; Aceto di Kombucha, purè di Cayenna (peperoncino cayenna, sale, acido acetico), burro vegetale, zucchero di canna, aglio in polvere, sale, paprika affumicata, gomma xantana. La versione scozzese della classica salsa Buffalo. Ideale sulle ali di pollo. Grado di piccantezza 4. Adatto ai vegani.',
  ingredients_it = 'Aceto di Kombucha, peperoncino Cayenna, burro vegetale, zucchero di canna, aglio in polvere, sale, paprika affumicata, gomma xantana'
WHERE slug = 'singularity-sauce-co-buffalo-hot-sauce-148ml-heat-level-4';

-- Dave's Insanity Sauce (USA) The Original
UPDATE public.products SET 
  description_it = 'L''originale Dave''s Insanity Sauce - Come visto nella prima stagione di Hot Ones. Ingredienti ; Peperoncini piccanti, acqua, pasta di pomodoro, estratto di peperoncino, aceto di canna, sale, cipolle, aglio, spezie. Ne basta una goccia! La salsa che ha dato il via al mercato delle salse super piccanti. Grado di piccantezza: MOLTO ALTO. Adatto ai vegani.',
  ingredients_it = 'Peperoncini, acqua, pasta di pomodoro, estratto di peperoncino, aceto di canna, sale, cipolle, aglio, spezie'
WHERE slug = 'daves-insanity-sauce-the-original-148ml-hot-as-hell';

-- Dirty Dick's (USA) Caribbean Dreams
UPDATE public.products SET 
  description_it = 'Dirty Dick''s Caribbean Dreams - Ingredienti ; Peperoncini Habanero, pere, pesche, succo d''ananas, aceto di sidro, senape, succo di mela, zucchero di canna, miele e spezie appena macinate. Una salsa a base di senape in stile caraibico. Sapori decisi, perfettamente bilanciati. Grado di piccantezza 6 Non adatto ai vegani (contiene miele).',
  ingredients_it = 'Peperoncini Habanero, pere, pesche, succo d''ananas, aceto di sidro, senape, succo di mela, zucchero di canna, miele, spezie'
WHERE slug = 'dirty-dicks-caribbean-dreams';
