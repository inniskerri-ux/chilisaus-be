-- Migration: Translate base seeds (Bulgarian)

-- Categories
UPDATE public.categories SET name_bg = 'Класически лют сос', description_bg = 'Ежедневни сосове с чушки за всяко ястие.' WHERE slug = 'classic-hot-sauce';
UPDATE public.categories SET name_bg = 'Ферментирал', description_bg = 'Комплексен вкус от бавна ферментация.' WHERE slug = 'fermented';
UPDATE public.categories SET name_bg = 'Пушен', description_bg = 'Димни сосове с чушки, печени на огън.' WHERE slug = 'smoky';
UPDATE public.categories SET name_bg = 'Плодов', description_bg = 'Свежи, сочни смеси с тропически плодове.' WHERE slug = 'fruit-forward';
UPDATE public.categories SET name_bg = 'Чили предизвикателства и люти закуски', description_bg = 'Тествайте границите си с нашите най-люти снакове.' WHERE slug = 'chili-challenges-spicy-snacks';
UPDATE public.categories SET name_bg = 'Чили екстракти', description_bg = 'Чисти екстракти от капсаицин за екстремна лютивост.' WHERE slug = 'chili-extracts';
UPDATE public.categories SET name_bg = 'Чили олио', description_bg = 'Инфузирани масла за готвене или подправяне.' WHERE slug = 'chili-oil';
UPDATE public.categories SET name_bg = 'Сушени чушки', description_bg = 'Шушулки, люспи и прахове за вашата кухня.' WHERE slug = 'dried-chilies-pods-flakes-powders';
UPDATE public.categories SET name_bg = 'Подарочни комплекти', description_bg = 'Перфектният подарък за любителите на лютото.' WHERE slug = 'gift-boxes-sets';
UPDATE public.categories SET name_bg = 'Лют мед', description_bg = 'Мед с чили за сладко-лютив акцент.' WHERE slug = 'hot-honey';
UPDATE public.categories SET name_bg = 'Соли и подправки', description_bg = 'Подобрете ястията си с нашите миксове от подправки.' WHERE slug = 'salts-seasonings-rubs';

-- Chilli Types
UPDATE public.chilli_types SET name_bg = 'Халапеньо', description_bg = 'Балансирана лютивост от зелената чушка.' WHERE slug = 'jalapeno';
UPDATE public.chilli_types SET name_bg = 'Хабанеро', description_bg = 'Огнен цитрусов аромат и лютивост.' WHERE slug = 'habanero';
UPDATE public.chilli_types SET name_bg = 'Призрачна чушка (Ghost Pepper)', description_bg = 'Интензивност на Нага Джолокия за търсачи на силни усещания.' WHERE slug = 'ghost-pepper';
UPDATE public.chilli_types SET name_bg = 'Каролина Рийпър', description_bg = 'Световен рекорд по лютивост с плодови нотки.' WHERE slug = 'carolina-reaper';
UPDATE public.chilli_types SET name_bg = 'Скоч Бонет', description_bg = 'Карибска чушка с плодов и интензивен вкус.' WHERE slug = 'scotch-bonnet';
UPDATE public.chilli_types SET name_bg = 'Тринидад Скорпион', description_bg = 'Мощно и трайно изгаряне.' WHERE slug = 'trinidad-scorpion';
