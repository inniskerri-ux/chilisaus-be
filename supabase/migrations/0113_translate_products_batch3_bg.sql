-- Migration: Translate products batch 3 (Bulgarian)

-- Chilisaus.be - The 2022 Edition "CHOCOLATE SMOKED"
UPDATE public.products SET 
  description_bg = 'Chilisaus.be - Издание 2022 - CHOCOLATE SMOKED (без добавена захар). Съставки ; Печени чушки, червен винен оцет, Carolina Reaper, пушен Чипотле, червен лук, печен чесън, лайм, сурово какао, джинджифил, зехтин, сол, провансалски билки. Истинска експлозия от плодови и пушени вкусове с кадифен шоколадов финиш. Ниво на лютивост 10 Подходящ за вегани',
  ingredients_bg = 'Печени чушки, червен винен оцет, Carolina Reaper, пушен Чипотле, червен лук, печен чесън, лайм, сурово какао, джинджифил, зехтин, сол, провансалски билки'
WHERE slug = 'the-2022-edition-smoked-heat-level-10';

-- Venus - Carolina Reaper Mayonnaise
UPDATE public.products SET 
  description_bg = 'Майонеза с Carolina Reaper - 180гр. Съставки ; Рапично масло, пастьоризиран яйчен жълтък от свободно отглеждани кокошки, дижонска горчица, пюре от Carolina Reaper, ябълков оцет, лимонов сок, захар, картофено нишесте, сол, черен пипер. Кремообразна, гъста и изключително люта. Заменете обикновената си майонеза с тази версия за истински удар във всяко ястие. Ниво на лютивост 9 Не е подходяща за вегани',
  ingredients_bg = 'Рапично масло, пастьоризиран яйчен жълтък, дижонска горчица, пюре от Carolina Reaper, ябълков оцет, лимонов сок, захар, картофено нишесте, сол, черен пипер'
WHERE slug = 'venus-carolina-reaper-mayonnaise';

-- Johnny Scoville - Tube of Terror Challenge V2.0
UPDATE public.products SET 
  description_bg = 'ПРЕДИЗВИКАТЕЛСТВО TUBE OF TERROR - Версия 2.0. Съставки ; Царевица, царевично масло, чушки (Carolina Reaper, Moruga Scorpion, 7-Pot Primo, 7-Pot Douglah, Ghost), морска сол, подправки. Диво люто! Печени царевични зърна, обвити в микс от най-лютите чушки в света. Приемате ли предизвикателството?',
  ingredients_bg = 'Царевица, царевично масло, чушки (Carolina Reaper, Moruga Scorpion, 7-Pot Primo, 7-Pot Douglah, Ghost), морска сол, подправки'
WHERE slug = 'johnny-scoville-tube-of-terror-challenge-v2-0-heat-level-off-the-scale';

-- Trinidad Scorpion Powder 10g
UPDATE public.products SET 
  description_bg = 'Trinidad Scorpion на прах 10гр. 1.2 млн. SHU. Втората най-люта чушка в света. Изсушена и смляна на фин прах. Перфектен за добавяне на супер силна, прогресивна лютивост към вашите ястия. Използвайте внимателно.',
  ingredients_bg = 'Чили чушки Trinidad Scorpion'
WHERE slug = 'trinidad-scorpion-powder-10g-1-2-million-scoville-heat-units';

-- White Whale Sauces - "Gnarlicky"
UPDATE public.products SET 
  description_bg = 'Gnarlicky Съставки ; Чесън, хабанеро чушки, лук, сок от лайм, оцет, зехтин, сол, синапено семе, мащерка, розмарин, активен въглен. Невероятно количество конфитиран чесън и ферментирал черен чесън съставляват основата на този сос. Пристрастяващ за феновете на чесъна. Ниво на лютивост 6 Подходящ за вегани',
  ingredients_bg = 'Чесън, хабанеро чушки, лук, сок от лайм, оцет, зехтин, сол, синапено семе, мащерка, розмарин, активен въглен'
WHERE slug = 'white-whale-sauces-gnarlicky-heat-level-6';

-- Sweet Heat Hot Honey (NL)
UPDATE public.products SET 
  description_bg = 'Лют мед – ОРИГИНАЛНИЯТ. Съставки ; Мед 90%, 10% чушки. Вкусно пристрастяващ, сладък и лют. Произведен в Амстердам от най-добрия цветен мед и тайна чили смес. Перфектен върху пица, пържено пиле или сирена. Ниво на лютивост 4 Не е подходящ за вегани (съдържа мед)',
  ingredients_bg = 'Мед 90%, чили чушки 10%'
WHERE slug = 'sweet-heat-hot-honey';

-- Chilisaus.be - The 2023 Edition - "ASIAN MANGO"
UPDATE public.products SET 
  description_bg = 'Издание 2023 - ASIAN MANGO. Съставки ; Манго, лайм, оранжеви чушки, Ghost Peppers, чушки Madame Jeanette, ябълков оцет, шалот, портокалов сок, лимонова трева, билки, подправки, сол. Свеж, сочен и много пристрастяващ. Перфектен за азиатска кухня, ориз, пиле или риба. Ниво на лютивост 10 Подходящ за вегани',
  ingredients_bg = 'Манго, лайм, оранжеви чушки, Ghost Peppers, чушки Madame Jeanette, ябълков оцет, шалот, портокалов сок, лимонова трева, билки, подправки, сол'
WHERE slug = 'chilisaus-be-the-2023-edition-asian-mango-heat-level-10';

-- Chilisaus.be TRIO
UPDATE public.products SET 
  description_bg = 'TRIO Chilisaus.be - Нашите 3 собствени соса: Garlic Italian (2020), Chocolate Smoked (2022) и Asian Mango (2023). Пътешествие във вкусовете чрез нашите годишни творения. 100% натурални съставки. Подходящ за вегани.',
  details_bg = 'Съдържа 3 бутилки: Garlic Italian (Лютивост 8), Chocolate Smoked (Лютивост 10), Asian Mango (Лютивост 10).'
WHERE slug = 'chilisaus-be-trio-all-3-sauces-2020-2022-2023';

-- Happy Hatter Hot Sauce - SHAKIRA
UPDATE public.products SET 
  description_bg = 'Happy Hatter Hot Sauce – SHAKIRA. Съставки ; Чушки Шакира, чушки Серано, ябълков оцет, тръстикова захар, лук, чесън, сок от лайм, сол, джинджифил, зехтин. Лек, свеж и цитрусов зелен сос, използващ чушката Шакира с арабски произход. Ниво на лютивост 3 Подходящ за вегани',
  ingredients_bg = 'Чушки Шакира, чушки Серано, ябълков оцет, тръстикова захар, лук, чесън, сок от лайм, сол, джинджифил, зехтин'
WHERE slug = 'happy-hatter-hot-sauce-shakira-heat-level-3';

-- Happy Hatter Hot Sauce - PICKLE PUMPKIN PIRATE
UPDATE public.products SET 
  description_bg = 'Happy Hatter – PICKLE PUMPKIN PIRATE. Съставки ; Тиква, кисели краставички, чушки Aji Amarillo, Trinidad Scorpion, лук, оцет, тръстикова захар, подправен ром, чесън, лайм, сол, билки, зехтин, горчица. Богат сос за истински пирати с нотка на ром. Ниво на лютивост 8 Подходящ за вегани',
  ingredients_bg = 'Тиква, кисели краставички, чушки Aji Amarillo, Trinidad Scorpion, лук, оцет, тръстикова захар, подправен ром, чесън, лайм, сол, билки, зехтин, горчица'
WHERE slug = 'happy-hatter-hot-sauce-pickle-pumpkin-pirate-heat-level-7';

-- Happy Hatter Hot Sauce - THE WHOLE FAMILY
UPDATE public.products SET 
  description_bg = 'Цялото семейство Happy Hatter - Комплект от 6 соса по 100мл. От ниво на лютивост 3 до 10. Съдържа: Original, Smoked, Bombay, Shakira, Pickle Pumpkin Pirate и Chocolate Smoked. Идеален подарък за опознаване на цялата гама.',
  details_bg = 'Съдържа 6 бутилки по 100мл с различни нива на лютивост.'
WHERE slug = 'happy-hatter-the-whole-family-x6-sauces';

-- DOOMSDAY - 1.6 Million Scoville PURE Capsaicin
UPDATE public.products SET 
  description_bg = 'DOOMSDAY - Чист капсаицин 1.6 млн. SHU - 30мл. Съставки ; Чили екстракт с 1.6 милиона Сковил единици. Да се използва само като добавка към храна или напитки. Моментална и трайна горещина. Внимание, изключително силен продукт!',
  ingredients_bg = 'Чили екстракт с 1.6 млн. SHU'
WHERE slug = 'doomsday-1-6million-scoville-pure-capsaicin-heat-level-15-30ml-dropper';

-- OBLIVION - 500,000 Scoville PURE Capsaicin
UPDATE public.products SET 
  description_bg = 'OBLIVION - Чист капсаицин 500 000 SHU - 30мл. Напълно прозрачен екстракт, идеален за олютяване на ястия, без да променя цвета или оригиналния им вкус. Използвайте внимателно.',
  ingredients_bg = 'Чили екстракт с 500 000 SHU'
WHERE slug = 'oblivion-500000-scoville-pure-capsaicin-heat-level-12-30ml-dropper-bottle';

-- El Jefe - PICANTE
UPDATE public.products SET 
  description_bg = 'El Jefe - PICANTE. Съставки ; Домати, чушки, чесън, лимонов сок, слънчогледово олио, морска сол. Салса в мексикански стил с пушени чушки и печен чесън. Дълбоки вкусове и богата текстура. Ниво на лютивост 6 Подходящ за вегани',
  ingredients_bg = 'Домати, чушки, чесън, лимонов сок, слънчогледово олио, морска сол'
WHERE slug = 'el-jefe-picante-mexican-hot-sauce-heat-level-6';

-- Satan's Spawn Gummy Bears
UPDATE public.products SET 
  description_bg = 'Гумени мечета Satan''s Spawn - 125гр. Тези малки мечета имат тъмна страна: те са инфузирани със силни Хабанеро чушки. Вкусни и плодови със стабилно парене. Не са подходящи за вегани.',
  ingredients_bg = 'Глюкозен сироп, захар, желатин (свински), лимонена киселина, аромати, хабанеро на прах (0.3%), концентрати от плодови сокове'
WHERE slug = 'satans-spawn-gummy-bears-125g';

-- Lord Reaper (UK) - Carolina Reaper Hot Sauce
UPDATE public.products SET 
  description_bg = 'Lord Reaper - Сос от ферментирал Carolina Reaper 100мл. Съставки ; Вода, рапично масло, Carolina Reaper (20%), оцет, соев сос, портокал, тръстикова захар, подправки, сол, джинджифил, чесън, лимон. Гъст, лепкав и супер лют. Ниво на лютивост 10 Подходящ за вегани',
  ingredients_bg = 'Вода, рапично масло, Carolina Reaper (20%), оцет, соев сос, портокал, тръстикова захар, подправки, сол, джинджифил, чесън, лимон'
WHERE slug = 'lord-reaper-carolina-reaper-hot-sauce-heat-level-10';

-- Johnny Scoville - Tube Of Terror Challenge V1.0 Peanuts
UPDATE public.products SET 
  description_bg = 'ПРЕДИЗВИКАТЕЛСТВО TUBE OF TERROR V1.0. Фъстъци, обвити в най-лютите чушки в света: Carolina Reaper, Trinidad Scorpion, 7 Pot Brain Strain, Duglah и Ghost, плюс чисти капсаицинови кристали от 13M SHU. Късмет!',
  ingredients_bg = 'Фъстъци, Carolina Reaper, Trinidad Scorpion, 7 Pot Brain Strain, Duglah, Ghost Peppers, чисти капсаицинови кристали'
WHERE slug = 'johnny-scoville-tube-of-terror-challenge-v1-0-peanuts-heat-level-off-the-scale';

-- The Level 20, Shit That's Hot
UPDATE public.products SET 
  description_bg = 'LEVEL 20 - Shit that''s Hot! Супер лют сос. Съставки ; Домат, ябълков оцет, чесън, чипотле, habanero lemon, лук, сок от лайм, сироп от агаве, чист капсаицин 9 млн. SHU, билки, подправки, сол. Перфектен баланс между вкус и екстремна горещина. Ниво на лютивост 20 Подходящ за вегани',
  ingredients_bg = 'Домат, ябълков оцет, чесън, чипотле, habanero lemon, лук, сок от лайм, сироп от агаве, чист капсаицин 9M SHU, билки, подправки, сол'
WHERE slug = 'level-20-extreme-heat-sauce';

-- Chipotle Adobo Seasoning
UPDATE public.products SET 
  description_bg = 'Подправка Чипотле Адобо - 65гр. Съставки: Кимион, червен пипер, чесън, лук, чипотле, риган, пипер, домат, сол. Вдъхновена от традиционната мексиканска кухня. Земна, пушена и богата. Ниво на лютивост 5 Подходяща за вегани.',
  ingredients_bg = 'Кимион, червен пипер, чесън, лук, чипотле, риган, пипер, домат, сол'
WHERE slug = 'chipotle-adobo-heat-level-5-65g';

-- Piri Piri & Co, PORTUGAL - Scorpion Chili Oil
UPDATE public.products SET 
  description_bg = 'Scorpion чили олио - Португалия. Съставки: Слънчогледово олио, Trinidad Scorpion, Ghost Pepper, Хабанеро, чушка Малагета, лимон, сол. Вкусът на чушките изпъква в това копринено олио. Ниво на лютивост 8 Подходящо за вегани.',
  ingredients_bg = 'Слънчогледово олио, Trinidad Scorpion, Ghost Pepper, Хабанеро, чушка Малагета, лимон, сол'
WHERE slug = 'piri-piri-co-portugal-scorpion-chili-oil-heat-level-8-100ml';
