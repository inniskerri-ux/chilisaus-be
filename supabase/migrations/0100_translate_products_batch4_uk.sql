-- Migration: Translate products batch 4 (Ukrainian)

-- Blazing Foods - Death Nut Challenge 3.0
UPDATE public.products SET 
  description_uk = 'Цілком новий виклик Death Nut Challenge - Версія 3.0. Інгредієнти ; Арахіс Jumbo XL Virginia, чистий тростинний цукор, перець Carolina Reaper, 7-Pot Primo, перець (Datil, Scotch Bonnet, Ghost, Brain Strain, Duglah, Trinidad Moruga Scorpion), кристали чистого капсаїцину 16M SHU, морська сіль, спеції. П''ять рівнів арахісу, що стає прогресивно гострішим. Чи наважитеся ви дійти до рівня 5? Рівень гостроти: ПОЗА ШКАЛОЮ.',
  ingredients_uk = 'Арахіс Jumbo XL, цукор, Carolina Reaper, 7-Pot Primo, Ghost Pepper, Scorpion, кристали чистого капсаїцину 16M SHU, морська сіль, спеції'
WHERE slug = 'blazing-foods-death-nut-challenge-3-0-heat-level-off-the-scale';

-- 7Pot Habanero Pineapple
UPDATE public.products SET 
  description_uk = 'Серія лімітованого випуску Chilisaus.be. Смачне поєднання перцю 7Pot, хабанеро та ананаса. Створено у співпраці з Uncle Paul. Рівень гостроти 6.',
  ingredients_uk = 'Перець 7Pot, хабанеро, ананас, оцет, сіль'
WHERE slug = 'chilisaus-be-limited-edition-range-7pot-habanero-pineapple-heat-level-6';

-- Hurtberry Ghost Sriracha
UPDATE public.products SET 
  description_uk = 'Серія лімітованого випуску Chilisaus.be. Інтенсивна шрірача з перцем Ghost у співпраці з Uncle Paul. Для тих, хто шукає справжнього жару. Рівень гостроти 10.',
  ingredients_uk = 'Перець Ghost, часник, оцет, цукор, сіль'
WHERE slug = 'chilisaus-be-limited-edition-range-hurtberry-ghost-sriracha-heat-level-10';

-- Scotch Bonnet Flakes - 30g
UPDATE public.products SET 
  description_uk = 'Пластівці Scotch Bonnet (100 000 – 350 000 SHU). Перець Scotch Bonnet належить до родини хабанеро і дуже популярний у карибській кухні. Фруктовий, яскравий смак із легкою солодкістю. Ідеально для курки по-ямайськи (Jerk Chicken). Підходить для веганів.',
  ingredients_uk = 'Сушені пластівці перцю Scotch Bonnet'
WHERE slug = 'scotch-bonnet-flakes-30g-100000-350000-scoville-heat-units';

-- Scotch Bonnet Pods 20g
UPDATE public.products SET 
  description_uk = 'Сушені стручки Scotch Bonnet (100 000 – 350 000 SHU). Цілі сушені перці Scotch Bonnet. Використовуйте цілими, подрібненими в порошок або після замочування в гарячій воді. Надає стравам автентичного карибського та західноафриканського смаку. Підходить для веганів.',
  ingredients_uk = 'Сушений перець Scotch Bonnet'
WHERE slug = 'scotch-bonnet-pods-20g-100000-350000-scoville-heat-units';

-- Chilisaus.be - The 2024 Edition - Kokos Kerrie
UPDATE public.products SET 
  description_uk = 'Chilisaus.be – Видання 2024 – Кокосова паста каррі з особливим смаком. Інгредієнти ; Перець (Birds Eye, Madame Jeanette, Lombok), томат, кокосоке молоко, цибуля, кокосовий оцет, вода, арахіс, часник, коріандр, кокосовий цукор, імбир, трави та спеції (гірчиця), сіль. Спільна робота з White Whale Sauces. Рівень гостроти 8.',
  ingredients_uk = 'Перець (Birds Eye, Madame Jeanette, Lombok), томат, кокосове молоко, цибуля, кокосовий оцет, вода, арахіс, часник, коріандр, кокосовий цукор, імбир, трави (гірчиця), сіль'
WHERE slug = 'the-2024-edition-kokos-kerrie-coconut-curry-heat-level-8';

-- Culley's (NZ) World's Hottest Ramen Noodles - V2.0
UPDATE public.products SET 
  description_uk = 'Найгостріша локшина рамен у світі. Інгредієнти ; Локшина (пшеничне борошно, вода, яйце), рамен (перець Naga Jolokia, Carolina Reaper, паста місо, соєвий соус, кунжутна олія, трави, спеції). Оціночна гострота понад 1 мільйон Сковіллів. Удачі!',
  ingredients_uk = 'Локшина (пшениця, яйце), Naga Jolokia, Carolina Reaper, паста місо, кунжутна олія, спеції'
WHERE slug = 'culleys-worlds-hottest-ramen-noodles-v2-0-heat-level-off-the-scale';

-- Germano's (PHL) - Crispy Garlic and Chili Olive Oil
UPDATE public.products SET 
  description_uk = 'Оливкова олія з хрустким часником та чилі кранч. Інгредієнти ; Перець, часник, оливкова олія, приправи, цукор, йодована сіль. Вироблена на Філіппінах, ця олія викликає справжню залежність. Хрусткий часник, чудова гострота та глибокі смажені нотки. Золотий призер Clifton National Chilli Awards 2023. Рівень гостроти 7 Підходить для веганів.',
  ingredients_uk = 'Перець, часник, оливкова олія, приправи, цукор, йодована сіль'
WHERE slug = 'germanos-crispy-garlic-and-chili-crunch-olive-oil-heat-level-7';

-- Pepper X - Sizzling Steak Seasoning
UPDATE public.products SET 
  description_uk = 'Найновіший найгостріший перець у світі: PEPPER X (2,693 млн SHU). SIZZLING STEAK Інгредієнти: Морська сіль, спеції (включаючи чорний перець та червоний перець), часник, цибуля, соняшникова олія, Pepper X. Надайте вашим стейкам, тофу або овочам екстремальної гостроти. Винайдено Едом Керрі. Підходить для веганів.',
  ingredients_uk = 'Морська сіль, чорний перець, червоний перець, часник, цибуля, соняшникова олія, Pepper X'
WHERE slug = 'smokin-eds-pepper-x-sizzling-steak-seasoning';

-- Pepper X - Spicy Italian Seasoning
UPDATE public.products SET 
  description_uk = 'Гостра італійська приправа з Pepper X. Підсильте вашу піцу, пасту або маринади цією сумішшю, що містить славнозвісний Pepper X. Розроблено Едом Керрі, творцем Carolina Reaper. Підходить для веганів.',
  ingredients_uk = 'Італійські трави, порошок Pepper X'
WHERE slug = 'smokin-eds-pepper-x-spicy-italian-seasoning';

-- Pepper X - Spicy Garlicious Seasoning
UPDATE public.products SET 
  description_uk = 'Гостра часникова приправа з Pepper X. Часникова суміш спецій із масивною гостротою Pepper X. Ідеально підходить для перетворення будь-якої їжі на гострий виклик. Підходить для веганів.',
  ingredients_uk = 'Сіль, часник, порошок чилі, Pepper X'
WHERE slug = 'smokin-eds-pepper-x-spicy-garlicious-seasoning';

-- Cajun Spice Seasoning
UPDATE public.products SET 
  description_uk = 'Суміш спецій Каджун (Гострота 4). Класична суміш у стилі Луїзіани, ідеально підходить для риби, курки або овочів. Дає м''яку гостроту та глибокий смак. Підходить для веганів.',
  ingredients_uk = 'Паприка, часник, цибуля, чорний перець, кайенський перець, орегано, чебрець'
WHERE slug = 'cajun-spice-seasoning-heat-level-4';

-- Blazin' Inferno Ghost Pepper Seasoning
UPDATE public.products SET 
  description_uk = 'Приправа Blazin'' Inferno з перцем Ghost (Рівень гостроти 10). Потужна суміш для тих, хто шукає миттєвого та інтенсивного жару. Ідеально для гриля та маринадів. Підходить для веганів.',
  ingredients_uk = 'Перець Ghost, морська сіль, часник, спеції'
WHERE slug = 'blazin-inferno-ghost-pepper-seasoning-heat-level-10';

-- Piri Piri & Co, PORTUGAL - FOGO
UPDATE public.products SET 
  description_uk = '"FOGO" (вогонь португальською) з Carolina Reaper та Trinidad Moruga Scorpion. Інгредієнти: Carolina Reaper, ананас, вода, яблучний оцет, Licor Brutal, зелений манго, перець Moruga, цукор мусковадо, сіль, м''ята, ксантанова камедь. Свіжий, яскравий та фруктовий із несподіваною ноткою м''яти перед тим, як вдарить екстремальна гострота. Рівень гостроти 12.',
  ingredients_uk = 'Carolina Reaper, ананас, вода, яблучний оцет, Licor Brutal, зелений манго, перець Moruga, цукор мусковадо, сіль, м''ята, ксантанова камедь'
WHERE slug = 'piri-piri-co-portugal-fogo-heat-level-12';

-- El Jefe - Verde
UPDATE public.products SET 
  description_uk = 'Свіжа зелена сальса в мексиканському стилі. Інгредієнти ; Томатільйо, халапеньйо, часник, лимонний сік, соняшникова олія, цибулевий порошок, морська сіль. Наша "сальса для сніданку" — легка, свіжа та трохи кислувата завдяки томатільйо. Класична Salsa Verde, вдосконалена El Jefe. Рівень гостроти 4. Підходить для веганів.',
  ingredients_uk = 'Томатільйо, халапеньйо, часник, лимонний сік, соняшникова олія, цибулевий порошок, морська сіль'
WHERE slug = 'el-jefe-verde-mexican-salsa-heat-level-4';

-- The Chilli Alchemist (UK) - "Dark Matter" Belgian Chili + Mint Chocolate
UPDATE public.products SET 
  description_uk = '70% бельгійський чорний шоколад із перцем Ghost, м''ятою та вибуховим цукром. Інгредієнти ; Чорний шоколад (какао-маса 70%, цукор, какао-масло, емульгатор - соєвий лецитин, натуральна ваніль), вибуховий цукор (2%), порошок чилі Naga (0,1%), ефірна олія м''яти. Унікальний досвід. Гострота від легкої до середньої. Підходить для вегетаріанців.',
  ingredients_uk = 'Чорний шоколад (70% какао), вибуховий цукор, порошок чилі Naga, м''ятна олія'
WHERE slug = 'the-chilli-alchemist-dark-matter-belgian-chili-chocolate-heat-level-4-5-100g';

-- Hot Headz - Smoked Chilli + Garlic
UPDATE public.products SET 
  description_uk = 'Інгредієнти ; Томатна паста, вода, яблучний оцет, цибуля, цукор, кунжутне насіння, спеції, чипотле, хабанеро, перець гуахільйо, копчений часник, сіль. Фантастичний продукт для любителів потужних димних та часникових ароматів! Густий та смачний. Рівень гостроти 5. Підходить для веганів.',
  ingredients_uk = 'Томатна паста, вода, яблучний оцет, цибуля, цукор, кунжутне насіння, спеції, чипотле, хабанеро, перець гуахільйо, копчений часник, сіль'
WHERE slug = 'hot-headz-smoked-chilli-garlic';

-- Singularity Sauce Co (UK) - Buffalo Hot Sauce
UPDATE public.products SET 
  description_uk = 'Соус Буффало Singularity. Інгредієнти ; Оцет Комбуча, Cayenne mash (кайенський перець, сіль, оцтова кислота), рослинне масло, коричневий цукор, часниковий порошок, сіль, копчена паприка, ксантанова камедь. Шотландська версія класичного соусу Буффало. Ідеально для курячих крилець. Рівень гостроти 4. Підходить для веганів.',
  ingredients_uk = 'Оцет Комбуча, кайенський перець, рослинне масло, коричневий цукор, часниковий порошок, сіль, копчена паприка, ксантанова камедь'
WHERE slug = 'singularity-sauce-co-buffalo-hot-sauce-148ml-heat-level-4';

-- Dave's Insanity Sauce (USA) The Original
UPDATE public.products SET 
  description_uk = 'Оригінальний соус Dave''s Insanity Sauce - як у 1 сезоні Hot Ones. Інгредієнти ; Гострий перець, вода, томатна паста, екстракт чилі, оцет із тростини, сіль, цибуля, часник, спеції. Достатньо лише краплі! Соус, який започаткував ринок супергострих соусів. Рівень гостроти: ДУЖЕ ВИСОКИЙ. Підходить для веганів.',
  ingredients_uk = 'Перець, вода, томатна паста, екстракт чилі, тростинний оцет, сіль, цибуля, часник, спеції'
WHERE slug = 'daves-insanity-sauce-the-original-148ml-hot-as-hell';

-- Dirty Dick's (USA) Caribbean Dreams
UPDATE public.products SET 
  description_uk = 'Dirty Dick''s Caribbean Dreams - Інгредієнти ; Перець Хабанеро, груші, персики, ананасовий сік, яблучний оцет, гірчиця, яблучний сік, коричневий цукор, мед та свіжозмелені спеції. Гірчичний соус у карибському стилі. Сміливі смаки, ідеально збалансовані. Рівень гостроти 6 Не підходить для веганів (містить мед).',
  ingredients_uk = 'Перець Хабанеро, груші, персики, ананасовий сік, яблучний оцет, гірчиця, яблучний сік, коричневий цукор, мед, спеції'
WHERE slug = 'dirty-dicks-caribbean-dreams';
