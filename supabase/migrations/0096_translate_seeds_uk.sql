-- Migration: Translate base seeds (Ukrainian)

-- Categories
UPDATE public.categories SET name_uk = 'Класичний гострий соус', description_uk = 'Щоденні перцеві соуси до будь-якої страви.' WHERE slug = 'classic-hot-sauce';
UPDATE public.categories SET name_uk = 'Ферментовані', description_uk = 'Складний смак від тривалої ферментації.' WHERE slug = 'fermented';
UPDATE public.categories SET name_uk = 'Копчені', description_uk = 'Димні соуси з перцем, засмаженим на вогні.' WHERE slug = 'smoky';
UPDATE public.categories SET name_uk = 'Фруктові', description_uk = 'Яскраві, соковиті суміші з тропічними фруктами.' WHERE slug = 'fruit-forward';
UPDATE public.categories SET name_uk = 'Челенджі та гострі снеки', description_uk = 'Перевірте свої межі з нашими найгострішими закусками.' WHERE slug = 'chili-challenges-spicy-snacks';
UPDATE public.categories SET name_uk = 'Екстракти чилі', description_uk = 'Чисті екстракти капсаїцину для екстремальної гостроти.' WHERE slug = 'chili-extracts';
UPDATE public.categories SET name_uk = 'Олія чилі', description_uk = 'Настояні олії для готування або заправки.' WHERE slug = 'chili-oil';
UPDATE public.categories SET name_uk = 'Сушений чилі', description_uk = 'Стручки, пластівці та порошки для вашої кухні.' WHERE slug = 'dried-chilies-pods-flakes-powders';
UPDATE public.categories SET name_uk = 'Подарункові набори', description_uk = 'Ідеальний подарунок для любителів гострого.' WHERE slug = 'gift-boxes-sets';
UPDATE public.categories SET name_uk = 'Гострий мед', description_uk = 'Мед із додаванням чилі для солодко-гострого акценту.' WHERE slug = 'hot-honey';
UPDATE public.categories SET name_uk = 'Сіль та спеції', description_uk = 'Покращуйте свої страви нашими сумішами спецій.' WHERE slug = 'salts-seasonings-rubs';

-- Chilli Types
UPDATE public.chilli_types SET name_uk = 'Халапеньйо', description_uk = 'Збалансована гострота зеленого перцю.' WHERE slug = 'jalapeno';
UPDATE public.chilli_types SET name_uk = 'Хабанеро', description_uk = 'Вогняний цитрусовий аромат і гострота.' WHERE slug = 'habanero';
UPDATE public.chilli_types SET name_uk = 'Привид (Ghost Pepper)', description_uk = 'Інтенсивність Нага Джолокія для шукачів пригод.' WHERE slug = 'ghost-pepper';
UPDATE public.chilli_types SET name_uk = 'Кароліна Ріпер', description_uk = 'Світовий рекорд гостроти з фруктовими нотами.' WHERE slug = 'carolina-reaper';
UPDATE public.chilli_types SET name_uk = 'Скотч Боннет', description_uk = 'Карибський перець із фруктовим та інтенсивним смаком.' WHERE slug = 'scotch-bonnet';
UPDATE public.chilli_types SET name_uk = 'Трінідад Скорпіон', description_uk = 'Потужний і тривалий удар гостроти.' WHERE slug = 'trinidad-scorpion';
