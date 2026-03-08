-- Migration: Translate base seeds (Arabic)

-- Categories
UPDATE public.categories SET name_ar = 'صلصة حارة كلاسيكية', description_ar = 'صلصات فلفل يومية لأي وجبة.' WHERE slug = 'classic-hot-sauce';
UPDATE public.categories SET name_ar = 'مخمر', description_ar = 'طعم معقد ناتج عن التخمير البطيء.' WHERE slug = 'fermented';
UPDATE public.categories SET name_ar = 'مدخن', description_ar = 'صلصات مدخنة مع فلفل مشوي على النار.' WHERE slug = 'smoky';
UPDATE public.categories SET name_ar = 'فاكهي', description_ar = 'مزيج مشرق ومنعش مع فواكه استوائية.' WHERE slug = 'fruit-forward';
UPDATE public.categories SET name_ar = 'تحديات الفلفل والوجبات الخفيفة الحارة', description_ar = 'اختبر حدودك مع أكثر وجباتنا الخفيفة حرارة.' WHERE slug = 'chili-challenges-spicy-snacks';
UPDATE public.categories SET name_ar = 'خلاصات الفلفل', description_ar = 'خلاصات الكابسيسين النقية لحرارة قصوى.' WHERE slug = 'chili-extracts';
UPDATE public.categories SET name_ar = 'زيت الفلفل', description_ar = 'زيوت منكهة للطبخ أو التتبيل.' WHERE slug = 'chili-oil';
UPDATE public.categories SET name_ar = 'فلفل مجفف', description_ar = 'قرون ورقائق ومساحيق لمطبخك.' WHERE slug = 'dried-chilies-pods-flakes-powders';
UPDATE public.categories SET name_ar = 'صناديق هدايا', description_ar = 'الهدية المثالية لعشاق الفلفل الحار.' WHERE slug = 'gift-boxes-sets';
UPDATE public.categories SET name_ar = 'عسل حار', description_ar = 'عسل منكه بالفلفل لمسة حلوة وحارة.' WHERE slug = 'hot-honey';
UPDATE public.categories SET name_ar = 'أملاح وتوابل', description_ar = 'ارفع مستوى أطباقك مع مزيج التوابل الخاص بنا.' WHERE slug = 'salts-seasonings-rubs';

-- Chilli Types
UPDATE public.chilli_types SET name_ar = 'هالبينو', description_ar = 'حرارة متوازنة من الفلفل الأخضر.' WHERE slug = 'jalapeno';
UPDATE public.chilli_types SET name_ar = 'هابانيرو', description_ar = 'رائحة حمضية نارية وحرارة عالية.' WHERE slug = 'habanero';
UPDATE public.chilli_types SET name_ar = 'فلفل الشبح (جوس بيبير)', description_ar = 'كثافة ناغا جولوكيا للباحثين عن الإثارة.' WHERE slug = 'ghost-pepper';
UPDATE public.chilli_types SET name_ar = 'كارولينا ريبر', description_ar = 'حرارة قياسية عالمية مع نغمات فاكهية.' WHERE slug = 'carolina-reaper';
UPDATE public.chilli_types SET name_ar = 'سكوتش بونيت', description_ar = 'فلفل كاريبي بطعم فاكهي وكثيف.' WHERE slug = 'scotch-bonnet';
UPDATE public.chilli_types SET name_ar = 'ترينيداد سكوربيون', description_ar = 'لسعة قوية ومستمرة.' WHERE slug = 'trinidad-scorpion';
