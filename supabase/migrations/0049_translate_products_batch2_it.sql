-- Migration: Translate products batch 2 (Italian)

-- Happy Hatter Hot Sauce - SMOKED
UPDATE public.products SET 
  description_it = 'Happy Hatter Hot Sauce – SMOKED. Ingredienti ; Frutti di bosco, vino Porto rosso, aceto di vino rosso, datteri, miele di fiori, peperoncini Ghost, cipolla rossa, scalogno, aglio, polvere di chipotle, paprika affumicata, olio d''oliva, sale. Una salsa ricca e affumicata, dolce e deliziosa. Ricca di peperoncini Ghost, Chipotle messicano affumicato e succosi frutti di bosco. Decisa, corposa e vellutata con un finale piccante persistente. Perfetta con selvaggina, bistecca, pulled pork o un burger. Grado di piccantezza 7 Non adatto ai vegani (contiene miele)',
  ingredients_it = 'Frutti di bosco, vino Porto rosso, aceto di vino rosso, datteri, miele di fiori, peperoncini Ghost, cipolla rossa, scalogno, aglio, polvere di chipotle, paprika affumicata, olio d''oliva, sale'
WHERE slug = 'smoked-happy-hatter-hot-sauce';

-- Carolina Reaper Powder 10g
UPDATE public.products SET 
  description_it = 'Polvere di Carolina Reaper 10g. 1,8 milioni – 2,2 milioni SHU. La polvere di peperoncino più piccante al mondo. Usare con estrema cautela. Perfetta per aggiungere calore istantaneo a qualsiasi piatto. Adatto ai vegani.',
  ingredients_it = 'Peperoncini Carolina Reaper'
WHERE slug = 'carolina-reaper-powder-10g';

-- Mexican Habanero Chili Flakes 20g
UPDATE public.products SET 
  description_it = 'Fiocchi di peperoncino Habanero 100.000 – 350.000 SHU. Il perfetto equilibrio tra calore e sapore. Conosciuti per il loro aroma fruttato, questi fiocchi donano un tocco piccante ai tuoi pasti. Peperoncini Habanero freschi coltivati in Messico, essiccati al forno e tritati. Adatto ai vegani.',
  ingredients_it = 'Peperoncini Habanero essiccati'
WHERE slug = 'habanero-chili-flakes-15g-100000-350000-scoville-heat-units';

-- Mexican Habanero Dried Pods
UPDATE public.products SET 
  description_it = 'Bacche di Habanero Messicano Secche (100.000 - 350.000 SHU). La classica piccantezza fruttata del Messico. Ideale per salse, marinature e stufati. Adatto ai vegani.',
  ingredients_it = 'Peperoncini Habanero essiccati'
WHERE slug = 'mexican-habanero-peppers-100000-350000-scoville-heat-units';

-- Naga / Ghost Pepper Dried Pods
UPDATE public.products SET 
  description_it = 'Bacche di Naga / Ghost Pepper Secche 855.000 – 1 milione SHU. Il 3° peperoncino più piccante al mondo. Confezione da 12 peperoncini Ghost essiccati. Sapore affumicato e quasi dolce all''inizio, il calore colpisce dopo 30 secondi. Da usare secchi, tritati o reidratati in acqua calda. Adatto ai vegani.',
  ingredients_it = 'Peperoncini Ghost Pepper (Bhut Jolokia) essiccati'
WHERE slug = 'naga-ghost-pepper-855000-1-million-scoville-heat-units';

-- Mexican Smoked Chipotle Flakes
UPDATE public.products SET 
  description_it = 'Fiocchi di Chipotle Affumicato Messicano - 20g (2500 - 8000 SHU). Deliziosi fiocchi di Jalapeño affumicato. Essenziale nella cucina messicana per quel sapore barbecue profondo e autentico. Adatto ai vegani.',
  ingredients_it = 'Peperoncini Jalapeño essiccati e affumicati (Chipotle)'
WHERE slug = 'mexican-smoked-chipotle-powder-40g-2500-8000-scoville-heat-units';

-- Mexican Habanero Powder 30g
UPDATE public.products SET 
  description_it = 'Polvere di Habanero 100.000 – 350.000 SHU. Prodotta da bacche di Habanero essiccate e finemente macinate. Ideale per piatti messicani o BBQ. Mescolare con maionese o yogurt per un dip piccante. Adatto ai vegani.',
  ingredients_it = 'Polvere di peperoncino Habanero'
WHERE slug = 'habanero-powder-40g-100000-350000-scoville-heat-units';

-- 33% Pure Carolina Reaper Sambal
UPDATE public.products SET 
  description_it = 'Sambal 33% Carolina Reaper Puro. Ingredienti ; Cipolle 40%, Carolina Reaper 33%, zucchero raffinato 8%, olio di girasole 7,5%, salsa di soia dolce 7,5%, aceto bianco 0,5%, sale, spezie. Prodotto dal famoso Devon Chilli Man nel Regno Unito. Un sapore dolce grazie alle cipolle caramellate, seguito da una scarica di calore dei Carolina Reaper freschi. Grado di piccantezza 12 Adatto ai vegani',
  ingredients_it = 'Cipolle 40%, Carolina Reaper 33%, zucchero raffinato 8%, olio di girasole 7,5%, salsa di soia dolce 7,5%, aceto bianco 0,5%, sale, spezie'
WHERE slug = '33-carolina-reaper-sambal-heat-level-15';

-- Chilisaus.be - The 2020 Edition - Garlic Italian
UPDATE public.products SET 
  description_it = 'Garlic Italian (senza zuccheri aggiunti) Perfetta per gli spaghetti. Ingredienti ; Olio di colza, acqua, aceto di vino bianco, olio d''oliva, peperoncino rosso, peperoncino Naga (3%), purè di aglio, sale, spezie, erbe aromatche. La nostra primissima salsa! Ingredienti di alta qualità, olio d''oliva vellutato, peperoncini Naga Ghost freschi, MOLTO aglio ed erbe italiane. Semplice e deliziosa. Grado di piccantezza 8 Adatto ai vegani',
  ingredients_it = 'Olio di colza, acqua, aceto di vino bianco, olio d''oliva, peperoncino rosso, peperoncino Naga (3%), purè di aglio, sale, spezie, erbe aromatiche'
WHERE slug = 'chilisaus-be-the-2020-edition-heat-level-8';

-- Carolina Reaper Flakes 10g
UPDATE public.products SET 
  description_it = 'Fiocchi di Carolina Reaper 1,8 milioni – 2,2 milioni SHU. Il peperoncino più piccante al mondo, essiccato e tritato in splendidi fiocchi di fuoco (semi inclusi). Un pizzico è sufficiente per dare quel tocco Reaper a zuppe, curry o pasta. Usare con cautela. Adatto ai vegani.',
  ingredients_it = 'Fiocchi di peperoncino Carolina Reaper'
WHERE slug = 'carolina-reaper-flakes-10g-1-8-million-2-2-million-scoville-heat-units';

-- Happy Hatter Hot Sauce - BOMBAY
UPDATE public.products SET 
  description_it = 'Happy Hatter Hot Sauce – BOMBAY. Ingredienti ; Mango, ananas, peperoncino Habanero giallo, cipolla, aceto di vino bianco, zucchero di canna, banane, aglio, succo di lime, olio d''oliva, miscela di spezie (contiene sedano), sale. Una salsa fresca e fruttata con curcuma e spezie asiatiche. Perfettamente bilanciata con un bel calore dall''Habanero giallo. Ideale per wok o piatti di riso. Grado di piccantezza 8 Adatto ai vegani',
  ingredients_it = 'Mango, ananas, peperoncino Habanero giallo, cipolla, aceto di vino bianco, zucchero di canna, banane, aglio, succo di lime, olio d''oliva, miscela di spezie (contiene sedano), sale'
WHERE slug = 'happy-hatter-bombay-produced-in-belgium-heat-level-7';

-- Naga / Ghost Pepper Powder 10g
UPDATE public.products SET 
  description_it = 'Polvere di Naga / Ghost 855.000 - 1 milione SHU. Direttamente dal Nagaland, India. Sapore affumicato e quasi dolce all''inizio, ma il calore intenso ti sorprende dopo 30-40 secondi. Usare con cura. Adatto ai vegani.',
  ingredients_it = 'Polvere di peperoncino Ghost Pepper'
WHERE slug = 'naga-ghost-powder-10g-850000-1-million-scoville-heat-units';

-- Naga / Ghost Pepper Flakes 10g
UPDATE public.products SET 
  description_it = 'Fiocchi di peperoncino Naga / Ghost 855.000 - 1 milione SHU. Direttamente dal Nagaland, questi fiocchi sono un''ottima alternativa ai peperoncini freschi per dare un calore estremo ai tuoi piatti. Adatto ai vegani.',
  ingredients_it = 'Fiocchi di peperoncino Ghost Pepper'
WHERE slug = 'naga-ghost-pepper-flakes-10g-855000-1-million-scoville-heat-units';

-- Happy Hatter Gift Box
UPDATE public.products SET 
  description_it = 'Famiglia Happy Hatter – 3 Salse – Presentate in una confezione regalo artigianale. Contiene ORIGINAL (Piccantezza 6), SMOKED (Piccantezza 7) e BOMBAY (Piccantezza 7). 100% qualità del produttore belga Wim Daans.',
  details_it = 'Contiene 3 bottiglie da 100ml: Original, Smoked e Bombay.'
WHERE slug = 'happy-hatter-trio-gift-boxed';

-- The Carolina Reaper Essentials Kit
UPDATE public.products SET 
  description_it = 'Il kit essenziale Carolina Reaper: Bacche, Polvere, Sambal e Salsa. Tutto ciò di cui hai bisogno per provare il peperoncino più piccante al mondo in 4 forme diverse. Piccantezza massima garantita! Adatto ai vegani.',
  details_it = 'Include: 1x Salsa, 1x Sambal, 1x Polvere, 1x Bacche secche.'
WHERE slug = 'the-ultimate-reaper-pack';

-- White Whale Sauces - Limonhello
UPDATE public.products SET 
  description_it = '"Limon-hello" Utilizza solo i migliori limoni "Sfusato" della costa amalfitana in Italia. Ingredienti ; Peperoncini Madame Jeanette, limoni Sfusato, carota, cipolla, peperone giallo, aglio, zenzero, aceto di sidro, curcuma, sale. Una salsa fresca e vivace, ricca di vitamina C. Fantastica con pesce, taco o in un cocktail. Senza glutine, senza zuccheri aggiunti. Grado di piccantezza 8 Adatto ai vegani',
  ingredients_it = 'Peperoncini Madame Jeanette, limoni Sfusato, carota, cipolla, peperone giallo, aglio, zenzero, aceto di sidro, curcuma, sale'
WHERE slug = 'white-whale-sauces-limonhello-hot-sauce-heat-level-8';

-- "The Ripper"
UPDATE public.products SET 
  description_it = 'The Ripper (senza zuccheri aggiunti). Ingredienti: Peperoncino Scotch Bonnet, peperone rosso, peperoncino Carolina Reaper, aceto di sidro, sale, polvere di peperoncino, estratto di peperoncino. Una combinazione pericolosamente deliziosa di Scotch Bonnet fruttato e del Carolina Reaper più piccante al mondo. Bruciore massimo! Grado di piccantezza 12 Adatto ai vegani',
  ingredients_it = 'Peperoncino Scotch Bonnet, peperone rosso, peperoncino Carolina Reaper, aceto di sidro, sale, polvere di peperoncino, estratto di peperoncino'
WHERE slug = 'the-ripper-carolina-reaper';

-- Crazy Bastard - FULL Collection
UPDATE public.products SET 
  description_it = 'La collezione completa Crazy Bastard - 7 salse in una confezione regalo. Realizzate a mano a Berlino con peperoncini arrostiti al forno e ingredienti naturali freschi. Senza zuccheri raffinati o estratti. Contiene tutte le varianti, dallo Jalapeño al Carolina Reaper.',
  details_it = 'Contiene 7 bottiglie da 100ml: Verde, Rosa, Blu, Gialla, Arancione, Rossa e Nera.'
WHERE slug = 'crazy-bastard-full-collection-x7-sauces';

-- Crazy Bastard HOT BOX
UPDATE public.products SET 
  description_it = 'Crazy Bastard Hot Box - Le 3 salse più piccanti della collezione: Arancione (Ghost Pepper e Mango), Rossa (Trinidad Scorpion e Clementina) e Nera (Carolina Reaper e Mirtillo). Per i veri amanti del brivido. Adatto ai vegani.',
  details_it = 'Contiene 3 bottiglie da 100ml: Ghost Pepper, Trinidad Scorpion e Carolina Reaper.'
WHERE slug = 'crazy-bastard-hot-box-x3-heat-level-10';

-- RED - Trinidad Scorpion & Clementine
UPDATE public.products SET 
  description_it = 'RED - Salsa Trinidad Scorpion e Clementina. Ingredienti: Peperoni, mela, cipolla, aceto di vino bianco, clementine (10%), peperoncino Trinidad Scorpion (6%), aglio, lime, olio d''oliva, sale marino. La seconda salsa più piccante della collezione. Ideale con pesce alla griglia o gamberi. Grado di piccantezza 10 Adatto ai vegani',
  ingredients_it = 'Peperoni, mela, cipolla, aceto di vino bianco, clementine (10%), peperoncino Trinidad Scorpion (6%), aglio, lime, olio d''oliva, sale marino'
WHERE slug = 'red-trinidad-scorpion-clementine-heat-level-10';
