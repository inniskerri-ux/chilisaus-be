-- Migration: Translate products batch 4 (Bulgarian)

-- Blazing Foods - Death Nut Challenge 3.0
UPDATE public.products SET 
  description_bg = 'Изцяло новото предизвикателство Death Nut Challenge - Версия 3.0. Съставки ; Jumbo XL Virginia фъстъци, чиста тръстикова захар, люти чушки Carolina Reaper, 7-Pot Primo, чушки (Datil, Scotch Bonnet, Ghost, Brain Strain, Duglah, Trinidad Moruga Scorpion), чисти капсаицинови кристали 16M SHU, морска сол, подправки. Пет нива фъстъци с нарастваща лютивост. Смеете ли да стигнете до ниво 5? Ниво на лютивост: ИЗВЪН СКАЛАТА.',
  ingredients_bg = 'Jumbo XL фъстъци, захар, Carolina Reaper, 7-Pot Primo, Ghost Pepper, Scorpion, чисти капсаицинови кристали 16M SHU, морска сол, подправки'
WHERE slug = 'blazing-foods-death-nut-challenge-3-0-heat-level-off-the-scale';

-- 7Pot Habanero Pineapple
UPDATE public.products SET 
  description_bg = 'Серия лимитирано издание на Chilisaus.be. Вкусна комбинация от 7Pot чушки, Хабанеро и ананас. Създадено в сътрудничество с Uncle Paul. Ниво на лютивост 6.',
  ingredients_bg = '7Pot чушки, Хабанеро, Ананас, оцет, сол'
WHERE slug = 'chilisaus-be-limited-edition-range-7pot-habanero-pineapple-heat-level-6';

-- Hurtberry Ghost Sriracha
UPDATE public.products SET 
  description_bg = 'Серия лимитирано издание на Chilisaus.be. Интензивна Срирача с Ghost Pepper в сътрудничество с Uncle Paul. За тези, които търсят сериозен удар. Ниво на лютивост 10.',
  ingredients_bg = 'Ghost Peppers, чесън, оцет, захар, сол'
WHERE slug = 'chilisaus-be-limited-edition-range-hurtberry-ghost-sriracha-heat-level-10';

-- Scotch Bonnet Flakes - 30g
UPDATE public.products SET 
  description_bg = 'Люспи Scotch Bonnet (100 000 – 350 000 SHU). Чушката Scotch Bonnet е от семейството на Хабанеро, широко използвана в карибската кухня. Плодов, ярък вкус с лека сладост. Идеална за Jerk Chicken. Подходяща за вегани.',
  ingredients_bg = 'Сушени люспи от чушка Scotch Bonnet'
WHERE slug = 'scotch-bonnet-flakes-30g-100000-350000-scoville-heat-units';

-- Scotch Bonnet Pods 20g
UPDATE public.products SET 
  description_bg = 'Шушулки Scotch Bonnet (100 000 – 350 000 SHU). Цели сушени чушки Scotch Bonnet. Използвайте цели, смлени или след накисване в гореща вода. Придава автентичен карибски и западноафрикански вкус на вашите ястия. Подходящи за вегани.',
  ingredients_bg = 'Сушени чушки Scotch Bonnet'
WHERE slug = 'scotch-bonnet-pods-20g-100000-350000-scoville-heat-units';

-- Chilisaus.be - The 2024 Edition - Kokos Kerrie
UPDATE public.products SET 
  description_bg = 'Chilisaus.be – Издание 2024 – Кокосова къри паста с туист. Съставки ; Чушки (Birds Eye, Madame Jeanette, Lombok), домат, кокосово мляко, лук, кокосов оцет, вода, фъстъци, чесън, кориандър, кокосова захар, джинджифил, билки и подправки (синап), сол. Сътрудничество с White Whale Sauces. Ниво на лютивост 8.',
  ingredients_bg = 'Чушки (Birds Eye, Madame Jeanette, Lombok), домат, кокосово мляко, лук, кокосов оцет, вода, фъстъци, чесън, кориандър, кокосова захар, джинджифил, билки (синап), сол'
WHERE slug = 'the-2024-edition-kokos-kerrie-coconut-curry-heat-level-8';

-- Culley's (NZ) World's Hottest Ramen Noodles - V2.0
UPDATE public.products SET 
  description_bg = 'Най-лютите Рамен нудли в света. Съставки ; Нудли (пшенично брашно, вода, яйце), Рамен (чушка Naga Jolokia, Carolina Reaper, мисо паста, соев сос, сусамово олио, билки, подправки). Оценени на над 1 милион Сковила. Късмет!',
  ingredients_bg = 'Нудли (Пшеница, Яйце), Naga Jolokia, Carolina Reaper, Мисо паста, Сусамово олио, Подправки'
WHERE slug = 'culleys-worlds-hottest-ramen-noodles-v2-0-heat-level-off-the-scale';

-- Germano's (PHL) - Crispy Garlic and Chili Olive Oil
UPDATE public.products SET 
  description_bg = 'Зехтин с хрупкав чесън и чили крънч. Съставки ; Чушки, чесън, зехтин, подправки, захар, йодирана сол. Произведено във Филипините, това олио е истинска мания. Хрупкав чесън, страхотна лютивост и дълбоки печени вкусове. Златен медалист на Clifton National Chilli Awards 2023. Ниво на лютивост 7 Подходящо за вегани.',
  ingredients_bg = 'Чушки, чесън, зехтин, подправки, захар, йодирана сол'
WHERE slug = 'germanos-crispy-garlic-and-chili-crunch-olive-oil-heat-level-7';

-- Pepper X - Sizzling Steak Seasoning
UPDATE public.products SET 
  description_bg = 'Новата най-люта чушка в света: PEPPER X (2.693 млн. SHU). SIZZLING STEAK Съставки: Морска сол, подправки (включително черен пипер и червено чили), чесън, лук, слънчогледово олио, Pepper X. Дайте на вашите пържоли, тофу или зеленчуци екстремна лютивост. Измислено от Ед Къри. Подходящо за вегани.',
  ingredients_bg = 'Морска сол, черен пипер, червено чили, чесън, лук, слънчогледово олио, Pepper X'
WHERE slug = 'smokin-eds-pepper-x-sizzling-steak-seasoning';

-- Pepper X - Spicy Italian Seasoning
UPDATE public.products SET 
  description_bg = 'Люта италианска подправка с Pepper X. Подобрете вашата пица, паста или маринати с този микс, съдържащ прословутата Pepper X. Разработено от Ед Къри, създателят на Carolina Reaper. Подходящо за вегани.',
  ingredients_bg = 'Италиански билки, Pepper X на прах'
WHERE slug = 'smokin-eds-pepper-x-spicy-italian-seasoning';

-- Pepper X - Spicy Garlicious Seasoning
UPDATE public.products SET 
  description_bg = 'Люта чеснова подправка с Pepper X. Чеснов микс от подправки с масивната лютивост на Pepper X. Перфектен за превръщане на всяко ястие в люто предизвикателство. Подходящо за вегани.',
  ingredients_bg = 'Сол, чесън, чили на прах, Pepper X'
WHERE slug = 'smokin-eds-pepper-x-spicy-garlicious-seasoning';

-- Cajun Spice Seasoning
UPDATE public.products SET 
  description_bg = 'Кейджън микс от подправки (Лютивост 4). Класически микс в стил Луизиана, перфектен за риба, пиле или зеленчуци. Придава мека лютивост и дълбок вкус. Подходящ за вегани.',
  ingredients_bg = 'Паприка, чесън, лук, черен пипер, кайен, риган, мащерка'
WHERE slug = 'cajun-spice-seasoning-heat-level-4';

-- Blazin' Inferno Ghost Pepper Seasoning
UPDATE public.products SET 
  description_bg = 'Подправка Blazin'' Inferno с Ghost Pepper (Ниво на лютивост 10). Мощен микс за тези, които търсят моментална, интензивна горещина. Идеален за грил и маринати. Подходящ за вегани.',
  ingredients_bg = 'Ghost Pepper, морска сол, чесън, подправки'
WHERE slug = 'blazin-inferno-ghost-pepper-seasoning-heat-level-10';

-- Piri Piri & Co, PORTUGAL - FOGO
UPDATE public.products SET 
  description_bg = '"FOGO" (огън на португалски) с Carolina Reaper и Trinidad Moruga Scorpion. Съставки: Carolina Reaper, ананас, вода, ябълков оцет, Licor Brutal, зелено манго, чушки Moruga, захар мусковадо, сол, мента, ксантанова гума. Свеж, жив и плодов с изненадваща нотка на мента, преди да удари екстремната лютивост. Ниво на лютивост 12.',
  ingredients_bg = 'Carolina Reaper, ананас, вода, ябълков оцет, Licor Brutal, зелено манго, чушки Moruga, захар мусковадо, сол, мента, ксантанова гума'
WHERE slug = 'piri-piri-co-portugal-fogo-heat-level-12';

-- El Jefe - Verde
UPDATE public.products SET 
  description_bg = 'Свежа зелена салса в мексикански стил. Съставки ; Томатило, халапеньо, чесън, лимонов сок, слънчогледово олио, лук на прах, морска сол. Нашата "закуска салса" - лека, свежа и леко кисела заради томатилото. Класическа Salsa Verde, усъвършенствана от El Jefe. Ниво на лютивост 4. Подходяща за вегани.',
  ingredients_bg = 'Томатило, халапеньо, чесън, лимонов сок, слънчогледово олио, лук на прах, морска сол'
WHERE slug = 'el-jefe-verde-mexican-salsa-heat-level-4';

-- The Chilli Alchemist (UK) - "Dark Matter" Belgian Chili + Mint Chocolate
UPDATE public.products SET 
  description_bg = '70% белгийски тъмен шоколад с Ghost Pepper, мента и пукаща захар. Съставки ; Тъмен шоколад (какаова маса 70%, захар, какаово масло, емулгатор - СОЕВ лецитин, натурална ванилия), пукаща захар (2%), Naga чили на прах (0.1%), етерично масло от мента. Уникално преживяване. Лека до средна лютивост. Подходящ за вегетарианци.',
  ingredients_bg = 'Тъмен шоколад (70% какао), пукаща захар, Naga чили на прах, ментово масло'
WHERE slug = 'the-chilli-alchemist-dark-matter-belgian-chili-chocolate-heat-level-4-5-100g';

-- Hot Headz - Smoked Chilli + Garlic
UPDATE public.products SET 
  description_bg = 'Съставки ; Доматено пюре, вода, ябълков оцет, лук, захар, сусамово семе, подправки, чипотле, хабанеро, чушка гуахильо, пушен чесън, сол. Фантастичен продукт за любителите на силни пушени и чеснови аромати! Гъст и изпълнен с вкус. Ниво на лютивост 5. Подходящ за вегани.',
  ingredients_bg = 'Доматено пюре, вода, ябълков оцет, лук, захар, сусамово семе, подправки, чипотле, хабанеро, чушка гуахильо, пушен чесън, сол'
WHERE slug = 'hot-headz-smoked-chilli-garlic';

-- Singularity Sauce Co (UK) - Buffalo Hot Sauce
UPDATE public.products SET 
  description_bg = 'Сос Бъфало от Singularity. Съставки ; Оцет Комбуча, Cayenne mash (кайенски пипер, сол, оцетна киселина), растително масло, кафява захар, чесън на прах, сол, пушен червен пипер, ксантанова гума. Шотландската версия на класическия сос Бъфало. Страхотен върху пилешки крилца. Ниво на лютивост 4. Подходящ за вегани.',
  ingredients_bg = 'Оцет Комбуча, кайенски пипер, растително масло, кафява захар, чесън на прах, сол, пушен червен пипер, ксантанова гума'
WHERE slug = 'singularity-sauce-co-buffalo-hot-sauce-148ml-heat-level-4';

-- Dave's Insanity Sauce (USA) The Original
UPDATE public.products SET 
  description_bg = 'Оригиналният Dave''s Insanity Sauce - както е видян в сезон 1 на Hot Ones. Съставки ; Люти чушки, вода, доматено пюре, чили екстракт, оцет от тръстика, сол, лук, чесън, подправки. Само една капка е достатъчна! Сосът, който постави началото на пазара за супер люти сосове. Ниво на лютивост: МНОГО ВИСОКО. Подходящ за вегани.',
  ingredients_bg = 'Чушки, вода, доматено пюре, чили екстракт, оцет от тръстика, сол, лук, чесън, подправки'
WHERE slug = 'daves-insanity-sauce-the-original-148ml-hot-as-hell';

-- Dirty Dick's (USA) Caribbean Dreams
UPDATE public.products SET 
  description_bg = 'Dirty Dick''s Caribbean Dreams - Съставки ; Чушки Хабанеро, круши, праскови, сок от ананас, ябълков оцет, горчица, сок от ябълка, кафява захар, мед и прясно смлени подправки. Сос на основата на горчица в карибски стил. Смели вкусове, перфектно балансирани. Ниво на лютивост 6 Не е подходящ за вегани (съдържа мед).',
  ingredients_bg = 'Чушки Хабанеро, круши, праскови, сок от ананас, ябълков оцет, горчица, сок от ябълка, кафява захар, мед, подправки'
WHERE slug = 'dirty-dicks-caribbean-dreams';
