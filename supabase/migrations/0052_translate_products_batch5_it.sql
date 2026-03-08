-- Migration: Translate products batch 5 (Italian)

-- Black Death - Carolina Reaper + Black Garlic
UPDATE public.products SET 
  description_it = 'Salsa naturale super piccante con Carolina Reaper e aglio nero. Ingredienti ; Aceto balsamico, melassa, aglio nero (8,5%), Carolina Reaper (5,5%), pomodoro in polvere, acqua, cipolla, sale, pepe nero. La star è l''aglio nero fermentato per 14 giorni, che dona una consistenza dolce e sciropposa con note di soia e balsamico. Grado di piccantezza 15. Adatto ai vegani.',
  ingredients_it = 'Aceto balsamico, melassa, aglio nero (8,5%), Carolina Reaper (5,5%), pomodoro in polvere, acqua, cipolla, sale, pepe nero'
WHERE slug = 'black-death-carolina-reaper-black-garlic-heat-level-15';

-- Crazy Bastard Sauce - Caribbean Edition
UPDATE public.products SET 
  description_it = 'La Caribbean Box - 3 salse con 3 diversi peperoncini fruttati dei Caraibi. Un viaggio tropicale attraverso il calore delle Antille. Adatto ai vegani.',
  details_it = 'Contiene 3 bottiglie da 100ml con sapori caraibici.'
WHERE slug = 'crazy-bastard-sauce-caribbean-edition';

-- Chilisaus.be - Limited Edition Range - Bad Decision
UPDATE public.products SET 
  description_it = 'Nostra nuova gamma Edizione Limitata - Bad Decision. Una salsa al peperoncino fermentato con una spinta estrema. A volte una cattiva decisione è la più deliziosa. Grado di piccantezza 11.',
  ingredients_it = 'Peperoncini fermentati, aceto, sale'
WHERE slug = 'chilisaus-be-limited-edition-range-bad-decision-heat-level-11';

-- Dirty Dick’s (USA) Tropical Twist
UPDATE public.products SET 
  description_it = 'COME VISTO IN HOT ONES. Una delle tre migliori salse piccanti degli Stati Uniti. Un tocco tropicale con un sapore pluripremiato. Creata da un pluripremiato chef BBQ. Grado di piccantezza 6.',
  ingredients_it = 'Peperoncini Habanero, frutti tropicali, cipolle, aceto, spezie'
WHERE slug = 'dirty-dicks-usa-tropical-twist';

-- Firelli - Italian Hot Sauce with Porcini Mushrooms
UPDATE public.products SET 
  description_it = 'Orgogliosamente italiana - Salsa piccante con funghi porcini. Realizzata a mano a Parma, Italia. Sapore ricco e complesso con peperoncini calabresi, aceto balsamico ed erbe italiane. Ricca di umami. Grado di piccantezza 6. Adatto ai vegani.',
  ingredients_it = 'Peperoni rossi arrostiti, acqua, aceto balsamico di Modena (11%), aceto di sidro, peperoncini calabresi, succo di limone, zucchero, pepe di Cayenna, spezie, sale, funghi porcini secchi, aglio'
WHERE slug = 'firelli-italian-hot-sauce-with-porcini-mushrooms-heat-level-6-148ml';

-- Firelli - Italian Hot Sauce with Truffles
UPDATE public.products SET 
  description_it = 'Orgogliosamente italiana - Salsa piccante al tartufo. L''incredibile aroma del tartufo italiano combinato con peperoncini calabresi e aceto balsamico. Un tocco di lusso per ogni piatto. Grado di piccantezza 5.',
  ingredients_it = 'Peperoni rossi arrostiti, acqua, aceto balsamico, aroma di tartufo, peperoncini calabresi, spezie'
WHERE slug = 'firelli-italian-hot-sauce-with-truffles-heat-level-5-148ml';

-- High River Sauces - Pepper X - Taco Sauce
UPDATE public.products SET 
  description_it = 'Salsa per taco al Pepper X dagli USA. Il Pepper X è riconosciuto come il peperoncino più piccante al mondo. Questa salsa porta quel calore estremo nei tuoi piatti messicani preferiti. Grado di piccantezza 15.',
  ingredients_it = 'Peperoncini Pepper X, aceto, pomodori, spezie'
WHERE slug = 'high-river-sauces-pepper-x-taco-sauce';

-- Smoky Pepper Seasoning
UPDATE public.products SET 
  description_it = 'Miscela di spezie Pepe Affumicato con Chipotle e Aglio. Ingredienti ; Sale, pepe nero, aglio, grani di pepe bianco, fiocchi di chipotle, scorza di limone, rosmarino, basilico, acido citrico, timo, verbena citrodora, peperoncini secchi. Un ingrediente segreto che eleva ogni pasto. Affumicato con un finale agrumato fresco. Adatto ai vegani.',
  ingredients_it = 'Sale, pepe nero, aglio, pepe bianco, chipotle, scorza di limone, rosmarino, basilico, acido citrico, timo, verbena citrodora, peperoncini secchi'
WHERE slug = 'smoky-pepper-seasoning-heat-level-6-65g';
