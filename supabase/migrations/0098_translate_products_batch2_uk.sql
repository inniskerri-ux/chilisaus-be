-- Migration: Translate products batch 2 (Ukrainian)

-- Happy Hatter Hot Sauce - SMOKED
UPDATE public.products SET 
  description_uk = 'Happy Hatter Hot Sauce – SMOKED. Інгредієнти ; Лісові ягоди, червоне портвейн, червоний винний оцет, фініки, квітковий мед, перець Ghost, червона цибуля, шалот, часник, порошок чипотле, копчена паприка, оливкова олія, сіль. Багатий і димний соус, солодкий і смачний. Наповнений перцем Ghost, мексиканським копченим чипотле та соковитими лісовими ягодами. Декадентський, повнотілий і шовковистий соус із чудовим тривалим гострим фінішем. Ідеально підходить до дичини, стейка, рваної свинини або бургера. Рівень гостроти 7 Не підходить для веганів (містить мед)',
  ingredients_uk = 'Лісові ягоди, червоне портвейн, червоний винний оцет, фініки, квітковий мед, перець Ghost, червона цибуля, шалот, часник, порошок чипотле, копчена паприка, оливкова олія, сіль'
WHERE slug = 'smoked-happy-hatter-hot-sauce';

-- Carolina Reaper Powder 10g
UPDATE public.products SET 
  description_uk = 'Порошок Carolina Reaper 10г. 1,8 млн – 2,2 млн SHU. Найгостріший порошок чилі у світі. Використовуйте з надзвичайною обережністю. Ідеально підходить для миттєвого додавання вогню до будь-якої страви. Підходить для веганів.',
  ingredients_uk = 'Перець Carolina Reaper'
WHERE slug = 'carolina-reaper-powder-10g';

-- Mexican Habanero Chili Flakes 20g
UPDATE public.products SET 
  description_uk = 'Пластівці чилі Хабанеро 100 000 – 350 000 SHU. Ідеальний баланс між гостротою та смаком. Відомі своїм фруктовим ароматом, ці пластівці додадуть вашим стравам смачного гострого відтінку. Свіжі червоні хабанеро, вирощені в Мексиці, висушені в печі та подрібнені. Підходить для веганів.',
  ingredients_uk = 'Сушений перець Хабанеро'
WHERE slug = 'habanero-chili-flakes-15g-100000-350000-scoville-heat-units';

-- Mexican Habanero Dried Pods
UPDATE public.products SET 
  description_uk = 'Сушені стручки мексиканського Хабанеро (100 000 - 350 000 SHU). Класична фруктова гострота з Мексики. Ідеально підходить для сальси, маринадів та рагу. Підходить для веганів.',
  ingredients_uk = 'Сушений перець Хабанеero'
WHERE slug = 'mexican-habanero-peppers-100000-350000-scoville-heat-units';

-- Naga / Ghost Pepper Dried Pods
UPDATE public.products SET 
  description_uk = 'Сушені стручки Naga / Ghost Pepper 855 000 – 1 млн SHU. 3-й найгостріший перець у світі. Пакетик із 12 сушеними перцями Ghost. Смак спочатку димний і майже солодкий, але через 30 секунд наздоганяє гострота. Використовуйте сушеними, подрібненими або після замочування в гарячій воді. Підходить для веганів.',
  ingredients_uk = 'Сушений перець Ghost Pepper (Bhut Jolokia)'
WHERE slug = 'naga-ghost-pepper-855000-1-million-scoville-heat-units';

-- Mexican Smoked Chipotle Flakes
UPDATE public.products SET 
  description_uk = 'Пластівці мексиканського копченого чипотле - 20г (2500 - 8000 SHU). Смачні пластівці копченого халапеньйо. Незамінні в мексиканській кухні для того самого глибокого, автентичного смаку BBQ. Підходить для веганів.',
  ingredients_uk = 'Копчений сушений халапеньйо (чипотле)'
WHERE slug = 'mexican-smoked-chipotle-powder-40g-2500-8000-scoville-heat-units';

-- Mexican Habanero Powder 30g
UPDATE public.products SET 
  description_uk = 'Порошок Хабанеро 100 000 – 350 000 SHU. Виготовлений із сушених і дрібно змелених стручків хабанеро. Ідеально підходить для мексиканських страв або BBQ. Змішуйте з майонезом або йогуртом для гострого соусу. Підходить для веганів.',
  ingredients_uk = 'Порошок чилі хабанеро'
WHERE slug = 'habanero-powder-40g-100000-350000-scoville-heat-units';

-- 33% Pure Carolina Reaper Sambal
UPDATE public.products SET 
  description_uk = '33% чистий самбал Carolina Reaper. Інгредієнти ; Цибуля 40%, Carolina Reaper 33%, рафінований цукор 8%, соняшникова олія 7,5%, солодкий соєвий соус 7,5%, білий оцет 0,5%, сіль, спеції. Вироблено відомим Devon Chilli Man із Великобританії. Спочатку смачний солодкий смак завдяки карамелізованій цибулі, потім справжні американські гірки від свіжого перцю Carolina Reaper. Рівень гостроти 12 Підходить для веганів',
  ingredients_uk = 'Цибуля 40%, Carolina Reaper 33%, рафінований цукор 8%, соняшникова олія 7,5%, солодкий соєвий соус 7,5%, білий оцет 0,5%, сіль, спеції'
WHERE slug = '33-carolina-reaper-sambal-heat-level-15';

-- Chilisaus.be - The 2020 Edition - Garlic Italian
UPDATE public.products SET 
  description_uk = 'Garlic Italian (без додавання цукру) Ідеально до спагеті. Інгредієнти ; Ріпакова олія, вода, білий винний оцет, оливкова олія, червоний чилі, чилі Naga (3%), часникове пюре, сіль, спеції, трави. Наш перший власний соус! Якісні інгредієнти, шовковиста оливкова олія, свіжий перець Naga Ghost, БАГАТО часнику та італійські трави. Просто і смачно. Рівень гостроти 8 Підходить для веганів',
  ingredients_uk = 'Ріпакова олія, вода, білий винний оцет, оливкова олія, червоний чилі, чилі Naga (3%), часникове пюре, сіль, спеції, трави'
WHERE slug = 'chilisaus-be-the-2020-edition-heat-level-8';

-- Carolina Reaper Flakes 10g
UPDATE public.products SET 
  description_uk = 'Пластівці Carolina Reaper 1,8 млн – 2,2 млн SHU. Найгостріший перець у світі, висушений і подрібнений на чудові вогняні пластівці (разом із насінням). Достатньо лише дрібки, щоб надати стравам ефекту Ріпера. Використовуйте обережно. Підходить для веганів.',
  ingredients_uk = 'Пластівці перцю Carolina Reaper'
WHERE slug = 'carolina-reaper-flakes-10g-1-8-million-2-2-million-scoville-heat-units';

-- Happy Hatter Hot Sauce - BOMBAY
UPDATE public.products SET 
  description_uk = 'Happy Hatter Hot Sauce – BOMBAY. Інгредієнти ; Манго, ананас, жовтий чилі Хабанеро, цибуля, білий винний оцет, тростинний цукор, банани, часник, сік лайма, оливкова олія, суміш спецій (містить селеру), сіль. Свіжий і фруктовий соус із куркумою та азійськими спеціями. Ідеально збалансований із гарною гостротою жовтого хабанеро. Ідеально для вока або страв із рисом. Рівень гостроти 8 Підходить для веганів',
  ingredients_uk = 'Манго, ананас, жовтий чилі Хабанеро, цибуля, білий винний оцет, тростинний цукор, банани, часник, сік лайма, оливкова олія, суміш спецій (містить селеру), сіль'
WHERE slug = 'happy-hatter-bombay-produced-in-belgium-heat-level-7';

-- Naga / Ghost Pepper Powder 10g
UPDATE public.products SET 
  description_uk = 'Порошок Naga / Ghost 855 000 - 1 млн SHU. Прямо з Нагаланду, Індія. Смак спочатку димний і майже солодкий, але інтенсивна гострота наздоганяє через 30-40 секунд. Використовуйте обережно. Підходить для веганів.',
  ingredients_uk = 'Порошок чилі Ghost Pepper'
WHERE slug = 'naga-ghost-powder-10g-850000-1-million-scoville-heat-units';

-- Naga / Ghost Pepper Flakes 10g
UPDATE public.products SET 
  description_uk = 'Пластівці Naga / Ghost 855 000 - 1 млн SHU. Прямо з Нагаланду, ці пластівці — чудова альтернатива свіжому перцю для додання екстремальної гостроти вашим стравам. Підходить для веганів.',
  ingredients_uk = 'Пластівці перцю Ghost Pepper'
WHERE slug = 'naga-ghost-pepper-flakes-10g-855000-1-million-scoville-heat-units';

-- Happy Hatter Gift Box
UPDATE public.products SET 
  description_uk = 'Родина Happy Hatter – 3 соуси – У фірмовій подарунковій коробці. Містить ORIGINAL (гострота 6), SMOKED (гострота 7) та BOMBAY (гострота 7). 100% якість від бельгійського виробника Віма Даанса.',
  details_uk = 'Містить 3 пляшки по 100 мл: Original, Smoked та Bombay.'
WHERE slug = 'happy-hatter-trio-gift-boxed';

-- The Carolina Reaper Essentials Kit
UPDATE public.products SET 
  description_uk = 'Набір Carolina Reaper: Стручки, Порошок, Самбал та Соус. Все, що вам потрібно, щоб спробувати найгостріший перець у світі в 4 різних формах. Максимальна гострота гарантована! Підходить для веганів.',
  details_uk = 'У наборі: 1x Соус, 1x Самбал, 1x Порошок, 1x Сушені стручки.'
WHERE slug = 'the-ultimate-reaper-pack';

-- White Whale Sauces - Limonhello
UPDATE public.products SET 
  description_uk = '"Limon-hello" Використовуються лише найкращі лимони "Sfusato" з італійського узбережжя Амальфі. Інгредієнти ; Перець Madame Jeanette, лимони Sfusato, морква, цибуля, жовтий перець, часник, імбир, яблучний оцет, куркума, сіль. Свіжий і яскравий соус, багатий на вітамін С. Фантастично смакує з рибою, тако або в коктейлях. Без глютену, без додавання цукру. Рівень гостроти 8 Підходить для веганів',
  ingredients_uk = 'Перець Madame Jeanette, лимони Sfusato, морква, цибуля, жовтий перець, часник, імбир, яблучний оцет, куркума, сіль'
WHERE slug = 'white-whale-sauces-limonhello-hot-sauce-heat-level-8';

-- "The Ripper"
UPDATE public.products SET 
  description_uk = 'The Ripper (без додавання цукру). Інгредієнти: Перець Scotch Bonnet, червоний перець, Carolina Reaper, яблучний оцет, сіль, порошок чилі, екстракт чилі. Небезпечно смачне поєднання фруктового Scotch Bonnet та найгострішого у світі Carolina Reaper. Максимальне печіння! Рівень гостроти 12 Підходить для веганів',
  ingredients_uk = 'Перець Scotch Bonnet, червоний перець, Carolina Reaper, яблучний оцет, сіль, порошок чилі, екстракт чилі'
WHERE slug = 'the-ripper-carolina-reaper';

-- Crazy Bastard - FULL Collection
UPDATE public.products SET 
  description_uk = 'Повна колекція Crazy Bastard - 7 соусів у подарунковій коробці. Виготовлено вручну в Берліні із запеченого перцю чилі та свіжих натуральних інгредієнтів. Без рафінованого цукру та екстрактів. Містить усі варіанти від Халапеньйо до Carolina Reaper.',
  details_uk = 'Містить 7 пляшок по 100 мл: Зелений, Рожевий, Синій, Жовтий, Помаранчевий, Червоний та Чорний.'
WHERE slug = 'crazy-bastard-full-collection-x7-sauces';

-- Crazy Bastard HOT BOX
UPDATE public.products SET 
  description_uk = 'Crazy Bastard Hot Box - 3 найгостріші соуси колекції: Помаранчевий (Ghost Pepper та манго), Червоний (Trinidad Scorpion та клементин) та Чорний (Carolina Reaper та лохина). Для справжніх шукачів гострих відчуттів. Підходить для веганів.',
  details_uk = 'Містить 3 пляшки по 100 мл: Ghost Pepper, Trinidad Scorpion та Carolina Reaper.'
WHERE slug = 'crazy-bastard-hot-box-x3-heat-level-10';

-- RED - Trinidad Scorpion & Clementine
UPDATE public.products SET 
  description_uk = 'RED - Соус Trinidad Scorpion та клементин. Інгредієнти: Солодкий перець, яблуко, цибуля, білий винний оцет, клементини (10%), перець Trinidad Scorpion (6%), часник, лайм, оливкова олія, морська сіль. Другий за гостротою соус у колекції. Чудово підходить до риби на грилі або креветок. Рівень гостроти 10 Підходить для веганів',
  ingredients_uk = 'Солодкий перець, яблуко, цибуля, білий винний оцет, клементини (10%), перець Trinidad Scorpion (6%), часник, лайм, оливкова олія, морська сіль'
WHERE slug = 'red-trinidad-scorpion-clementine-heat-level-10';
