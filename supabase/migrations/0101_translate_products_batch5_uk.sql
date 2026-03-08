-- Migration: Translate products batch 5 (Ukrainian)

-- Black Death - Carolina Reaper + Black Garlic
UPDATE public.products SET 
  description_uk = 'Натуральний супергострий соус із Carolina Reaper та чорним часником. Інгредієнти ; Бальзамічний оцет, меляса, чорний часник (8,5%), Carolina Reaper (5,5%), томатний порошок, вода, цибуля, сіль, чорний перець. Зірка цього соусу — чорний часник, що ферментувався 14 днів, створюючи солодку сиропоподібну текстуру з нотками сої та бальзаміку. Рівень гостроти 15. Підходить для веганів.',
  ingredients_uk = 'Бальзамічний оцет, меляса, чорний часник (8,5%), Carolina Reaper (5,5%), томатний порошок, вода, цибуля, сіль, чорний перець'
WHERE slug = 'black-death-carolina-reaper-black-garlic-heat-level-15';

-- Crazy Bastard Sauce - Caribbean Edition
UPDATE public.products SET 
  description_uk = 'Caribbean Box - 3 соуси з 3 різними фруктовими карибськими перцями. Тропічна подорож крізь гостроту Антильських островів. Підходить для веганів.',
  details_uk = 'Містить 3 пляшки по 100 мл із карибськими смаками.'
WHERE slug = 'crazy-bastard-sauce-caribbean-edition';

-- Chilisaus.be - Limited Edition Range - Bad Decision
UPDATE public.products SET 
  description_uk = 'Наша нова серія лімітованого випуску - Bad Decision. Ферментований соус чилі з екстремальним ударом гостроти. Іноді погане рішення — найсмачніше. Рівень гостроти 11.',
  ingredients_uk = 'Ферментовані перці, оцет, сіль'
WHERE slug = 'chilisaus-be-limited-edition-range-bad-decision-heat-level-11';

-- Dirty Dick’s (USA) Tropical Twist
UPDATE public.products SET 
  description_uk = 'ЯК У HOT ONES. Один із трьох найкращих гострих соусів США. Тропічний поворот із нагородженим смаком. Створено титулованим BBQ-шефом. Рівень гостроти 6.',
  ingredients_uk = 'Перець хабанеро, тропічні фрукти, цибуля, оцет, спеції'
WHERE slug = 'dirty-dicks-usa-tropical-twist';

-- Firelli - Italian Hot Sauce with Porcini Mushrooms
UPDATE public.products SET 
  description_uk = 'Гордо італійський - гострий соус із білими грибами (Porcini). Виготовлено вручну в Пармі, Італія. Насичений, складний смак із калабрійським перцем, бальзамічним оцтом та італійськими травами. Повний умамі. Рівень гостроти 6. Підходить для веганів.',
  ingredients_uk = 'Запечений червоний перець, вода, бальзамічний оцет із Модени (11%), яблучний оцет, калабрійський перець, лимонний сік, цукор, кайенський перець, спеції, сіль, сушені білі гриби, часник'
WHERE slug = 'firelli-italian-hot-sauce-with-porcini-mushrooms-heat-level-6-148ml';

-- Firelli - Italian Hot Sauce with Truffles
UPDATE public.products SET 
  description_uk = 'Гордо італійський - трюфельний гострий соус. Неймовірний аромат італійських трюфелів у поєднанні з калабрійським перцем та бальзамічним оцтом. Розкішне доповнення до будь-якої страви. Рівень гостроти 5.',
  ingredients_uk = 'Запечений червоний перець, вода, бальзамічний оцет, аромат трюфеля, калабрійський перець, спеції'
WHERE slug = 'firelli-italian-hot-sauce-with-truffles-heat-level-5-148ml';

-- High River Sauces - Pepper X - Taco Sauce
UPDATE public.products SET 
  description_uk = 'Соус для тако з Pepper X із США. Pepper X визнаний найгострішим перцем у світі. Цей соус приносить той самий екстремальний жар до ваших улюблених мексиканських страв. Рівень гостроти 15.',
  ingredients_uk = 'Перець Pepper X, оцет, томати, спеції'
WHERE slug = 'high-river-sauces-pepper-x-taco-sauce';

-- Smoky Pepper Seasoning
UPDATE public.products SET 
  description_uk = 'Приправа Димний Перець із чипотле та часником. Інгредієнти ; Сіль, чорний перець, часник, зерна білого перцю, пластівці чипотле, лимонна цедра, розмарин, базилік, лимонна кислота, чебрець, лимонна вербена, сушений чилі. Секретний інгредієнт, що піднесе будь-яку страву на новий рівень. Димний смак із освіжаючим лимонним фінішем. Підходить для веганів.',
  ingredients_uk = 'Сіль, чорний перець, часник, білий перець, чипотле, лимонна цедра, розмарин, базилік, лимонна кислота, чебрець, лимонна вербена, сушений чилі'
WHERE slug = 'smoky-pepper-seasoning-heat-level-6-65g';
