-- Migration: Translate products batch 1 (Italian)

-- Evil One
UPDATE public.products SET 
  description_it = 'Evil One Ingredienti ; Peperoni rossi, aceto di sidro, peperoncino Scotch Bonnet (15%), cipolla, polpa d''arancia, polpa e scorza di limone, peperoncino Naga Ghost (3%), carota, aglio, zucchero di canna, estratto di peperoncino (1%), sale marino. Ricco di Scotch Bonnet, peperoncini Naga Ghost e un tocco di capsaicina pura per quella sensazione di bruciore super intensa e duratura, ma senza il retrogusto amaro che spesso danno gli estratti. È una salsa super piccante e deliziosa con note agrumate. Ideale negli spaghetti, su un burger, nel wok, sulla pizza o mescolata con la salsa per un dip piccante incredibile. Grado di piccantezza 10 Adatto ai vegani',
  ingredients_it = 'Peperoni rossi, aceto di sidro, peperoncino Scotch Bonnet (15%), cipolla, polpa d''arancia, polpa e scorza di limone, peperoncino Naga Ghost (3%), carota, aglio, zucchero di canna, estratto di peperoncino (1%), sale marino'
WHERE slug = 'evil-one';

-- Evil Twin
UPDATE public.products SET 
  description_it = 'Evil Twin (senza zuccheri aggiunti) Ingredienti ; Peperoni verdi, aceto, peperoncino Scotch Bonnet, cipolla, mela, lime, peperoncino Naga Ghost, carota, spezie, aglio, estratto di peperoncino (1%), sale. Salsa super piccante con peperoncini Scotch Bonnet, Naga Ghost e 1% di estratto di peperoncino. Ha un calore fantastico, fresco grazie all''aggiunta di lime. Molto ben bilanciata, offre un calore persistente. Perfetta per spaghetti piccanti, aggiunta alla maionese o nel wok. Grado di piccantezza 10 Adatto ai vegani',
  ingredients_it = 'Peperoni verdi, aceto, peperoncino Scotch Bonnet, cipolla, mela, lime, peperoncino Naga Ghost, carota, spezie, aglio, estratto di peperoncino (1%), sale'
WHERE slug = 'evil-twin';

-- Naga Chilli Sauce
UPDATE public.products SET 
  description_it = 'Salsa al peperoncino Naga (Grado di piccantezza 10). Una salsa potente di Wiltshire Chilli Farm che utilizza il famoso peperoncino Naga Ghost per un calore intenso e duraturo che cresce gradualmente. Per palati esperti. Adatto ai vegani.',
  ingredients_it = 'Peperoncini Naga Ghost, aceto, sale, spezie'
WHERE slug = 'naga-chilli-sauce-heat-level-10-140ml';

-- Caribbean Chilli Sauce
UPDATE public.products SET 
  description_it = 'Salsa al peperoncino dei Caraibi (Grado di piccantezza 9). Un''esplosione tropicale di calore e sapore. Ispirata alle salse tradizionali delle isole, ricca di peperoncini e aromi solari. Adatto ai vegani.',
  ingredients_it = 'Peperoncini caraibici, aceto, spezie, sale'
WHERE slug = 'caribbean-chilli-sauce';

-- Tempest Garlic Chili Oil
UPDATE public.products SET 
  description_it = 'Olio al Peperoncino e Aglio Tempest 150ml Ingredienti ; Olio di colza spremuto a freddo, estratto naturale di peperoncino, estratto naturale di aglio. Dedicato agli amanti dell''aglio. Un olio setoso e ricco che diventerà presto una dipendenza. Aggiungilo durante la cottura o usalo a freddo su pizza, pasta o wok. Delizioso con pollo fritto o mescolato con maionese per un aïoli piccante. Grado di piccantezza 5 Adatto ai vegani',
  ingredients_it = 'Olio di colza spremuto a freddo, estratto naturale di peperoncino, estratto naturale di aglio'
WHERE slug = 'tempest';

-- Mango Chilli Sauce
UPDATE public.products SET 
  description_it = 'Salsa al peperoncino e mango (Grado di piccantezza 7). Una salsa deliziosamente fruttata dove la dolcezza del mango maturo si sposa perfettamente con un tocco piccante di peperoncino. Ideale con pollo, insalate o come salsa dip. Adatto ai vegani.',
  ingredients_it = 'Mango, peperoncini, aceto, zucchero, sale'
WHERE slug = 'mango-chilli-sauce';

-- Sweet Chilli Sauce
UPDATE public.products SET 
  description_it = 'Salsa di peperoncino dolce (Grado di piccantezza 1). Il classico dip delicato che tutti amano. Equilibrio perfetto tra dolcezza e un leggerissimo pizzico di piccante. Eccellente con involtini primavera o come salsa da tavola versatile. Adatto ai vegani.',
  ingredients_it = 'Peperoncini, zucchero, aceto, aglio, sale'
WHERE slug = 'sweet-chilli-sauce';

-- Reaper Habanero
UPDATE public.products SET 
  description_it = 'Reaper Habanero (Grado di piccantezza 10). Una salsa potente di Wiltshire Chilli Farm che combina il calore estremo del Carolina Reaper con il sapore classico degli Habanero rossi. Semplice ma efficace. Adatto ai vegani.',
  ingredients_it = 'Habanero rosso, aceto di sidro, zucchero di canna, cipolla, peperone rosso, Carolina Reaper, paprika affumicata, aglio'
WHERE slug = 'reaper-habanero';

-- Garlic Chilli Salt
UPDATE public.products SET 
  description_it = 'Sale al peperoncino e aglio (Grado di piccantezza 3). Un sale aromatico delizioso con un leggero tocco di piccante. Ideale da spolverare su patate, verdure o carni per un miglioramento immediato del sapore. Adatto ai vegani.',
  ingredients_it = 'Sale marino, aglio, peperoncini'
WHERE slug = 'garlic-chilli-salt';

-- BLACK - Carolina Reaper & Blueberry
UPDATE public.products SET 
  description_it = 'BLACK - Salsa Carolina Reaper e Mirtilli. Ingredienti: Peperoni, cipolle, aceto di vino bianco, mele, mirtilli (10%), peperoncino Carolina Reaper (8%), lime, olio d''oliva, sale marino. Una combinazione insolita ma fantastica in cui il mirtillo acidulo completa magnificamente il calore estremo del Reaper. Grado di piccantezza 10 Adatto ai vegani.',
  ingredients_it = 'Peperoni, cipolle, aceto di vino bianco, mele, mirtilli (10%), peperoncino Carolina Reaper (8%), lime, olio d''oliva, sale marino'
WHERE slug = 'black-carolina-reaper-blueberry';

-- BLUE - Scotch Bonnet & Caribbean Spices
UPDATE public.products SET 
  description_it = 'BLUE - Salsa Scotch Bonnet e Spezie Caraibiche. Ingredienti: Peperoni, cipolle, aceto di vino bianco, peperoncino Scotch Bonnet (13%), zenzero, aglio, lime, olio d''oliva, sedano, sale, miscela di spezie. Sapore autentico dei Caraibi con il calore caratteristico dello Scotch Bonnet. Grado di piccantezza 5 Adatto ai vegani.',
  ingredients_it = 'Peperoni, cipolle, aceto di vino bianco, peperoncino Scotch Bonnet (13%), zenzero, aglio, lime, olio d''oliva, sedano, sale, miscela di spezie'
WHERE slug = 'blue-scotch-bonnet-caribbean';

-- PINK - Chipotle and Pineapple
UPDATE public.products SET 
  description_it = 'PINK - Salsa Chipotle e Ananas. Ingredienti: Cipolle, peperoni, ananas (17%), aceto di vino bianco, peperoncino Jalapeño rosso, lime, peperoncino Chipotle (1,7%), olio d''oliva, sale. Un equilibrio delizioso tra dolce e affumicato. Grado di piccantezza 4 Adatto ai vegani.',
  ingredients_it = 'Cipolle, peperoni, ananas (17%), aceto di vino bianco, peperoncino Jalapeño rosso, lime, peperoncino Chipotle (1,7%), olio d''oliva, sale'
WHERE slug = 'pink-chipotle-and-pineapple-hot-sauce';

-- Carolina Reaper Dried Pods
UPDATE public.products SET 
  description_it = 'Bacche di Carolina Reaper Secche (1,8 milioni - 2,2 milioni SHU). Il peperoncino più piccante del mondo in forma secca. Per i più audaci che vogliono creare le proprie salse o insaporire i piatti in modo estremo. Adatto ai vegani.',
  ingredients_it = 'Peperoncini Carolina Reaper secchi'
WHERE slug = 'carolina-reaper-dried-peppers';

-- "God Slayer" EXTREME
UPDATE public.products SET 
  description_it = 'Salsa "God Slayer" EXTREME (Grado di piccantezza 15). Una delle salse più intense della nostra gamma. Riservata ai palati più esperti. Adatto ai vegani.',
  ingredients_it = 'Carolina Reaper, estratti di peperoncino, aceto, sale'
WHERE slug = 'god-slayer';

-- ORANGE - Ghost Pepper & Mango
UPDATE public.products SET 
  description_it = 'ORANGE - Salsa Ghost Pepper e Mango. Ingredienti: Peperoni, cipolle, aceto di vino bianco, mango (12%), mele, peperoncino Ghost Pepper Bhut Jolokia (7%), lime, olio d''oliva, cumino, sale marino. Una salsa magnificamente bilanciata dove il calore del Ghost Pepper cresce lentamente. Grado di piccantezza 10 Adatto ai vegani.',
  ingredients_it = 'Peperoni, cipolle, aceto di vino bianco, mango (12%), mele, peperoncino Ghost Pepper Bhut Jolokia (7%), lime, olio d''oliva, cumino, sale marino'
WHERE slug = 'orange-ghost-pepper-and-mango-hot-sauce';

-- Mexican Smoked Chipotle Dried Pods
UPDATE public.products SET 
  description_it = 'Bacche di Chipotle Affumicato Messicano Secche (2500 - 8000 SHU). Jalapeños secchi e affumicati. Essenziale per un sapore affumicato autentico in stufati e zuppe. Adatto ai vegani.',
  ingredients_it = 'Peperoncini Jalapeño secchi e affumicati (Chipotle)'
WHERE slug = 'mexican-smoked-chipotle-peppers';

-- Coffee & Ghost Pepper Seasoning Rub
UPDATE public.products SET 
  description_it = 'Condimento al Caffè e Ghost Pepper. Un rub unico che combina il sapore profondo del caffè con il calore intenso del Ghost Pepper. Perfetto per il barbecue, specialmente su manzo o maiale. Grado di piccantezza 8.',
  ingredients_it = 'Caffè, Ghost Pepper, zucchero, sale, spezie'
WHERE slug = 'black-coffee-ghost-rub';

-- Happy Hatter Hot Sauce - ORIGINAL
UPDATE public.products SET 
  description_it = 'Happy Hatter Hot Sauce – ORIGINAL. Come visto nel popolare show culinario "Dagelijkse Kost". Una salsa a base di pomodoro con un tocco di dolcezza di pesca e peperoncini Madame Jeanette per un colpo fruttato e piccante. Grado di piccantezza 6 Adatto ai vegani.',
  ingredients_it = 'Pomodoro, pesca, cipolla rossa, peperoncini (Madame Jeanette, Birds eye), aglio, mela, aceto, zucchero di canna, lime, sale, sedano, erbe'
WHERE slug = 'happy-hatter-hot-sauce';

-- Trinidad Scorpion
UPDATE public.products SET 
  description_it = 'Trinidad Scorpion - Come visto in "HOT ONES" (Grado di piccantezza 10). Ingredienti: Aceto di sidro, zucchero, peperoncino Trinidad Scorpion, peperoni rossi, sale. Con un morso feroce, questa salsa super piccante è una vera esperienza. Dolce all''inizio, con un calore che cresce per un bruciore duraturo. Grado di piccantezza 10 Adatto ai vegani.',
  ingredients_it = 'Aceto di sidro, zucchero, peperoncino Trinidad Scorpion, peperoni rossi, sale'
WHERE slug = 'trinidad-scorpion';

-- "Regret" SUPER EXTREME
UPDATE public.products SET 
  description_it = 'Salsa "Regret" SUPER EXTREME (Grado di piccantezza 20). Il nome dice tutto... Con un grado di piccantezza di 20, questa è una delle salse più forti che abbiamo mai avuto. Solo per veri "chiliheads" senza paura. Usare a proprio rischio e pericolo!',
  ingredients_it = 'Peperoncini estremamente forti (Carolina Reaper), estratto di peperoncino, aceto, sale'
WHERE slug = 'regret-extreme-hot-sauce';
