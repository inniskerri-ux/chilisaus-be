-- 4. Setup RLS Policies
DROP POLICY IF EXISTS "Allow public read access on video_reviews" ON public.video_reviews;
CREATE POLICY "Allow public read access on video_reviews" ON public.video_reviews FOR SELECT USING (is_active = true);

DROP POLICY IF EXISTS "Allow public read access on shop_events" ON public.shop_events;
CREATE POLICY "Allow public read access on shop_events" ON public.shop_events FOR SELECT USING (is_active = true);

DROP POLICY IF EXISTS "Allow admin all access on video_reviews" ON public.video_reviews;
CREATE POLICY "Allow admin all access on video_reviews" ON public.video_reviews
    FOR ALL USING (EXISTS (SELECT 1 FROM public.profiles WHERE id = auth.uid() AND role = 'shop_owner'));

DROP POLICY IF EXISTS "Allow admin all access on shop_events" ON public.shop_events;
CREATE POLICY "Allow admin all access on shop_events" ON public.shop_events
    FOR ALL USING (EXISTS (SELECT 1 FROM public.profiles WHERE id = auth.uid() AND role = 'shop_owner'));
