-- Migration: Translate products batch 2 (Bulgarian)

-- Happy Hatter Hot Sauce - SMOKED
UPDATE public.products SET 
  description_bg = 'Happy Hatter Hot Sauce – SMOKED. Съставки ; Горски плодове, червено портвайн, червен винен оцет, фурми, цветен мед, Ghost Peppers, червен лук, шалот, чесън, чипотле на прах, пушен червен пипер, зехтин, сол. Богат и пушен сос, сладък и вкусен. Пълен с Ghost Peppers, мексиканско пушено Чипотле и сочни горски плодове. Декадентски, плътен и копринено гладък със страхотен дълготраен лют финиш. Перфектен с дивеч, пържола, дърпано свинско или бургер. Ниво на лютивост 7 Не е подходящ за вегани (съдържа мед)',
  ingredients_bg = 'Горски плодове, червено портвайн, червен винен оцет, фурми, цветен мед, Ghost Peppers, червен лук, шалот, чесън, чипотле на прах, пушен червен пипер, зехтин, сол'
WHERE slug = 'smoked-happy-hatter-hot-sauce';

-- Carolina Reaper Powder 10g
UPDATE public.products SET 
  description_bg = 'Carolina Reaper на прах 10гр. 1.8 млн. – 2.2 млн. SHU. Най-лютият чили прах в света. Използвайте с изключително внимание. Перфектен за мигновено добавяне на екстремна лютивост към всяко ястие. Подходящ за вегани.',
  ingredients_bg = 'Чили чушки Carolina Reaper'
WHERE slug = 'carolina-reaper-powder-10g';

-- Mexican Habanero Chili Flakes 20g
UPDATE public.products SET 
  description_bg = 'Хабанеро чили люспи 100 000 – 350 000 SHU. Перфектният баланс между лютивост и вкус. Известни със своя плодов аромат, тези люспи придават вкусен лют удар на вашите ястия. Пресни червени хабанеро чушки, отгледани в Мексико, сушени във фурна и натрошени. Подходящи за вегани.',
  ingredients_bg = 'Сушени Хабанеро чушки'
WHERE slug = 'habanero-chili-flakes-15g-100000-350000-scoville-heat-units';

-- Mexican Habanero Dried Pods
UPDATE public.products SET 
  description_bg = 'Мексикански Хабанеро сушени шушулки (100 000 - 350 000 SHU). Класическата плодова лютивост от Мексико. Идеални за салса, маринати и яхнии. Подходящи за вегани.',
  ingredients_bg = 'Сушени Хабанеро чушки'
WHERE slug = 'mexican-habanero-peppers-100000-350000-scoville-heat-units';

-- Naga / Ghost Pepper Dried Pods
UPDATE public.products SET 
  description_bg = 'Naga / Ghost Pepper сушени шушулки 855 000 – 1 млн. SHU. 3-тата най-люта чушка в света. Пликче с 12 сушени Ghost Peppers. Вкусът е първоначално пушен и почти сладък, но лютивостта ви напада след 30 секунди. Използвайте сушени, натрошени или след накисване в гореща вода. Подходящи за вегани.',
  ingredients_bg = 'Сушени Ghost Peppers (Bhut Jolokia)'
WHERE slug = 'naga-ghost-pepper-855000-1-million-scoville-heat-units';

-- Mexican Smoked Chipotle Flakes
UPDATE public.products SET 
  description_bg = 'Мексикански пушен Чипотле люспи - 20гр (2500 - 8000 SHU). Вкусни пушени Халапеньо люспи. Незаменими в мексиканската кухня за онзи дълбок, автентичен BBQ вкус. Подходящи за вегани.',
  ingredients_bg = 'Сушени и пушени Халапеньо чушки (Чипотле)'
WHERE slug = 'mexican-smoked-chipotle-powder-40g-2500-8000-scoville-heat-units';

-- Mexican Habanero Powder 30g
UPDATE public.products SET 
  description_bg = 'Хабанеро на прах 100 000 – 350 000 SHU. Произведен от сушени и фино смлени Хабанеро шушулки. Идеален за мексикански ястия или BBQ. Смесете с майонеза или кисело мляко за лют дип. Подходящ за вегани.',
  ingredients_bg = 'Хабанеро чили на прах'
WHERE slug = 'habanero-powder-40g-100000-350000-scoville-heat-units';

-- 33% Pure Carolina Reaper Sambal
UPDATE public.products SET 
  description_bg = '33% чист самбал Carolina Reaper. Съставки ; Лук 40%, Carolina Reaper 33%, рафинирана захар 8%, слънчогледово олио 7.5%, сладък соев сос 7.5%, бял оцет 0.5%, сол, подправки. Произведено от известния Devon Chilli Man от Великобритания. Първо вкусен сладък вкус благодарение на карамелизирания лук, след това влакче на ужасите от пресните Carolina Reapers. Ниво на лютивост 12 Подходящ за вегани',
  ingredients_bg = 'Лук 40%, Carolina Reaper 33%, рафинирана захар 8%, слънчогледово олио 7.5%, сладък соев сос 7.5%, бял оцет 0.5%, сол, подправки'
WHERE slug = '33-carolina-reaper-sambal-heat-level-15';

-- Chilisaus.be - The 2020 Edition - Garlic Italian
UPDATE public.products SET 
  description_bg = 'Garlic Italian (без добавена захар) Перфектен за спагети. Съставки ; Рапично масло, вода, бял винен оцет, зехтин, червено чили, Naga чили (3%), чесново пюре, сол, подправки, билки. Нашият първи собствен сос! Висококачествени съставки, копринен зехтин, пресни Naga Ghost peppers, МНОГО чесън и италиански билки. Прост и вкусен. Ниво на лютивост 8 Подходящ за вегани',
  ingredients_bg = 'Рапично масло, вода, бял винен оцет, зехтин, червено чили, Naga чили (3%), чесново пюре, сол, подправки, билки'
WHERE slug = 'chilisaus-be-the-2020-edition-heat-level-8';

-- Carolina Reaper Flakes 10g
UPDATE public.products SET 
  description_bg = 'Carolina Reaper люспи 1.8 млн. – 2.2 млн. SHU. Най-лютата чушка в света, сушена и натрошена на красиви люспи от огън (включително семената). Малка щипка е достатъчна, за да придаде онзи Reaper удар на супи, кърита или паста. Използвайте с внимание. Подходящи за вегани.',
  ingredients_bg = 'Carolina Reaper чили люспи'
WHERE slug = 'carolina-reaper-flakes-10g-1-8-million-2-2-million-scoville-heat-units';

-- Happy Hatter Hot Sauce - BOMBAY
UPDATE public.products SET 
  description_bg = 'Happy Hatter Hot Sauce – BOMBAY. Съставки ; Манго, ананас, жълто Хабанеро чили, лук, бял винен оцет, тръстикова захар, банани, чесън, сок от лайм, зехтин, микс от подправки (съдържа целина), сол. Свеж и плодов сос с куркума и азиатски подправки. Перфектно балансиран с добра лютивост от жълтото Хабанеро. Идеален за уок или оризови ястия. Ниво на лютивост 8 Подходящ за вегани',
  ingredients_bg = 'Манго, ананас, жълто Хабанеро чили, лук, бял винен оцет, тръстикова захар, банани, чесън, сок от лайм, зехтин, микс от подправки (съдържа целина), сол'
WHERE slug = 'happy-hatter-bombay-produced-in-belgium-heat-level-7';

-- Naga / Ghost Pepper Powder 10g
UPDATE public.products SET 
  description_bg = 'Naga / Ghost на прах 855 000 - 1 млн. SHU. Директно от Нагаланд, Индия. Вкусът е първоначално пушен и почти сладък, но интензивната лютивост ви напада след 30-40 секунди. Използвайте с грижа. Подходящ за вегани.',
  ingredients_bg = 'Ghost Pepper чили на прах'
WHERE slug = 'naga-ghost-powder-10g-850000-1-million-scoville-heat-units';

-- Naga / Ghost Pepper Flakes 10g
UPDATE public.products SET 
  description_bg = 'Naga / Ghost чили люспи 855 000 - 1 млн. SHU. Директно от Нагаланд, тези люспи са страхотна алтернатива на пресните чушки за придаване на екстремна лютивост на вашите ястия. Подходящи за вегани.',
  ingredients_bg = 'Ghost Pepper чили люспи'
WHERE slug = 'naga-ghost-pepper-flakes-10g-855000-1-million-scoville-heat-units';

-- Happy Hatter Gift Box
UPDATE public.products SET 
  description_bg = 'Семейство Happy Hatter – 3 соса – Представени в ръчно изработена подаръчна кутия. Съдържа ORIGINAL (Лютивост 6), SMOKED (Лютивост 7) и BOMBAY (Лютивост 7). 100% качество от белгийския производител Wim Daans.',
  details_bg = 'Съдържа 3 бутилки по 100мл: Original, Smoked и Bombay.'
WHERE slug = 'happy-hatter-trio-gift-boxed';

-- The Carolina Reaper Essentials Kit
UPDATE public.products SET 
  description_bg = 'Комплектът Carolina Reaper Essentials: Шушулки, Прах, Самбал и Сос. Всичко, от което се нуждаете, за да изпитате най-лютата чушка в света в 4 различни форми. Максимална лютивост гарантирана! Подходящ за вегани.',
  details_bg = 'Включва: 1x Сос, 1x Самбал, 1x Прах, 1x сушени шушулки.'
WHERE slug = 'the-ultimate-reaper-pack';

-- White Whale Sauces - Limonhello
UPDATE public.products SET 
  description_bg = '"Limon-hello" Използва само най-добрите лимони "Sfusato" от италианското крайбрежие Амалфи. Съставки ; Madame Jeanette чушки, лимони Sfusato, морков, лук, жълта чушка, чесън, джинджифил, ябълков оцет, куркума, сол. Свеж и жив сос, богат на витамин С. Фантастичен с риба, такос или в коктейл. Без глутен, без добавена захар. Ниво на лютивост 8 Подходящ за вегани',
  ingredients_bg = 'Madame Jeanette чушки, лимони Sfusato, морков, лук, жълта чушка, чесън, джинджифил, ябълков оцет, куркума, сол'
WHERE slug = 'white-whale-sauces-limonhello-hot-sauce-heat-level-8';

-- "The Ripper"
UPDATE public.products SET 
  description_bg = 'The Ripper (без добавена захар). Съставки: Scotch Bonnet чили, червена чушка, Carolina Reaper чили, ябълков оцет, сол, чили на прах, чили екстракт. Опасно вкусна комбинация от плодов Scotch Bonnet и най-лютата в света Carolina Reaper. Максимално изгаряне! Ниво на лютивост 12 Подходящ за вегани',
  ingredients_bg = 'Scotch Bonnet чили, червена чушка, Carolina Reaper чили, ябълков оцет, сол, чили на прах, чили екстракт'
WHERE slug = 'the-ripper-carolina-reaper';

-- Crazy Bastard - FULL Collection
UPDATE public.products SET 
  description_bg = 'Пълната колекция Crazy Bastard - 7 соса в подаръчна кутия. Ръчно изработени в Берлин с печени на огън люти чушки и пресни естествени съставки. Без рафинирана захар или екстракти. Съдържа всички варианти от Халапеньо до Carolina Reaper.',
  details_bg = 'Съдържа 7 бутилки по 100мл: Зелен, Розов, Син, Жълт, Оранжев, Червен и Черен.'
WHERE slug = 'crazy-bastard-full-collection-x7-sauces';

-- Crazy Bastard HOT BOX
UPDATE public.products SET 
  description_bg = 'Crazy Bastard Hot Box - 3-те най-люти соса от колекцията: Оранжев (Ghost Pepper и Манго), Червен (Trinidad Scorpion и Клементина) и Черен (Carolina Reaper и Боровинка). За истински търсачи на силни усещания. Подходящ за вегани.',
  details_bg = 'Съдържа 3 бутилки по 100мл: Ghost Pepper, Trinidad Scorpion и Carolina Reaper.'
WHERE slug = 'crazy-bastard-hot-box-x3-heat-level-10';

-- RED - Trinidad Scorpion & Clementine
UPDATE public.products SET 
  description_bg = 'RED - Сос Trinidad Scorpion и Клементина. Съставки: Чушки, ябълка, лук, бял винен оцет, клементини (10%), чили Trinidad Scorpion (6%), чесън, лайм, зехтин, морска сол. Вторият най-лют сос от колекцията. Страхотен с риба на скара или скариди. Ниво на лютивост 10 Подходящ за вегани',
  ingredients_bg = 'Чушки, ябълка, лук, бял винен оцет, клементини (10%), чили Trinidad Scorpion (6%), чесън, лайм, зехтин, морска сол'
WHERE slug = 'red-trinidad-scorpion-clementine-heat-level-10';
