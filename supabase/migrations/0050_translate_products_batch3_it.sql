-- Migration: Translate products batch 3 (Italian)

-- Chilisaus.be - The 2022 Edition "CHOCOLATE SMOKED"
UPDATE public.products SET 
  description_it = 'Chilisaus.be - L''Edizione 2022 - CHOCOLATE SMOKED (senza zuccheri aggiunti). Ingredienti ; Peperoni arrostiti, aceto di vino rosso, Carolina Reaper, Chipotle affumicato, cipolla rossa, aglio arrostito, lime, cacao crudo, zenzero, olio d''oliva, sale, erbe di Provenza. Una vera esplosione di sapori fruttati e affumicati con un finale vellutato di cioccolato. Grado di piccantezza 10 Adatto ai vegani',
  ingredients_it = 'Peperoni arrostiti, aceto di vino rosso, Carolina Reaper, Chipotle affumicato, cipolla rossa, aglio arrostito, lime, cacao crudo, zenzero, olio d''oliva, sale, erbe di Provenza'
WHERE slug = 'the-2022-edition-smoked-heat-level-10';

-- Venus - Carolina Reaper Mayonnaise
UPDATE public.products SET 
  description_it = 'Maionese al Carolina Reaper - 180g. Ingredienti ; Olio di colza, tuorlo d''uovo pastorizzato da galline allevate all''aperto, senape di Digione, purè di Carolina Reaper, aceto di sidro, succo di limone, zucchero, amido di patate, sale, pepe. Cremosa, densa e deliziosamente piccante. Sostituisci la tua maionese abituale con questa versione al Reaper per un tocco in più a ogni piatto. Grado di piccantezza 9 Non adatto ai vegani',
  ingredients_it = 'Olio di colza, tuorlo d''uovo pastorizzato, senape di Digione, purè di Carolina Reaper, aceto di sidro, succo di limone, zucchero, amido di patate, sale, pepe'
WHERE slug = 'venus-carolina-reaper-mayonnaise';

-- Johnny Scoville - Tube of Terror Challenge V2.0
UPDATE public.products SET 
  description_it = 'SFIDA TUBE OF TERROR - Versione 2.0. Ingredienti ; Mais, olio di mais, peperoncini (Carolina Reaper, Moruga Scorpion, 7-Pot Primo, 7-Pot Douglah, Ghost), sale marino, spezie. Incredibilmente piccante! Chicchi di mais tostati ricoperti da una miscela dei peperoncini più piccanti al mondo. Accetti la sfida?',
  ingredients_it = 'Mais, olio di mais, peperoncini (Carolina Reaper, Moruga Scorpion, 7-Pot Primo, 7-Pot Douglah, Ghost), sale marino, spezie'
WHERE slug = 'johnny-scoville-tube-of-terror-challenge-v2-0-heat-level-off-the-scale';

-- Trinidad Scorpion Powder 10g
UPDATE public.products SET 
  description_it = 'Polvere di Trinidad Scorpion 10g. 1,2 milioni SHU. Il 2° peperoncino più piccante al mondo. Essiccato e macinato in una polvere finissima. Perfetto per aggiungere un calore super forte e progressivo ai tuoi pasti. Usare con cautela.',
  ingredients_it = 'Peperoncini Trinidad Scorpion'
WHERE slug = 'trinidad-scorpion-powder-10g-1-2-million-scoville-heat-units';

-- White Whale Sauces - "Gnarlicky"
UPDATE public.products SET 
  description_it = 'Gnarlicky Ingredienti ; Aglio, peperoncini habanero, cipolla, succo di lime, aceto, olio d''oliva, sale, semi di senape, timo, rosmarino, carbone attivo. Una quantità incredibile di aglio confit e aglio nero fermentato costituisce la base di questa salsa. Crea dipendenza per gli amanti dell''aglio. Grado di piccantezza 6 Adatto ai vegani',
  ingredients_it = 'Aglio, peperoncini habanero, cipolla, succo di lime, aceto, olio d''oliva, sale, semi di senape, timo, rosmarino, carbone attivo'
WHERE slug = 'white-whale-sauces-gnarlicky-heat-level-6';

-- Sweet Heat Hot Honey (NL)
UPDATE public.products SET 
  description_it = 'Miele Piccante – L''ORIGINALE. Ingredienti ; Miele 90%, 10% peperoncini. Deliziosamente additivo, dolce e piccante. Prodotto ad Amsterdam con il miglior miele di fiori e una miscela segreta di peperoncini. Perfetto su pizza, pollo fritto o formaggi. Grado di piccantezza 4 Non adatto ai vegani (contiene miele)',
  ingredients_it = 'Miele 90%, peperoncini 10%'
WHERE slug = 'sweet-heat-hot-honey';

-- Chilisaus.be - The 2023 Edition - "ASIAN MANGO"
UPDATE public.products SET 
  description_it = 'Edizione 2023 - ASIAN MANGO. Ingredienti ; Mango, lime, peperoni arancioni, peperoncini Ghost, peperoncini Madame Jeanette, aceto di sidro, scalogno, succo d''arancia, lemongrass, erbe aromatiche, spezie, sale. Fresca, succosa e molto additiva. Perfetta con la cucina asiatica, riso, pollo o pesce. Grado di piccantezza 10 Adatto ai vegani',
  ingredients_it = 'Mango, lime, peperoni arancioni, peperoncini Ghost, peperoncini Madame Jeanette, aceto di sidro, scalogno, succo d''arancia, lemongrass, erbe aromatiche, spezie, sale'
WHERE slug = 'chilisaus-be-the-2023-edition-asian-mango-heat-level-10';

-- Chilisaus.be TRIO
UPDATE public.products SET 
  description_it = 'TRIO Chilisaus.be - Le nostre 3 salse: Garlic Italian (2020), Chocolate Smoked (2022) e Asian Mango (2023). Un viaggio nel gusto attraverso le nostre creazioni annuali. 100% ingredienti naturali. Adatto ai vegani.',
  details_it = 'Contiene 3 bottiglie: Garlic Italian (Piccantezza 8), Chocolate Smoked (Piccantezza 10), Asian Mango (Piccantezza 10).'
WHERE slug = 'chilisaus-be-trio-all-3-sauces-2020-2022-2023';

-- Happy Hatter Hot Sauce - SHAKIRA
UPDATE public.products SET 
  description_it = 'Happy Hatter Hot Sauce – SHAKIRA. Ingredienti ; Peperoncini Shakira, peperoncini Serrano, aceto di sidro, zucchero di canna, cipolla, aglio, succo di lime, sale, zenzero, olio d''oliva. Una salsa verde leggera, fresca e agrumata che utilizza il peperoncino Shakira di origine araba. Grado di piccantezza 3 Adatto ai vegani',
  ingredients_it = 'Peperoncini Shakira, peperoncini Serrano, aceto di sidro, zucchero di canna, cipolla, aglio, succo di lime, sale, zenzero, olio d''oliva'
WHERE slug = 'happy-hatter-hot-sauce-shakira-heat-level-3';

-- Happy Hatter Hot Sauce - PICKLE PUMPKIN PIRATE
UPDATE public.products SET 
  description_it = 'Happy Hatter – PICKLE PUMPKIN PIRATE. Ingredienti ; Zucca, cetriolini, peperoncini Aji Amarillo, Trinidad Scorpion, cipolla, aceto, zucchero di canna, rum speziato, aglio, lime, sale, erbe aromatiche, olio d''oliva, senape. Una salsa saporita per veri pirati con un tocco di rum. Grado di piccantezza 8 Adatto ai vegani',
  ingredients_it = 'Zucca, cetriolini, peperoncini Aji Amarillo, Trinidad Scorpion, cipolla, aceto, zucchero di canna, rum speziato, aglio, lime, sale, erbe aromatiche, olio d''oliva, senape'
WHERE slug = 'happy-hatter-hot-sauce-pickle-pumpkin-pirate-heat-level-7';

-- Happy Hatter Hot Sauce - THE WHOLE FAMILY
UPDATE public.products SET 
  description_it = 'La Famiglia Happy Hatter al completo - Confezione da 6 salse da 100ml. Dal grado di piccantezza 3 al 10. Contiene: Original, Smoked, Bombay, Shakira, Pickle Pumpkin Pirate e Chocolate Smoked. Un regalo ideale per esplorare tutta la gamma.',
  details_it = 'Contiene 6 bottiglie da 100ml con diversi gradi di piccantezza.'
WHERE slug = 'happy-hatter-the-whole-family-x6-sauces';

-- DOOMSDAY - 1.6 Million Scoville PURE Capsaicin
UPDATE public.products SET 
  description_it = 'DOOMSDAY - Capsaicina Pura 1,6 Milioni SHU - 30ml. Ingredienti ; Estratto di peperoncino a 1,6 milioni di unità Scoville. Da usare solo come additivo per cibi o bevande. Un calore istantaneo e duraturo. Attenzione, prodotto estremamente potente!',
  ingredients_it = 'Estratto di peperoncino a 1,6 milioni SHU'
WHERE slug = 'doomsday-1-6million-scoville-pure-capsaicin-heat-level-15-30ml-dropper';

-- OBLIVION - 500,000 Scoville PURE Capsaicin
UPDATE public.products SET 
  description_it = 'OBLIVION - Capsaicina Pura 500.000 SHU - 30ml. Completamente trasparente, ideale per rendere piccanti i piatti senza alterarne il colore o il gusto originale. Usare con cautela.',
  ingredients_it = 'Estratto di peperoncino a 500.000 SHU'
WHERE slug = 'oblivion-500000-scoville-pure-capsaicin-heat-level-12-30ml-dropper-bottle';

-- El Jefe - PICANTE
UPDATE public.products SET 
  description_it = 'El Jefe - PICANTE. Ingredienti ; Pomodori, peperoncini, aglio, succo di limone, olio di girasole, sale marino. Una salsa in stile messicano con peperoncini affumicati e aglio arrostito. Sapori profondi e consistenza ricca. Grado di piccantezza 6 Adatto ai vegani',
  ingredients_it = 'Pomodori, peperoncini, aglio, succo di limone, olio di girasole, sale marino'
WHERE slug = 'el-jefe-picante-mexican-hot-sauce-heat-level-6';

-- Satan's Spawn Gummy Bears
UPDATE public.products SET 
  description_it = 'Orsetti gommosi Satan''s Spawn - 125g. Questi piccoli orsetti hanno un lato oscuro: sono infusi con peperoncini Habanero forti. Deliziosi e fruttati con una bella bruciatura. Non adatto ai vegani.',
  ingredients_it = 'Sciroppo di glucosio, zucchero, gelatina (suino), acido citrico, aromi, polvere di habanero (0,3%), succhi di frutta concentrati'
WHERE slug = 'satans-spawn-gummy-bears-125g';

-- Lord Reaper (UK) - Carolina Reaper Hot Sauce
UPDATE public.products SET 
  description_it = 'Lord Reaper - Salsa al Carolina Reaper fermentato 100ml. Ingredienti ; Acqua, olio di colza, Carolina Reaper (20%), aceto, salsa di soia, arancia, zucchero di canna, spezie, sale, zenzero, aglio, limone. Densa, appiccicosa e super piccante. Grado di piccantezza 10 Adatto ai vegani',
  ingredients_it = 'Acqua, olio di colza, Carolina Reaper (20%), aceto, salsa di soia, arancia, zucchero di canna, spezie, sale, zenzero, aglio, limone'
WHERE slug = 'lord-reaper-carolina-reaper-hot-sauce-heat-level-10';

-- Johnny Scoville - Tube Of Terror Challenge V1.0 Peanuts
UPDATE public.products SET 
  description_it = 'SFIDA TUBE OF TERROR V1.0. Arachidi ricoperte dai peperoncini più piccanti al mondo: Carolina Reaper, Trinidad Scorpion, 7 Pot Brain Strain, Duglah e Ghost, più cristalli di capsaicina pura a 13M SHU. Buona fortuna!',
  ingredients_it = 'Arachidi, Carolina Reaper, Trinidad Scorpion, 7 Pot Brain Strain, Duglah, Ghost Peppers, cristalli di capsaicina pura'
WHERE slug = 'johnny-scoville-tube-of-terror-challenge-v1-0-peanuts-heat-level-off-the-scale';

-- The Level 20, Shit That's Hot
UPDATE public.products SET 
  description_it = 'LEVEL 20 - Shit that''s Hot! Salsa super piccante. Ingredienti ; Pomodoro, aceto di sidro, aglio, chipotle, habanero lemon, cipolla, succo di lime, sciroppo d''agave, capsaicina pura 9 milioni SHU, erbe aromatiche, spezie, sale. Equilibrio perfetto tra sapore e calore estremo. Grado di piccantezza 20 Adatto ai vegani',
  ingredients_it = 'Pomodoro, aceto di sidro, aglio, chipotle, habanero lemon, cipolla, succo di lime, sciroppo d''agave, capsaicina pura 9M SHU, erbe aromatiche, spezie, sale'
WHERE slug = 'level-20-extreme-heat-sauce';

-- Chipotle Adobo Seasoning
UPDATE public.products SET 
  description_it = 'Condimento Chipotle Adobo - 65g. Ingredienti: Cumino, paprika, aglio, cipolla, chipotle, origano, pepe, pomodoro, sale. Ispirato alla cucina tradizionale messicana. Terroso, affumicato e ricco. Grado di piccantezza 5 Adatto ai vegani.',
  ingredients_it = 'Cumino, paprika, aglio, cipolla, chipotle, origano, pepe, pomodoro, sale'
WHERE slug = 'chipotle-adobo-heat-level-5-65g';

-- Piri Piri & Co, PORTUGAL - Scorpion Chili Oil
UPDATE public.products SET 
  description_it = 'Olio al peperoncino Scorpion - Portogallo. Ingredienti: Olio di girasole, Trinidad Scorpion, Ghost Pepper, Habanero, peperoncino Malagueta, limone, sale. Il sapore dei peperoncini risalta in questo olio vellutato. Grado di piccantezza 8 Adatto ai vegani.',
  ingredients_it = 'Olio di girasole, Trinidad Scorpion, Ghost Pepper, Habanero, peperoncino Malagueta, limone, sale'
WHERE slug = 'piri-piri-co-portugal-scorpion-chili-oil-heat-level-8-100ml';
