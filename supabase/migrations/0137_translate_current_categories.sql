-- Migration 0137: Translate current category names for all locales
-- Previous translation migrations targeted old slugs that were renamed/deleted in 0010.
-- This migration sets translations for the current category set.

-- Dutch (nl)
UPDATE public.categories SET name_nl = 'Milde Chilisaus'                        WHERE slug = 'mild';
UPDATE public.categories SET name_nl = 'Middelhete Chilisaus'                    WHERE slug = 'medium';
UPDATE public.categories SET name_nl = 'Hete Chilisaus'                          WHERE slug = 'hot';
UPDATE public.categories SET name_nl = 'Zeer Hete Chilisaus'                     WHERE slug = 'very-hot';
UPDATE public.categories SET name_nl = 'Superhete Chilisaus'                     WHERE slug = 'superhot';
UPDATE public.categories SET name_nl = 'BBQ Producten'                           WHERE slug = 'bbq-products';
UPDATE public.categories SET name_nl = 'Chili Challenges'                        WHERE slug = 'chili-challenges';
UPDATE public.categories SET name_nl = 'Chili Chocolade'                         WHERE slug = 'chili-chocolate';
UPDATE public.categories SET name_nl = 'Chili Extracten'                         WHERE slug = 'chili-extracts';
UPDATE public.categories SET name_nl = 'Chili Oliën'                             WHERE slug = 'chili-oils';
UPDATE public.categories SET name_nl = 'Gedroogde Chilipepers, Poeders & Vlokken' WHERE slug = 'dried-chili-pods-powders-flakes';
UPDATE public.categories SET name_nl = 'Cadeaupakketten'                         WHERE slug = 'gift-boxes-sets';
UPDATE public.categories SET name_nl = 'Hete Honing'                             WHERE slug = 'hot-honey';
UPDATE public.categories SET name_nl = 'Chili Zout'                              WHERE slug = 'hot-salt';
UPDATE public.categories SET name_nl = 'Kruidenmixen & Rubs'                     WHERE slug = 'seasonings-rubs';
UPDATE public.categories SET name_nl = 'Pittige Chips, Noten & Snoep'            WHERE slug = 'spicy-chips-nuts-candy';

-- French (fr)
UPDATE public.categories SET name_fr = 'Sauce Piquante Douce'                    WHERE slug = 'mild';
UPDATE public.categories SET name_fr = 'Sauce Piquante Moyenne'                  WHERE slug = 'medium';
UPDATE public.categories SET name_fr = 'Sauce Piquante Forte'                    WHERE slug = 'hot';
UPDATE public.categories SET name_fr = 'Sauce Piquante Très Forte'               WHERE slug = 'very-hot';
UPDATE public.categories SET name_fr = 'Sauce Piquante Extrême'                  WHERE slug = 'superhot';
UPDATE public.categories SET name_fr = 'Produits BBQ'                            WHERE slug = 'bbq-products';
UPDATE public.categories SET name_fr = 'Défis Chili'                             WHERE slug = 'chili-challenges';
UPDATE public.categories SET name_fr = 'Chocolat au Piment'                      WHERE slug = 'chili-chocolate';
UPDATE public.categories SET name_fr = 'Extraits de Piment'                      WHERE slug = 'chili-extracts';
UPDATE public.categories SET name_fr = 'Huiles de Piment'                        WHERE slug = 'chili-oils';
UPDATE public.categories SET name_fr = 'Piments Séchés, Poudres & Flocons'       WHERE slug = 'dried-chili-pods-powders-flakes';
UPDATE public.categories SET name_fr = 'Coffrets Cadeaux'                        WHERE slug = 'gift-boxes-sets';
UPDATE public.categories SET name_fr = 'Miel Épicé'                              WHERE slug = 'hot-honey';
UPDATE public.categories SET name_fr = 'Sel Pimenté'                             WHERE slug = 'hot-salt';
UPDATE public.categories SET name_fr = 'Épices & Marinades'                      WHERE slug = 'seasonings-rubs';
UPDATE public.categories SET name_fr = 'Chips, Noix & Bonbons Épicés'            WHERE slug = 'spicy-chips-nuts-candy';

-- German (de)
UPDATE public.categories SET name_de = 'Milde Chilisauce'                        WHERE slug = 'mild';
UPDATE public.categories SET name_de = 'Mittelscharfe Chilisauce'                WHERE slug = 'medium';
UPDATE public.categories SET name_de = 'Scharfe Chilisauce'                      WHERE slug = 'hot';
UPDATE public.categories SET name_de = 'Sehr Scharfe Chilisauce'                 WHERE slug = 'very-hot';
UPDATE public.categories SET name_de = 'Extrascharfe Chilisauce'                 WHERE slug = 'superhot';
UPDATE public.categories SET name_de = 'BBQ Produkte'                            WHERE slug = 'bbq-products';
UPDATE public.categories SET name_de = 'Chili-Challenges'                        WHERE slug = 'chili-challenges';
UPDATE public.categories SET name_de = 'Chili-Schokolade'                        WHERE slug = 'chili-chocolate';
UPDATE public.categories SET name_de = 'Chili-Extrakte'                          WHERE slug = 'chili-extracts';
UPDATE public.categories SET name_de = 'Chiliöle'                                WHERE slug = 'chili-oils';
UPDATE public.categories SET name_de = 'Getrocknete Chilis, Pulver & Flocken'    WHERE slug = 'dried-chili-pods-powders-flakes';
UPDATE public.categories SET name_de = 'Geschenksets'                            WHERE slug = 'gift-boxes-sets';
UPDATE public.categories SET name_de = 'Scharfer Honig'                          WHERE slug = 'hot-honey';
UPDATE public.categories SET name_de = 'Chili-Salz'                              WHERE slug = 'hot-salt';
UPDATE public.categories SET name_de = 'Gewürze & Rubs'                          WHERE slug = 'seasonings-rubs';
UPDATE public.categories SET name_de = 'Scharfe Chips, Nüsse & Süßigkeiten'      WHERE slug = 'spicy-chips-nuts-candy';

-- Spanish (es)
UPDATE public.categories SET name_es = 'Salsa de Chili Suave'                    WHERE slug = 'mild';
UPDATE public.categories SET name_es = 'Salsa de Chili Media'                    WHERE slug = 'medium';
UPDATE public.categories SET name_es = 'Salsa de Chili Picante'                  WHERE slug = 'hot';
UPDATE public.categories SET name_es = 'Salsa de Chili Muy Picante'              WHERE slug = 'very-hot';
UPDATE public.categories SET name_es = 'Salsa de Chili Extrema'                  WHERE slug = 'superhot';
UPDATE public.categories SET name_es = 'Productos BBQ'                           WHERE slug = 'bbq-products';
UPDATE public.categories SET name_es = 'Desafíos de Chili'                       WHERE slug = 'chili-challenges';
UPDATE public.categories SET name_es = 'Chocolate con Chili'                     WHERE slug = 'chili-chocolate';
UPDATE public.categories SET name_es = 'Extractos de Chili'                      WHERE slug = 'chili-extracts';
UPDATE public.categories SET name_es = 'Aceites de Chili'                        WHERE slug = 'chili-oils';
UPDATE public.categories SET name_es = 'Chilis Secos, Polvos y Copos'            WHERE slug = 'dried-chili-pods-powders-flakes';
UPDATE public.categories SET name_es = 'Cajas de Regalo'                         WHERE slug = 'gift-boxes-sets';
UPDATE public.categories SET name_es = 'Miel Picante'                            WHERE slug = 'hot-honey';
UPDATE public.categories SET name_es = 'Sal Picante'                             WHERE slug = 'hot-salt';
UPDATE public.categories SET name_es = 'Especias y Aliños'                       WHERE slug = 'seasonings-rubs';
UPDATE public.categories SET name_es = 'Chips, Frutos Secos y Dulces Picantes'   WHERE slug = 'spicy-chips-nuts-candy';

-- Italian (it)
UPDATE public.categories SET name_it = 'Salsa di Peperoncino Delicata'           WHERE slug = 'mild';
UPDATE public.categories SET name_it = 'Salsa di Peperoncino Media'              WHERE slug = 'medium';
UPDATE public.categories SET name_it = 'Salsa di Peperoncino Piccante'           WHERE slug = 'hot';
UPDATE public.categories SET name_it = 'Salsa di Peperoncino Molto Piccante'     WHERE slug = 'very-hot';
UPDATE public.categories SET name_it = 'Salsa di Peperoncino Estrema'            WHERE slug = 'superhot';
UPDATE public.categories SET name_it = 'Prodotti BBQ'                            WHERE slug = 'bbq-products';
UPDATE public.categories SET name_it = 'Sfide al Peperoncino'                    WHERE slug = 'chili-challenges';
UPDATE public.categories SET name_it = 'Cioccolato al Peperoncino'               WHERE slug = 'chili-chocolate';
UPDATE public.categories SET name_it = 'Estratti di Peperoncino'                 WHERE slug = 'chili-extracts';
UPDATE public.categories SET name_it = 'Oli al Peperoncino'                      WHERE slug = 'chili-oils';
UPDATE public.categories SET name_it = 'Peperoncini Secchi, Polveri e Fiocchi'   WHERE slug = 'dried-chili-pods-powders-flakes';
UPDATE public.categories SET name_it = 'Cofanetti Regalo'                        WHERE slug = 'gift-boxes-sets';
UPDATE public.categories SET name_it = 'Miele Piccante'                          WHERE slug = 'hot-honey';
UPDATE public.categories SET name_it = 'Sale Piccante'                           WHERE slug = 'hot-salt';
UPDATE public.categories SET name_it = 'Spezie e Rub'                            WHERE slug = 'seasonings-rubs';
UPDATE public.categories SET name_it = 'Patatine, Noci e Dolci Piccanti'         WHERE slug = 'spicy-chips-nuts-candy';

-- Polish (pl)
UPDATE public.categories SET name_pl = 'Łagodny Sos Chili'                       WHERE slug = 'mild';
UPDATE public.categories SET name_pl = 'Średni Sos Chili'                        WHERE slug = 'medium';
UPDATE public.categories SET name_pl = 'Ostry Sos Chili'                         WHERE slug = 'hot';
UPDATE public.categories SET name_pl = 'Bardzo Ostry Sos Chili'                  WHERE slug = 'very-hot';
UPDATE public.categories SET name_pl = 'Ekstremalnie Ostry Sos Chili'            WHERE slug = 'superhot';
UPDATE public.categories SET name_pl = 'Produkty BBQ'                            WHERE slug = 'bbq-products';
UPDATE public.categories SET name_pl = 'Wyzwania Chili'                          WHERE slug = 'chili-challenges';
UPDATE public.categories SET name_pl = 'Czekolada z Chili'                       WHERE slug = 'chili-chocolate';
UPDATE public.categories SET name_pl = 'Ekstrakty Chili'                         WHERE slug = 'chili-extracts';
UPDATE public.categories SET name_pl = 'Oleje Chili'                             WHERE slug = 'chili-oils';
UPDATE public.categories SET name_pl = 'Suszone Chili, Proszki i Płatki'         WHERE slug = 'dried-chili-pods-powders-flakes';
UPDATE public.categories SET name_pl = 'Zestawy Prezentowe'                      WHERE slug = 'gift-boxes-sets';
UPDATE public.categories SET name_pl = 'Pikantny Miód'                           WHERE slug = 'hot-honey';
UPDATE public.categories SET name_pl = 'Ostra Sól'                               WHERE slug = 'hot-salt';
UPDATE public.categories SET name_pl = 'Przyprawy i Rub'                         WHERE slug = 'seasonings-rubs';
UPDATE public.categories SET name_pl = 'Pikantne Chipsy, Orzechy i Słodycze'     WHERE slug = 'spicy-chips-nuts-candy';

-- Portuguese (pt)
UPDATE public.categories SET name_pt = 'Molho de Pimenta Suave'                  WHERE slug = 'mild';
UPDATE public.categories SET name_pt = 'Molho de Pimenta Médio'                  WHERE slug = 'medium';
UPDATE public.categories SET name_pt = 'Molho de Pimenta Picante'                WHERE slug = 'hot';
UPDATE public.categories SET name_pt = 'Molho de Pimenta Muito Picante'          WHERE slug = 'very-hot';
UPDATE public.categories SET name_pt = 'Molho de Pimenta Extremo'                WHERE slug = 'superhot';
UPDATE public.categories SET name_pt = 'Produtos BBQ'                            WHERE slug = 'bbq-products';
UPDATE public.categories SET name_pt = 'Desafios de Pimenta'                     WHERE slug = 'chili-challenges';
UPDATE public.categories SET name_pt = 'Chocolate com Pimenta'                   WHERE slug = 'chili-chocolate';
UPDATE public.categories SET name_pt = 'Extratos de Pimenta'                     WHERE slug = 'chili-extracts';
UPDATE public.categories SET name_pt = 'Óleos de Pimenta'                        WHERE slug = 'chili-oils';
UPDATE public.categories SET name_pt = 'Pimentas Secas, Pós e Flocos'            WHERE slug = 'dried-chili-pods-powders-flakes';
UPDATE public.categories SET name_pt = 'Caixas de Presente'                      WHERE slug = 'gift-boxes-sets';
UPDATE public.categories SET name_pt = 'Mel Picante'                             WHERE slug = 'hot-honey';
UPDATE public.categories SET name_pt = 'Sal Picante'                             WHERE slug = 'hot-salt';
UPDATE public.categories SET name_pt = 'Temperos e Marinadas'                    WHERE slug = 'seasonings-rubs';
UPDATE public.categories SET name_pt = 'Chips, Nozes e Doces Picantes'           WHERE slug = 'spicy-chips-nuts-candy';

-- Swedish (sv)
UPDATE public.categories SET name_sv = 'Mild Chilisås'                           WHERE slug = 'mild';
UPDATE public.categories SET name_sv = 'Medel Chilisås'                          WHERE slug = 'medium';
UPDATE public.categories SET name_sv = 'Het Chilisås'                            WHERE slug = 'hot';
UPDATE public.categories SET name_sv = 'Mycket Het Chilisås'                     WHERE slug = 'very-hot';
UPDATE public.categories SET name_sv = 'Extrahett Chilisås'                      WHERE slug = 'superhot';
UPDATE public.categories SET name_sv = 'BBQ-produkter'                           WHERE slug = 'bbq-products';
UPDATE public.categories SET name_sv = 'Chili-utmaningar'                        WHERE slug = 'chili-challenges';
UPDATE public.categories SET name_sv = 'Chili-choklad'                           WHERE slug = 'chili-chocolate';
UPDATE public.categories SET name_sv = 'Chili-extrakt'                           WHERE slug = 'chili-extracts';
UPDATE public.categories SET name_sv = 'Chiliolja'                               WHERE slug = 'chili-oils';
UPDATE public.categories SET name_sv = 'Torkade Chilipeppar, Pulver & Flingor'   WHERE slug = 'dried-chili-pods-powders-flakes';
UPDATE public.categories SET name_sv = 'Presentaskar'                            WHERE slug = 'gift-boxes-sets';
UPDATE public.categories SET name_sv = 'Hett Honung'                             WHERE slug = 'hot-honey';
UPDATE public.categories SET name_sv = 'Chilisalt'                               WHERE slug = 'hot-salt';
UPDATE public.categories SET name_sv = 'Kryddor & Rubs'                          WHERE slug = 'seasonings-rubs';
UPDATE public.categories SET name_sv = 'Kryddiga Chips, Nötter & Godis'          WHERE slug = 'spicy-chips-nuts-candy';

-- Danish (da)
UPDATE public.categories SET name_da = 'Mild Chilisauce'                         WHERE slug = 'mild';
UPDATE public.categories SET name_da = 'Medium Chilisauce'                       WHERE slug = 'medium';
UPDATE public.categories SET name_da = 'Stærk Chilisauce'                        WHERE slug = 'hot';
UPDATE public.categories SET name_da = 'Meget Stærk Chilisauce'                  WHERE slug = 'very-hot';
UPDATE public.categories SET name_da = 'Ekstremt Stærk Chilisauce'               WHERE slug = 'superhot';
UPDATE public.categories SET name_da = 'BBQ-produkter'                           WHERE slug = 'bbq-products';
UPDATE public.categories SET name_da = 'Chili-udfordringer'                      WHERE slug = 'chili-challenges';
UPDATE public.categories SET name_da = 'Chili-chokolade'                         WHERE slug = 'chili-chocolate';
UPDATE public.categories SET name_da = 'Chili-ekstrakter'                        WHERE slug = 'chili-extracts';
UPDATE public.categories SET name_da = 'Chili-olier'                             WHERE slug = 'chili-oils';
UPDATE public.categories SET name_da = 'Tørrede Chili, Pulver & Flager'          WHERE slug = 'dried-chili-pods-powders-flakes';
UPDATE public.categories SET name_da = 'Gavesæt'                                 WHERE slug = 'gift-boxes-sets';
UPDATE public.categories SET name_da = 'Stærk Honning'                           WHERE slug = 'hot-honey';
UPDATE public.categories SET name_da = 'Chilisalt'                               WHERE slug = 'hot-salt';
UPDATE public.categories SET name_da = 'Krydderier & Rubs'                       WHERE slug = 'seasonings-rubs';
UPDATE public.categories SET name_da = 'Stærke Chips, Nødder & Slik'             WHERE slug = 'spicy-chips-nuts-candy';

-- Norwegian (no)
UPDATE public.categories SET name_no = 'Mild Chilisaus'                          WHERE slug = 'mild';
UPDATE public.categories SET name_no = 'Medium Chilisaus'                        WHERE slug = 'medium';
UPDATE public.categories SET name_no = 'Sterk Chilisaus'                         WHERE slug = 'hot';
UPDATE public.categories SET name_no = 'Veldig Sterk Chilisaus'                  WHERE slug = 'very-hot';
UPDATE public.categories SET name_no = 'Ekstremt Sterk Chilisaus'                WHERE slug = 'superhot';
UPDATE public.categories SET name_no = 'BBQ-produkter'                           WHERE slug = 'bbq-products';
UPDATE public.categories SET name_no = 'Chili-utfordringer'                      WHERE slug = 'chili-challenges';
UPDATE public.categories SET name_no = 'Chili-sjokolade'                         WHERE slug = 'chili-chocolate';
UPDATE public.categories SET name_no = 'Chili-ekstrakter'                        WHERE slug = 'chili-extracts';
UPDATE public.categories SET name_no = 'Chili-oljer'                             WHERE slug = 'chili-oils';
UPDATE public.categories SET name_no = 'Tørkede Chilier, Pulver & Flak'          WHERE slug = 'dried-chili-pods-powders-flakes';
UPDATE public.categories SET name_no = 'Gavesett'                                WHERE slug = 'gift-boxes-sets';
UPDATE public.categories SET name_no = 'Sterk Honning'                           WHERE slug = 'hot-honey';
UPDATE public.categories SET name_no = 'Chilisalt'                               WHERE slug = 'hot-salt';
UPDATE public.categories SET name_no = 'Krydder & Rubs'                          WHERE slug = 'seasonings-rubs';
UPDATE public.categories SET name_no = 'Sterke Chips, Nøtter & Godteri'          WHERE slug = 'spicy-chips-nuts-candy';

-- Czech (cs)
UPDATE public.categories SET name_cs = 'Jemná Chilli Omáčka'                     WHERE slug = 'mild';
UPDATE public.categories SET name_cs = 'Středně Pálivá Chilli Omáčka'            WHERE slug = 'medium';
UPDATE public.categories SET name_cs = 'Pálivá Chilli Omáčka'                    WHERE slug = 'hot';
UPDATE public.categories SET name_cs = 'Velmi Pálivá Chilli Omáčka'              WHERE slug = 'very-hot';
UPDATE public.categories SET name_cs = 'Extrémně Pálivá Chilli Omáčka'           WHERE slug = 'superhot';
UPDATE public.categories SET name_cs = 'BBQ Produkty'                            WHERE slug = 'bbq-products';
UPDATE public.categories SET name_cs = 'Chilli Výzvy'                            WHERE slug = 'chili-challenges';
UPDATE public.categories SET name_cs = 'Chilli Čokoláda'                         WHERE slug = 'chili-chocolate';
UPDATE public.categories SET name_cs = 'Chilli Extrakty'                         WHERE slug = 'chili-extracts';
UPDATE public.categories SET name_cs = 'Chilli Oleje'                            WHERE slug = 'chili-oils';
UPDATE public.categories SET name_cs = 'Sušené Chilli, Prášky a Vločky'          WHERE slug = 'dried-chili-pods-powders-flakes';
UPDATE public.categories SET name_cs = 'Dárkové Sady'                            WHERE slug = 'gift-boxes-sets';
UPDATE public.categories SET name_cs = 'Pálivý Med'                              WHERE slug = 'hot-honey';
UPDATE public.categories SET name_cs = 'Chilli Sůl'                              WHERE slug = 'hot-salt';
UPDATE public.categories SET name_cs = 'Koření a Rubs'                           WHERE slug = 'seasonings-rubs';
UPDATE public.categories SET name_cs = 'Pikantní Chipsy, Ořechy a Sladkosti'     WHERE slug = 'spicy-chips-nuts-candy';

-- Arabic (ar)
UPDATE public.categories SET name_ar = 'صلصة الفلفل الحار الخفيفة'              WHERE slug = 'mild';
UPDATE public.categories SET name_ar = 'صلصة الفلفل الحار المتوسطة'             WHERE slug = 'medium';
UPDATE public.categories SET name_ar = 'صلصة الفلفل الحار'                       WHERE slug = 'hot';
UPDATE public.categories SET name_ar = 'صلصة الفلفل الحار جداً'                 WHERE slug = 'very-hot';
UPDATE public.categories SET name_ar = 'صلصة الفلفل الحار الشديدة'              WHERE slug = 'superhot';
UPDATE public.categories SET name_ar = 'منتجات الشواء'                           WHERE slug = 'bbq-products';
UPDATE public.categories SET name_ar = 'تحديات الفلفل'                           WHERE slug = 'chili-challenges';
UPDATE public.categories SET name_ar = 'شوكولاتة الفلفل'                         WHERE slug = 'chili-chocolate';
UPDATE public.categories SET name_ar = 'مستخلصات الفلفل'                         WHERE slug = 'chili-extracts';
UPDATE public.categories SET name_ar = 'زيوت الفلفل'                             WHERE slug = 'chili-oils';
UPDATE public.categories SET name_ar = 'فلفل مجفف، مساحيق ورقائق'               WHERE slug = 'dried-chili-pods-powders-flakes';
UPDATE public.categories SET name_ar = 'صناديق الهدايا'                          WHERE slug = 'gift-boxes-sets';
UPDATE public.categories SET name_ar = 'عسل حار'                                  WHERE slug = 'hot-honey';
UPDATE public.categories SET name_ar = 'ملح الفلفل'                              WHERE slug = 'hot-salt';
UPDATE public.categories SET name_ar = 'توابل ومتبلات'                           WHERE slug = 'seasonings-rubs';
UPDATE public.categories SET name_ar = 'رقائق، مكسرات وحلوى حارة'               WHERE slug = 'spicy-chips-nuts-candy';

-- Bulgarian (bg)
UPDATE public.categories SET name_bg = 'Лека Чили Сос'                           WHERE slug = 'mild';
UPDATE public.categories SET name_bg = 'Средно Пикантна Чили Сос'               WHERE slug = 'medium';
UPDATE public.categories SET name_bg = 'Пикантна Чили Сос'                       WHERE slug = 'hot';
UPDATE public.categories SET name_bg = 'Много Пикантна Чили Сос'                 WHERE slug = 'very-hot';
UPDATE public.categories SET name_bg = 'Свръхпикантна Чили Сос'                 WHERE slug = 'superhot';
UPDATE public.categories SET name_bg = 'BBQ Продукти'                            WHERE slug = 'bbq-products';
UPDATE public.categories SET name_bg = 'Чили Предизвикателства'                  WHERE slug = 'chili-challenges';
UPDATE public.categories SET name_bg = 'Чили Шоколад'                            WHERE slug = 'chili-chocolate';
UPDATE public.categories SET name_bg = 'Чили Екстракти'                          WHERE slug = 'chili-extracts';
UPDATE public.categories SET name_bg = 'Чили Масла'                              WHERE slug = 'chili-oils';
UPDATE public.categories SET name_bg = 'Сушени Чили, Прахове и Люспи'            WHERE slug = 'dried-chili-pods-powders-flakes';
UPDATE public.categories SET name_bg = 'Подаръчни Комплекти'                     WHERE slug = 'gift-boxes-sets';
UPDATE public.categories SET name_bg = 'Пикантен Мед'                            WHERE slug = 'hot-honey';
UPDATE public.categories SET name_bg = 'Чили Сол'                                WHERE slug = 'hot-salt';
UPDATE public.categories SET name_bg = 'Подправки и Маринати'                    WHERE slug = 'seasonings-rubs';
UPDATE public.categories SET name_bg = 'Пикантни Чипсове, Ядки и Сладки'         WHERE slug = 'spicy-chips-nuts-candy';

-- Ukrainian (uk)
UPDATE public.categories SET name_uk = 'М''який Соус Чилі'                       WHERE slug = 'mild';
UPDATE public.categories SET name_uk = 'Середньогострий Соус Чилі'              WHERE slug = 'medium';
UPDATE public.categories SET name_uk = 'Гострий Соус Чилі'                       WHERE slug = 'hot';
UPDATE public.categories SET name_uk = 'Дуже Гострий Соус Чилі'                  WHERE slug = 'very-hot';
UPDATE public.categories SET name_uk = 'Надгострий Соус Чилі'                    WHERE slug = 'superhot';
UPDATE public.categories SET name_uk = 'BBQ Продукти'                            WHERE slug = 'bbq-products';
UPDATE public.categories SET name_uk = 'Виклики Чилі'                            WHERE slug = 'chili-challenges';
UPDATE public.categories SET name_uk = 'Шоколад з Чилі'                          WHERE slug = 'chili-chocolate';
UPDATE public.categories SET name_uk = 'Екстракти Чилі'                          WHERE slug = 'chili-extracts';
UPDATE public.categories SET name_uk = 'Олія Чилі'                               WHERE slug = 'chili-oils';
UPDATE public.categories SET name_uk = 'Сушений Чилі, Порошки та Пластівці'      WHERE slug = 'dried-chili-pods-powders-flakes';
UPDATE public.categories SET name_uk = 'Подарункові Набори'                      WHERE slug = 'gift-boxes-sets';
UPDATE public.categories SET name_uk = 'Гострий Мед'                             WHERE slug = 'hot-honey';
UPDATE public.categories SET name_uk = 'Гостра Сіль'                             WHERE slug = 'hot-salt';
UPDATE public.categories SET name_uk = 'Приправи та Руби'                        WHERE slug = 'seasonings-rubs';
UPDATE public.categories SET name_uk = 'Гострі Чіпси, Горіхи та Цукерки'         WHERE slug = 'spicy-chips-nuts-candy';
