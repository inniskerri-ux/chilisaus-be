-- Migration: Translate products batch 1 (Bulgarian)

-- Evil One
UPDATE public.products SET 
  description_bg = 'Evil One Съставки ; Червени чушки, ябълков оцет, чили Scotch Bonnet (15%), лук, портокалова пулпа, лимонова пулпа и кора, чушка Naga Ghost (3%), морков, чесън, кафява захар, чили екстракт (1%), морска сол. Изпълнен със Scotch Bonnets, Naga Ghost Peppers и щипка чист чили капсаицин за онова супер люто дълготрайно усещане за парене, но без горчивия вкус, който екстрактите често дават. Това е супер лют, вкусен сос с нотки на цитрус. Страхотен в спагети, върху бургер, уок, пица или смесен с малко салса за чудесен лют дип. Ниво на лютивост 10 Подходящ за вегани',
  ingredients_bg = 'Червени чушки, ябълков оцет, чили Scotch Bonnet (15%), лук, портокалова пулпа, лимонова пулпа и кора, чушка Naga Ghost (3%), морков, чесън, кафява захар, чили екстракт (1%), морска сол'
WHERE slug = 'evil-one';

-- Evil Twin
UPDATE public.products SET 
  description_bg = 'Evil Twin (без добавена захар) Съставки ; Зелени чушки, оцет, чили Scotch Bonnet, лук, ябълка, лайм, чушка Naga Ghost, морков, подправки, чесън, чили екстракт (1%), сол. Супер лют сос със Scotch Bonnet чушки, Naga Ghost Peppers и 1% чили екстракт. Има страхотна лютивост, свеж благодарение на добавения лайм. Много добре балансиран сос, който осигурява трайна лютивост. Добър за люти спагети, добавете към майонеза за дип или в уок. Ниво на лютивост 10 Подходящ за вегани',
  ingredients_bg = 'Зелени чушки, оцет, чили Scotch Bonnet, лук, ябълка, лайм, чушка Naga Ghost, морков, подправки, чесън, чили екстракт (1%), сол'
WHERE slug = 'evil-twin';

-- Naga Chilli Sauce
UPDATE public.products SET 
  description_bg = 'Сос Naga Chilli (Ниво на лютивост 10). Мощен сос от Wiltshire Chilli Farm, използващ известната чушка Naga Ghost за интензивна, дълготрайна лютивост, която се изгражда бавно. За опитни любители на лютото. Подходящ за вегани.',
  ingredients_bg = 'Чушки Naga Ghost, оцет, сол, подправки'
WHERE slug = 'naga-chilli-sauce-heat-level-10-140ml';

-- Caribbean Chilli Sauce
UPDATE public.products SET 
  description_bg = 'Карибски чили сос (Ниво на лютивост 9). Тропическа експлозия от лютивост и вкус. Вдъхновен от традиционните островни сосове, богат на чушки и слънчеви аромати. Подходящ за вегани.',
  ingredients_bg = 'Карибски чушки, оцет, подправки, сол'
WHERE slug = 'caribbean-chilli-sauce';

-- Tempest Garlic Chili Oil
UPDATE public.products SET 
  description_bg = 'Чесново чили олио Tempest 150мл Съставки ; Студено пресовано рапично масло, натурален чили екстракт, натурален екстракт от чесън. Определено за любителите на чесъна. Копринено гладко, богато олио, което бързо ще стане пристрастяващо. Добавяйте по време на готвене или използвайте като финиш върху пица, паста или уок. Вкусно с пържено пиле или смесено с майонеза за лют айоли дип. Ниво на лютивост 5 Подходящо за вегани',
  ingredients_bg = 'Студено пресовано рапично масло, натурален чили екстракт, натурален екстракт от чесън'
WHERE slug = 'tempest';

-- Mango Chilli Sauce
UPDATE public.products SET 
  description_bg = 'Чили сос с манго (Ниво на лютивост 7). Вкусен плодов сос, където сладостта на зрелите манга се съчетава перфектно с остър чили удар. Идеален с пиле, салати или като дип сос. Подходящ за вегани.',
  ingredients_bg = 'Манго, чили чушки, оцет, захар, сол'
WHERE slug = 'mango-chilli-sauce';

-- Sweet Chilli Sauce
UPDATE public.products SET 
  description_bg = 'Сладък чили сос (Ниво на лютивост 1). Класическият мек дип, който всеки обича. Перфектен баланс между сладост и съвсем лека нотка лютивост. Отличен с пролетни рулца или като универсален сос за маса. Подходящ за вегани.',
  ingredients_bg = 'Чили чушки, захар, оцет, чесън, сол'
WHERE slug = 'sweet-chilli-sauce';

-- Reaper Habanero
UPDATE public.products SET 
  description_bg = 'Reaper Habanero (Ниво на лютивост 10). Мощен сос от Wiltshire Chilli Farm, съчетаващ екстремната лютивост на Carolina Reaper с класическия вкус на червени Хабанеро. Прост, но ефективен. Подходящ за вегани.',
  ingredients_bg = 'Червено Хабанеро, ябълков оцет, кафява захар, лук, червена чушка, Carolina Reaper, пушен червен пипер, чесън'
WHERE slug = 'reaper-habanero';

-- Garlic Chilli Salt
UPDATE public.products SET 
  description_bg = 'Чеснова чили сол (Ниво на лютивост 3). Вкусна ароматна сол с лек чили удар. Идеална за поръсване върху картофи, зеленчуци или месо за мигновено подобряване на вкуса. Подходяща за вегани.',
  ingredients_bg = 'Морска сол, чесън, чили чушки'
WHERE slug = 'garlic-chilli-salt';

-- BLACK - Carolina Reaper & Blueberry
UPDATE public.products SET 
  description_bg = 'BLACK - Сос Carolina Reaper и боровинка. Съставки: Чушки, лук, бял винен оцет, ябълки, боровинки (10%), чили Carolina Reaper (8%), лайм, зехтин, морска сол. Необичайна, но фантастична комбинация, при която тръпчивата боровинка допълва красиво екстремната лютивост на Рийпъра. Ниво на лютивост 10 Подходящ за вегани.',
  ingredients_bg = 'Чушки, лук, бял винен оцет, ябълки, боровинки (10%), чили Carolina Reaper (8%), лайм, зехтин, морска сол'
WHERE slug = 'black-carolina-reaper-blueberry';

-- BLUE - Scotch Bonnet & Caribbean Spices
UPDATE public.products SET 
  description_bg = 'BLUE - Сос Scotch Bonnet и карибски подправки. Съставки: Чушки, лук, бял винен оцет, чили Scotch Bonnet (13%), джинджифил, чесън, лайм, зехтин, целина, сол, микс от подправки. Автентичен вкус на Карибите с характерната лютивост на Scotch Bonnet. Ниво на лютивост 5 Подходящ за вегани.',
  ingredients_bg = 'Чушки, лук, бял винен оцет, чили Scotch Bonnet (13%), джинджифил, чесън, лайм, зехтин, целина, сол, микс от подправки'
WHERE slug = 'blue-scotch-bonnet-caribbean';

-- PINK - Chipotle and Pineapple
UPDATE public.products SET 
  description_bg = 'PINK - Сос Чипотле и ананас. Съставки: Лук, чушки, ананас (17%), бял винен оцет, червено чили Халапеньо, лайм, чили Чипотле (1.7%), зехтин, сол. Вкусен баланс между сладко и пушено. Ниво на лютивост 4 Подходящ за вегани.',
  ingredients_bg = 'Лук, чушки, ананас (17%), бял винен оцет, червено чили Халапеньо, лайм, чили Чипотле (1.7%), зехтин, сол'
WHERE slug = 'pink-chipotle-and-pineapple-hot-sauce';

-- Carolina Reaper Dried Pods
UPDATE public.products SET 
  description_bg = 'Сушени шушулки Carolina Reaper (1.8 млн - 2.2 млн SHU). Най-лютата чушка в света в сушен вид. За смелчаците, които искат да създават свои собствени сосове или да подправят ястия екстремно. Подходящи за вегани.',
  ingredients_bg = 'Сушени чушки Carolina Reaper'
WHERE slug = 'carolina-reaper-dried-peppers';

-- "God Slayer" EXTREME
UPDATE public.products SET 
  description_bg = 'Сос "God Slayer" EXTREME (Ниво на лютивост 15). Един от най-интензивните сосове в нашата гама. Само за много опитни любители на лютото. Подходящ за вегани.',
  ingredients_bg = 'Carolina Reaper, чили екстракти, оцет, сол'
WHERE slug = 'god-slayer';

-- ORANGE - Ghost Pepper & Mango
UPDATE public.products SET 
  description_bg = 'ORANGE - Сос Ghost Pepper и манго. Съставки: Чушки, лук, бял винен оцет, манго (12%), ябълки, чили Ghost Pepper Bhut Jolokia (7%), лайм, зехтин, кимион, морска сол. Красиво балансиран сос, при който лютивостта на Ghost Pepper се изгражда бавно. Ниво на лютивост 10 Подходящ за вегани.',
  ingredients_bg = 'Чушки, лук, бял винен оцет, манго (12%), ябълки, чили Ghost Pepper Bhut Jolokia (7%), лайм, зехтин, кимион, морска сол'
WHERE slug = 'orange-ghost-pepper-and-mango-hot-sauce';

-- Mexican Smoked Chipotle Dried Pods
UPDATE public.products SET 
  description_bg = 'Сушени шушулки мексикански пушен Чипотле (2500 - 8000 SHU). Сушени и пушени Халапеньос. Незаменими за автентичен пушен вкус в яхнии и супи. Подходящи за вегани.',
  ingredients_bg = 'Пушени сушени чушки Халапеньо (Чипотле)'
WHERE slug = 'mexican-smoked-chipotle-peppers';

-- Coffee & Ghost Pepper Seasoning Rub
UPDATE public.products SET 
  description_bg = 'Подправка Кафе и Ghost Pepper. Уникален микс, който съчетава дълбокия вкус на кафе с интензивната лютивост на Ghost Pepper. Перфектен за BBQ, особено за говеждо или свинско. Ниво на лютивост 8.',
  ingredients_bg = 'Кафе, Ghost Pepper, захар, сол, подправки'
WHERE slug = 'black-coffee-ghost-rub';

-- Happy Hatter Hot Sauce - ORIGINAL
UPDATE public.products SET 
  description_bg = 'Happy Hatter Hot Sauce – ORIGINAL. Както е показано в популярното телевизионно кулинарно шоу "Dagelijkse Kost". Сос на доматена основа с нотка на прасковена сладост и чушки Madame Jeanette за плодов и лют удар. Ниво на лютивост 6 Подходящ за вегани.',
  ingredients_bg = 'Домат, праскова, червен лук, чушки (Madame Jeanette, Birds eye), чесън, ябълка, оцет, тръстикова захар, лайм, сол, целина, билки'
WHERE slug = 'happy-hatter-hot-sauce';

-- Trinidad Scorpion
UPDATE public.products SET 
  description_bg = 'Trinidad Scorpion - както е показано в "HOT ONES" (Ниво на лютивост 10). Съставки ; Ябълков оцет, захар, чушка Trinidad Scorpion, червени чушки, сол. С яростен удар, този супер лют сос е истинско изживяване. Сладък в началото, с лютивост, която се изгражда за трайно парене. Ниво на лютивост 10 Подходящ за вегани.',
  ingredients_bg = 'Ябълков оцет, захар, чушка Trinidad Scorpion, червени чушки, сол'
WHERE slug = 'trinidad-scorpion';

-- "Regret" SUPER EXTREME
UPDATE public.products SET 
  description_bg = 'Сос "Regret" SUPER EXTREME (Ниво на лютивост 20). Името казва всичко... С ниво на лютивост 20, това е един от най-силните сосове, които някога сме имали. Само за истински "чилихеди" без страх. Използвайте на собствен риск!',
  ingredients_bg = 'Екстремно люти чушки (Carolina Reaper), чили екстракт, оцет, сол'
WHERE slug = 'regret-extreme-hot-sauce';
