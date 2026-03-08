-- Migration: Translate products batch 5 (Bulgarian)

-- Black Death - Carolina Reaper + Black Garlic
UPDATE public.products SET 
  description_bg = 'Натурален супер лют сос с Carolina Reaper и черен чесън. Съставки ; Балсамов оцет, меласа, черен чесън (8.5%), Carolina Reaper (5.5%), домат на прах, вода, лук, сол, черен пипер. Звездата на този сос е черният чесън, ферментирал в продължение на 14 дни, което осигурява сладка, сиропирана текстура с нотки на соя и балсамико. Ниво на лютивост 15. Подходящ за вегани.',
  ingredients_bg = 'Балсамов оцет, меласа, черен чесън (8.5%), Carolina Reaper (5.5%), домат на прах, вода, лук, сол, черен пипер'
WHERE slug = 'black-death-carolina-reaper-black-garlic-heat-level-15';

-- Crazy Bastard Sauce - Caribbean Edition
UPDATE public.products SET 
  description_bg = 'Caribbean Box - 3 соса с 3 различни плодови карибски чушки. Тропическо пътешествие из лютивостта на Антилите. Подходящ за вегани.',
  details_bg = 'Съдържа 3 бутилки по 100мл с карибски вкусове.'
WHERE slug = 'crazy-bastard-sauce-caribbean-edition';

-- Chilisaus.be - Limited Edition Range - Bad Decision
UPDATE public.products SET 
  description_bg = 'Нашата нова лимитирана серия - Bad Decision. Ферментирал чили сос с екстремен удар. Понякога лошото решение е най-вкусното. Ниво на лютивост 11.',
  ingredients_bg = 'Ферментирали чушки, оцет, сол'
WHERE slug = 'chilisaus-be-limited-edition-range-bad-decision-heat-level-11';

-- Dirty Dick’s (USA) Tropical Twist
UPDATE public.products SET 
  description_bg = 'КАКТО Е ВИДЯН В HOT ONES. Един от трите най-добри люти соса от САЩ. Тропически туист с награден вкус. Създаден от награждаван BBQ шеф. Ниво на лютивост 6.',
  ingredients_bg = 'Хабанеро чушки, тропически плодове, лук, оцет, подправки'
WHERE slug = 'dirty-dicks-usa-tropical-twist';

-- Firelli - Italian Hot Sauce with Porcini Mushrooms
UPDATE public.products SET 
  description_bg = 'Гордо италиански - лют сос с манатарки (Porcini). Ръчно изработен в Парма, Италия. Богат, комплексен вкус с калабрийски чушки, балсамов оцет и италиански билки. Пълен с умами. Ниво на лютивост 6. Подходящ за вегани.',
  ingredients_bg = 'Печени червени чушки, вода, балсамов оцет от Модена (11%), ябълков оцет, калабрийски чушки, лимонов сок, захар, кайенски пипер, подправки, сол, сушени манатарки, чесън'
WHERE slug = 'firelli-italian-hot-sauce-with-porcini-mushrooms-heat-level-6-148ml';

-- Firelli - Italian Hot Sauce with Truffles
UPDATE public.products SET 
  description_bg = 'Гордо италиански - трюфел лют сос. Невероятният аромат на италиански трюфели, комбиниран с калабрийски чушки и балсамов оцет. Луксозно допълнение към всяко ястие. Ниво на лютивост 5.',
  ingredients_bg = 'Печени червени чушки, вода, балсамов оцет, аромат на трюфел, калабрийски чушки, подправки'
WHERE slug = 'firelli-italian-hot-sauce-with-truffles-heat-level-5-148ml';

-- High River Sauces - Pepper X - Taco Sauce
UPDATE public.products SET 
  description_bg = 'Pepper X тако сос от САЩ. Pepper X е призната за най-лютата чушка в света. Този тако сос носи онази екстремна лютивост във вашите любими мексикански ястия. Ниво на лютивост 15.',
  ingredients_bg = 'Pepper X чушки, оцет, домати, подправки'
WHERE slug = 'high-river-sauces-pepper-x-taco-sauce';

-- Smoky Pepper Seasoning
UPDATE public.products SET 
  description_bg = 'Пушен микс от подправки с Чипотле и чесън. Съставки ; Сол, черен пипер, чесън, зърна бял пипер, чипотле люспи, лимонова кора, розмарин, босилек, лимонена киселина, мащерка, лимонова върбинка, сушени чилита. Тайна съставка, която подобрява всяко ястие. Пушен вкус със свеж лимонов финиш. Подходящ за вегани.',
  ingredients_bg = 'Сол, черен пипер, чесън, бял пипер, чипотле, лимонова кора, розмарин, босилек, лимонена киселина, мащерка, лимонова върбинка, сушени чилита'
WHERE slug = 'smoky-pepper-seasoning-heat-level-6-65g';
