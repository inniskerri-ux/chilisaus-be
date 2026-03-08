-- Migration: Translate products batch 3 (Ukrainian)

-- Chilisaus.be - The 2022 Edition "CHOCOLATE SMOKED"
UPDATE public.products SET 
  description_uk = 'Chilisaus.be - Видання 2022 - CHOCOLATE SMOKED (без додавання цукру). Інгредієнти ; Печений перець, червоний винний оцет, Carolina Reaper, копчений чипотле, червона цибуля, запечений часник, лайм, сире какао, імбир, оливкова олія, сіль, прованські трави. Справжній вибух фруктових та димних смаків з оксамитовим шоколадним фінішем. Рівень гостроти 10 Підходить для веганів',
  ingredients_uk = 'Печений перець, червоний винний оцет, Carolina Reaper, копчений чипотле, червона цибуля, запечений часник, лайм, сире какао, імбир, оливкова олія, сіль, прованські трави'
WHERE slug = 'the-2022-edition-smoked-heat-level-10';

-- Venus - Carolina Reaper Mayonnaise
UPDATE public.products SET 
  description_uk = 'Майонез Carolina Reaper - 180г. Інгредієнти ; Ріпакова олія, пастеризований яєчний жовток від курей вільного вигулу, діжонська гірчиця, пюре з Carolina Reaper, яблучний оцет, лимонний сік, цукор, картопляний крохмаль, сіль, перець. Кремовий, густий та апетитно гострий. Замініть свій звичайний майонез цією версією з Ріпером, щоб додати характеру будь-якій страві. Рівень гостроти 9 Не підходить для веганів',
  ingredients_uk = 'Ріпакова олія, пастеризований яєчний жовток, діжонська гірчиця, пюре з Carolina Reaper, яблучний оцет, лимонний сік, цукор, картопляний крохмаль, сіль, перець'
WHERE slug = 'venus-carolina-reaper-mayonnaise';

-- Johnny Scoville - Tube of Terror Challenge V2.0
UPDATE public.products SET 
  description_uk = 'ВИКЛИК TUBE OF TERROR - Версія 2.0. Інгредієнти ; Кукурудза, кукурудзяна олія, перець (Carolina Reaper, Moruga Scorpion, 7-Pot Primo, 7-Pot Douglah, Ghost), морська сіль, спеції. Шалено гостро! Обсмажені зерна кукурудзи, вкриті сумішшю найгостріших перців світу. Приймете виклик?',
  ingredients_uk = 'Кукурудза, кукурудзяна олія, перець (Carolina Reaper, Moruga Scorpion, 7-Pot Primo, 7-Pot Douglah, Ghost), морська сіль, спеції'
WHERE slug = 'johnny-scoville-tube-of-terror-challenge-v2-0-heat-level-off-the-scale';

-- Trinidad Scorpion Powder 10g
UPDATE public.products SET 
  description_uk = 'Порошок Трінідад Скорпіон 10г. 1,2 млн SHU. 2-й найгостріший перець у світі. Висушений та змелений у дрібний порошок. Ідеально підходить для надання стравам суперсильної гостроти, що наростає поступово. Використовуйте обережно.',
  ingredients_uk = 'Перець Трінідад Скорпіон'
WHERE slug = 'trinidad-scorpion-powder-10g-1-2-million-scoville-heat-units';

-- White Whale Sauces - "Gnarlicky"
UPDATE public.products SET 
  description_uk = 'Gnarlicky Інгредієнти ; Часник, перець хабанеро, цибуля, сік лайма, оцет, оливкова олія, сіль, насіння гірчиці, чебрець, розмарин, активоване вугілля. Неймовірна кількість конфітованого часнику та ферментованого чорного часнику становить основу цього соусу. Справжня залежність для любителів часнику. Рівень гостроти 6 Підходить для веганів',
  ingredients_uk = 'Часник, перець хабанеро, цибуля, сік лайма, оцет, оливкова олія, сіль, насіння гірчиці, чебрець, розмарин, активоване вугілля'
WHERE slug = 'white-whale-sauces-gnarlicky-heat-level-6';

-- Sweet Heat Hot Honey (NL)
UPDATE public.products SET 
  description_uk = 'Гострий мед – ОРИГІНАЛЬНИЙ. Інгредієнти ; Мед 90%, 10% чилі. Смачний, солодкий та гострий. Виготовлений в Амстердамі з найкращого квіткового меду та секретної суміші перців. Ідеально підходить до піци, смаженої курки або сирів. Рівень гостроти 4 Не підходить для веганів (містить мед)',
  ingredients_uk = 'Мед 90%, чилі 10%'
WHERE slug = 'sweet-heat-hot-honey';

-- Chilisaus.be - The 2023 Edition - "ASIAN MANGO"
UPDATE public.products SET 
  description_uk = 'Видання 2023 - ASIAN MANGO. Інгредієнти ; Манго, лайм, помаранчевий перець, Ghost Peppers, перець Madame Jeanette, яблучний оцет, шалот, апельсиновий сік, лемонграс, трави, спеції, сіль. Свіжий, соковитий і дуже смачний. Ідеально до азійської кухні, рису, курки або риби. Рівень гостроти 10 Підходить для веганів',
  ingredients_uk = 'Манго, лайм, помаранчевий перець, Ghost Peppers, перець Madame Jeanette, яблучний оцет, шалот, апельсиновий сік, лемонграс, трави, спеції, сіль'
WHERE slug = 'chilisaus-be-the-2023-edition-asian-mango-heat-level-10';

-- Chilisaus.be TRIO
UPDATE public.products SET 
  description_uk = 'ТΡΙО Chilisaus.be - Наші 3 власні соуси: Garlic Italian (2020), Chocolate Smoked (2022) та Asian Mango (2023). Подорож смаком крізь наші щорічні творіння. 100% натуральні інгредієнти. Підходить для веганів.',
  details_uk = 'Містить 3 пляшки: Garlic Italian (Гострота 8), Chocolate Smoked (Гострота 10), Asian Mango (Гострота 10).'
WHERE slug = 'chilisaus-be-trio-all-3-sauces-2020-2022-2023';

-- Happy Hatter Hot Sauce - SHAKIRA
UPDATE public.products SET 
  description_uk = 'Happy Hatter Hot Sauce – SHAKIRA. Інгредієнти ; Перець Шакіра, перець Серрано, яблучний оцет, тростинний цукор, цибуля, часник, сік лайма, сіль, імбир, оливкова олія. Легкий, свіжий і цитрусовий зелений соус із використанням перцю Шакіра арабського походження. Рівень гостроти 3 Підходить для веганів',
  ingredients_uk = 'Перець Шакіра, перець Серрано, яблучний оцет, тростинний цукор, цибуля, часник, сік лайма, сіль, імбир, оливкова олія'
WHERE slug = 'happy-hatter-hot-sauce-shakira-heat-level-3';

-- Happy Hatter Hot Sauce - PICKLE PUMPKIN PIRATE
UPDATE public.products SET 
  description_uk = 'Happy Hatter – PICKLE PUMPKIN PIRATE. Інгредієнти ; Гарбуз, корнішони, перець Aji Amarillo, Трінідад Скорпіон, цибуля, оцет, тростинний цукор, пряний ром, часник, лайм, сіль, трави, оливкова олія, гірчиця. Насичений соус для справжніх піратів із ноткою рому. Рівень гостроти 8 Підходить для веганів',
  ingredients_uk = 'Гарбуз, корнішони, перець Aji Amarillo, Трінідад Скорпіон, цибуля, оцет, тростинний цукор, пряний ром, часник, лайм, сіль, трави, оливкова олія, гірчиця'
WHERE slug = 'happy-hatter-hot-sauce-pickle-pumpkin-pirate-heat-level-7';

-- Happy Hatter Hot Sauce - THE WHOLE FAMILY
UPDATE public.products SET 
  description_uk = 'Вся родина Happy Hatter - набір із 6 соусів по 100 мл. Від рівня гостроти 3 до 10. Містить: Original, Smoked, Bombay, Shakira, Pickle Pumpkin Pirate та Chocolate Smoked. Ідеальний подарунок, щоб познайомитися з усією гамою.',
  details_uk = 'Містить 6 пляшок по 100 мл з різними рівнями гостроти.'
WHERE slug = 'happy-hatter-the-whole-family-x6-sauces';

-- DOOMSDAY - 1.6 Million Scoville PURE Capsaicin
UPDATE public.products SET 
  description_uk = 'DOOMSDAY - Чистий капсаїцин 1,6 млн SHU - 30мл. Інгредієнти ; Екстракт чилі на 1,6 мільйона одиниць Сковілла. Використовувати лише як добавку до їжі або напоїв. Миттєва та тривала гострота. Увага, надзвичайно потужний продукт!',
  ingredients_uk = 'Екстракт чилі на 1,6 млн SHU'
WHERE slug = 'doomsday-1-6million-scoville-pure-capsaicin-heat-level-15-30ml-dropper';

-- OBLIVION - 500,000 Scoville PURE Capsaicin
UPDATE public.products SET 
  description_uk = 'OBLIVION - Чистий капсаїцин 500 000 SHU - 30мл. Повністю прозорий екстракт, ідеальний для надання гостроти стравам без зміни їхнього кольору чи оригінального смаку. Використовуйте обережно.',
  ingredients_uk = 'Екстракт чилі на 500 000 SHU'
WHERE slug = 'oblivion-500000-scoville-pure-capsaicin-heat-level-12-30ml-dropper-bottle';

-- El Jefe - PICANTE
UPDATE public.products SET 
  description_uk = 'El Jefe - PICANTE. Інгредієнти ; Томати, перець чилі, часник, лимонний сік, соняшникова олія, морська сіль. Сальса в мексиканському стилі з копченим перцем та запеченим часником. Глибокі смаки та багата текстура. Рівень гостроти 6 Підходить для веганів',
  ingredients_uk = 'Томати, перець чилі, часник, лимонний сік, соняшникова олія, морська сіль'
WHERE slug = 'el-jefe-picante-mexican-hot-sauce-heat-level-6';

-- Satan's Spawn Gummy Bears
UPDATE public.products SET 
  description_uk = 'Желейні ведмедики Satan''s Spawn - 125г. Ці маленькі ведмедики мають темну сторону: вони насичені гострим перцем Хабанеро. Смачні та фруктові з добрячим печінням. Не підходить для веганів.',
  ingredients_uk = 'Глюкозний сироп, цукор, желатин (свинячий), лимонна кислота, ароматизатори, порошок хабанеро (0,3%), концентрати фруктових соків'
WHERE slug = 'satans-spawn-gummy-bears-125g';

-- Lord Reaper (UK) - Carolina Reaper Hot Sauce
UPDATE public.products SET 
  description_uk = 'Lord Reaper - Соус із ферментованого Carolina Reaper 100мл. Інгредієнти ; Вода, ріпакова олія, Carolina Reaper (20%), оцет, соєвий соус, апельсин, тростинний цукор, спеції, сіль, імбир, часник, лимон. Густий, липкий і супер гострий. Рівень гостроти 10 Підходить для веганів',
  ingredients_uk = 'Вода, ріпакова олія, Carolina Reaper (20%), оцет, соєвий соус, апельсин, тростинний цукор, спеції, сіль, імбир, часник, лимон'
WHERE slug = 'lord-reaper-carolina-reaper-hot-sauce-heat-level-10';

-- Johnny Scoville - Tube Of Terror Challenge V1.0 Peanuts
UPDATE public.products SET 
  description_uk = 'TUBE OF TERROR CHALLENGE V1.0. Арахіс, вкритий найгострішими перцями світу: Carolina Reaper, Trinidad Scorpion, 7 Pot Brain Strain, Duglah та Ghost, плюс кристали чистого капсаїцину на 13M SHU. Удачі!',
  ingredients_uk = 'Арахіс, Carolina Reaper, Trinidad Scorpion, 7 Pot Brain Strain, Duglah, Ghost Peppers, кристали чистого капсаїцину'
WHERE slug = 'johnny-scoville-tube-of-terror-challenge-v1-0-peanuts-heat-level-off-the-scale';

-- The Level 20, Shit That's Hot
UPDATE public.products SET 
  description_uk = 'LEVEL 20 - Shit that''s Hot! Супер гострий соус. Інгредієнти ; Томат, яблучний оцет, часник, чипотле, habanero lemon, цибуля, сік лайма, сироп агави, чистий капсаїцин 9 млн SHU, трави, спеції, сіль. Ідеальний баланс між смаком та екстремальним жаром. Рівень гостроти 20 Підходить для веганів',
  ingredients_uk = 'Томат, яблучний оцет, часник, чипотле, habanero lemon, цибуля, сік лайма, сироп агави, чистий капсаїцин 9M SHU, трави, спеції, сіль'
WHERE slug = 'level-20-extreme-heat-sauce';

-- Chipotle Adobo Seasoning
UPDATE public.products SET 
  description_uk = 'Приправа Chipotle Adobo - 65г. Інгредієнти: Кумин, паприка, часник, цибуля, чипотле, орегано, перець, томат, сіль. Натхненно традиційною мексиканською кухнею. Землистий, димний та насичений смак. Рівень гостроти 5 Підходить для веганів.',
  ingredients_uk = 'Кумин, паприка, часник, цибуля, чипотле, орегано, перець, томат, сіль'
WHERE slug = 'chipotle-adobo-heat-level-5-65g';

-- Piri Piri & Co, PORTUGAL - Scorpion Chili Oil
UPDATE public.products SET 
  description_uk = 'Олія чилі Скорпіон - Португалія. Інгредієнти: Соняшникова олія, Трінідад Скорпіон, Ghost Pepper, Хабанеро, перець Малагета, лимон, сіль. Смак перцю розкривається в цій шовковистій олії. Рівень гостроти 8 Підходить для веганів.',
  ingredients_uk = 'Соняшникова олія, Трінідад Скорпіон, Ghost Pepper, Хабанеро, перець Малагета, лимон, сіль'
WHERE slug = 'piri-piri-co-portugal-scorpion-chili-oil-heat-level-8-100ml';
