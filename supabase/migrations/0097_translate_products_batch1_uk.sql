-- Migration: Translate products batch 1 (Ukrainian)

-- Evil One
UPDATE public.products SET 
  description_uk = 'Evil One Інгредієнти ; Червоний перець, яблучний оцет, чилі Scotch Bonnet (15%), цибуля, м''якоть апельсина, м''якоть та цедра лимона, перець Naga Ghost (3%), морква, часник, коричневий цукор, екстракт чилі (1%), морська сіль. Наповнений Scotch Bonnets, Naga Ghost Peppers та дрібкою чистого капсаїцину для надзвичайно гострого тривалого печіння, але без гіркого присмаку, який часто дають екстракти. Це супер гострий, смачний соус із нотками цитрусових. Чудово підходить до спагеті, бургерів, вока, піци або як гострий дип-соус. Рівень гостроти 10 Підходить для веганів',
  ingredients_uk = 'Червоний перець, яблучний оцет, чилі Scotch Bonnet (15%), цибуля, м''якоть апельсина, м''якоть та цедра лимона, перець Naga Ghost (3%), морква, часник, коричневий цукор, екстракт чилі (1%), морська сіль'
WHERE slug = 'evil-one';

-- Evil Twin
UPDATE public.products SET 
  description_uk = 'Evil Twin (без додавання цукру) Інгредієнти ; Зелений перець, оцет, чилі Scotch Bonnet, цибуля, яблуко, лайм, перець Naga Ghost, морква, спеції, часник, екстракт чилі (1%), сіль. Супер гострий соус із перцем Scotch Bonnet, Naga Ghost та 1% екстракту чилі. Має чудову гостроту, свіжий завдяки додаванню лайма. Дуже добре збалансований соус із тривалим печінням. Гарно смакує з гострим спагеті, майонезом або у воку. Рівень гостроти 10 Підходить для веганів',
  ingredients_uk = 'Зелений перець, оцет, чилі Scotch Bonnet, цибуля, яблуко, лайм, перець Naga Ghost, морква, спеції, часник, екстракт чилі (1%), сіль'
WHERE slug = 'evil-twin';

-- Naga Chilli Sauce
UPDATE public.products SET 
  description_uk = 'Соус Naga Chilli (Рівень гостроти 10). Потужний соус від Wiltshire Chilli Farm з використанням знаменитого перцю Naga Ghost для інтенсивної тривалої гостроти, що наростає поступово. Для досвідчених поціновувачів гострого. Підходить для веганів.',
  ingredients_uk = 'Перець Naga Ghost, оцет, сіль, спеції'
WHERE slug = 'naga-chilli-sauce-heat-level-10-140ml';

-- Caribbean Chilli Sauce
UPDATE public.products SET 
  description_uk = 'Карибський соус чилі (Рівень гостроти 9). Тропічний вибух гостроти та смаку. Натхненний традиційними острівними соусами, багатий на перець та сонячні аромати. Підходить для веганів.',
  ingredients_uk = 'Карибський перець, оцет, спеції, сіль'
WHERE slug = 'caribbean-chilli-sauce';

-- Tempest Garlic Chili Oil
UPDATE public.products SET 
  description_uk = 'Часникова олія чилі Tempest 150мл Інгредієнти ; Ріпакова олія холодного віджиму, натуральний екстракт чилі, натуральний екстракт часнику. Обов''язково для любителів часнику. Шовковиста, насичена олія, яка швидко викликає звикання. Додавайте під час приготування або використовуйте як фінальний штрих до піци, пасти або вока. Смакує зі смаженою куркою або в поєднанні з майонезом для гострого соусу айолі. Рівень гостроти 5 Підходить для веганів',
  ingredients_uk = 'Ріпакова олія холодного віджиму, натуральний екстракт чилі, натуральний екстракт часнику'
WHERE slug = 'tempest';

-- Mango Chilli Sauce
UPDATE public.products SET 
  description_uk = 'Соус чилі з манго (Рівень гостроти 7). Смачний фруктовий соус, де солодкість стиглого манго ідеально поєднується з гострим чилі. Ідеально підходить до курки, салатів або як дип-соус. Підходить для веганів.',
  ingredients_uk = 'Манго, перець чилі, оцет, цукор, сіль'
WHERE slug = 'mango-chilli-sauce';

-- Sweet Chilli Sauce
UPDATE public.products SET 
  description_uk = 'Солодкий соус чилі (Рівень гостроти 1). Класичний лагідний соус, який подобається всім. Ідеальний баланс солодкості та дуже легкої гостроти. Чудово смакує з весняними рулетами або як універсальний столовий соус. Підходить для веганів.',
  ingredients_uk = 'Перець чилі, цукор, оцет, часник, сіль'
WHERE slug = 'sweet-chilli-sauce';

-- Reaper Habanero
UPDATE public.products SET 
  description_uk = 'Reaper Habanero (Рівень гостроти 10). Потужний соус від Wiltshire Chilli Farm, що поєднує екстремальну гостроту Carolina Reaper із класичним смаком червоного хабанеро. Простий, але ефективний. Підходить для веганів.',
  ingredients_uk = 'Червоний хабанеро, яблучний оцет, коричневий цукор, цибуля, червоний перець, Carolina Reaper, копчена паприка, часник'
WHERE slug = 'reaper-habanero';

-- Garlic Chilli Salt
UPDATE public.products SET 
  description_uk = 'Часникова сіль чилі (Рівень гостроти 3). Смачна ароматна сіль із легким гострим відтінком. Ідеально підходить для посипання картоплі, овочів або м''яса для миттєвого підкреслення смаку. Підходить для веганів.',
  ingredients_uk = 'Морська сіль, часник, перець чилі'
WHERE slug = 'garlic-chilli-salt';

-- BLACK - Carolina Reaper & Blueberry
UPDATE public.products SET 
  description_uk = 'BLACK - Соус Carolina Reaper та лохина. Інгредієнти: Солодкий перець, цибуля, білий винний оцет, яблука, лохина (10%), чилі Carolina Reaper (8%), лайм, оливкова олія, морська сіль. Незвичайне, але фантастичне поєднання, де терпка лохина чудово доповнює екстремальну гостроту Ріпера. Рівень гостроти 10 Підходить для веганів.',
  ingredients_uk = 'Солодкий перець, цибуля, білий винний оцет, яблука, лохина (10%), чилі Carolina Reaper (8%), лайм, оливкова олія, морська сіль'
WHERE slug = 'black-carolina-reaper-blueberry';

-- BLUE - Scotch Bonnet & Caribbean Spices
UPDATE public.products SET 
  description_uk = 'BLUE - Соус Scotch Bonnet та карибські спеції. Інгредієнти: Солодкий перець, цибуля, білий винний оцет, чилі Scotch Bonnet (13%), імбир, часник, лайм, оливкова олія, селера, сіль, суміш спецій. Автентичний смак Карибського басейну з характерною гостротою Scotch Bonnet. Рівень гостроти 5 Підходить для веганів.',
  ingredients_uk = 'Солодкий перець, цибуля, білий винний оцет, чилі Scotch Bonnet (13%), імбир, часник, лайм, оливкова олія, селера, сіль, суміш спецій'
WHERE slug = 'blue-scotch-bonnet-caribbean';

-- PINK - Chipotle and Pineapple
UPDATE public.products SET 
  description_uk = 'PINK - Соус Chipotle та ананас. Інгредієнти: Цибуля, солодкий перець, ананас (17%), білий винний оцет, червоний чилі халапеньйо, лайм, чилі чипотле (1,7%), оливкова олія, сіль. Смачний баланс між солодким та копченим. Рівень гостроти 4 Підходить для веганів.',
  ingredients_uk = 'Цибуля, солодкий перець, ананас (17%), білий винний оцет, червоний чилі халапеньйо, лайм, чилі чипотле (1,7%), оливкова олія, сіль'
WHERE slug = 'pink-chipotle-and-pineapple-hot-sauce';

-- Carolina Reaper Dried Pods
UPDATE public.products SET 
  description_uk = 'Сушені стручки Carolina Reaper (1,8 млн - 2,2 млн SHU). Найгостріший перець у світі в сушеному вигляді. Для сміливців, які хочуть створювати власні соуси або робити страви надзвичайно гострими. Підходить для веганів.',
  ingredients_uk = 'Сушений перець Carolina Reaper'
WHERE slug = 'carolina-reaper-dried-peppers';

-- "God Slayer" EXTREME
UPDATE public.products SET 
  description_uk = 'Соус "God Slayer" EXTREME (Рівень гостроти 15). Один із найінтенсивніших соусів у нашому асортименті. Тільки для досвідчених поціновувачів гострого. Підходить для веганів.',
  ingredients_uk = 'Carolina Reaper, екстракти чилі, оцет, сіль'
WHERE slug = 'god-slayer';

-- ORANGE - Ghost Pepper & Mango
UPDATE public.products SET 
  description_uk = 'ORANGE - Соус Ghost Pepper та манго. Інгредієнти: Солодкий перець, цибуля, білий винний оцет, манго (12%), яблука, чилі Ghost Pepper Bhut Jolokia (7%), лайм, оливкова олія, кумин, морська сіль. Чудово збалансований соус, де гострота Ghost Pepper наростає поступово. Рівень гостроти 10 Підходить для веганів.',
  ingredients_uk = 'Солодкий перець, цибуля, білий винний оцет, манго (12%), яблука, чилі Ghost Pepper Bhut Jolokia (7%), лайм, оливкова олія, кумин, морська сіль'
WHERE slug = 'orange-ghost-pepper-and-mango-hot-sauce';

-- Mexican Smoked Chipotle Dried Pods
UPDATE public.products SET 
  description_uk = 'Сушені стручки мексиканського копченого чипотле (2500 - 8000 SHU). Сушений та копчений халапеньйо. Незамінний для справжнього аромату копчення в рагу та супах. Підходить для веганів.',
  ingredients_uk = 'Копчений сушений перець халапеньйо (чипотле)'
WHERE slug = 'mexican-smoked-chipotle-peppers';

-- Coffee & Ghost Pepper Seasoning Rub
UPDATE public.products SET 
  description_uk = 'Суміш спецій кава та Ghost Pepper. Унікальна приправа, що поєднує глибокий смак кави з інтенсивною гостротою Ghost Pepper. Ідеально підходить для BBQ, особливо для яловичини чи свинини. Рівень гостроти 8.',
  ingredients_uk = 'Кава, Ghost Pepper, цукор, сіль, спеції'
WHERE slug = 'black-coffee-ghost-rub';

-- Happy Hatter Hot Sauce - ORIGINAL
UPDATE public.products SET 
  description_uk = 'Happy Hatter Hot Sauce – ORIGINAL. Як було показано в популярному кулінарному шоу "Dagelijkse Kost". Соус на основі томатів із відтінком солодкості персика та перцем Madame Jeanette для фруктово-гострого смаку. Рівень гостроти 6 Підходить для веганів.',
  ingredients_uk = 'Томат, персик, червона цибуля, перець (Madame Jeanette, Birds eye), часник, яблуко, оцет, тростинний цукор, лайм, сіль, селера, трави'
WHERE slug = 'happy-hatter-hot-sauce';

-- Trinidad Scorpion
UPDATE public.products SET 
  description_uk = 'Trinidad Scorpion - як було показано в "HOT ONES" (Рівень гостроти 10). Інгредієнти: Яблучний оцет, цукор, перець Trinidad Scorpion, червоний солодкий перець, сіль. З хижим печінням, цей супер гострий соус — справжнє випробування. Солодкий на початку, з наростаючою гостротою для тривалого ефекту. Рівень гостроти 10 Підходить для веганів.',
  ingredients_uk = 'Яблучний оцет, цукор, перець Trinidad Scorpion, червоний солодкий перець, сіль'
WHERE slug = 'trinidad-scorpion';

-- "Regret" SUPER EXTREME
UPDATE public.products SET 
  description_uk = 'Соус "Regret" SUPER EXTREME (Рівень гостроти 20). Назва говорить сама за себе... З рівнем гостроти 20, це один із найгостріших соусів, які ми коли-небудь мали. Тільки для справжніх безстрашних шанувальників чилі. Використовуйте на свій страх і ризик!',
  ingredients_uk = 'Надзвичайно гострий перець (Carolina Reaper), екстракт чилі, оцет, сіль'
WHERE slug = 'regret-extreme-hot-sauce';
