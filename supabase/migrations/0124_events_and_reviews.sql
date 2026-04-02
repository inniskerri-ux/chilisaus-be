-- Create reviews table
CREATE TABLE IF NOT EXISTS public.reviews (
    id uuid DEFAULT gen_random_uuid() PRIMARY KEY,
    title text NOT NULL,
    title_nl text,
    title_fr text,
    title_de text,
    title_es text,
    title_it text,
    title_pl text,
    title_cs text,
    title_da text,
    title_pt text,
    title_no text,
    title_sv text,
    title_uk text,
    title_ar text,
    title_bg text,
    reviewer text,
    youtube_id text NOT NULL,
    is_active boolean DEFAULT true,
    sort_order integer DEFAULT 0,
    created_at timestamptz DEFAULT now(),
    updated_at timestamptz DEFAULT now()
);

-- Create events table
CREATE TABLE IF NOT EXISTS public.events (
    id uuid DEFAULT gen_random_uuid() PRIMARY KEY,
    name text NOT NULL,
    name_nl text,
    name_fr text,
    name_de text,
    name_es text,
    name_it text,
    name_pl text,
    name_cs text,
    name_da text,
    name_pt text,
    name_no text,
    name_sv text,
    name_uk text,
    name_ar text,
    name_bg text,
    location text NOT NULL,
    date_info text,
    date_info_nl text,
    date_info_fr text,
    date_info_de text,
    date_info_es text,
    date_info_it text,
    date_info_pl text,
    date_info_cs text,
    date_info_da text,
    date_info_pt text,
    date_info_no text,
    date_info_sv text,
    date_info_uk text,
    date_info_ar text,
    date_info_bg text,
    website_url text,
    is_active boolean DEFAULT true,
    sort_order integer DEFAULT 0,
    created_at timestamptz DEFAULT now(),
    updated_at timestamptz DEFAULT now()
);

-- Enable RLS
ALTER TABLE public.reviews ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.events ENABLE ROW LEVEL SECURITY;

-- Public read access
CREATE POLICY "Allow public read access on reviews" ON public.reviews FOR SELECT USING (is_active = true);
CREATE POLICY "Allow public read access on events" ON public.events FOR SELECT USING (is_active = true);

-- Admin full access (using the same logic as products)
CREATE POLICY "Allow admin all access on reviews" ON public.reviews
    FOR ALL USING (EXISTS (SELECT 1 FROM public.profiles WHERE id = auth.uid() AND role = 'shop_owner'));

CREATE POLICY "Allow admin all access on events" ON public.events
    FOR ALL USING (EXISTS (SELECT 1 FROM public.profiles WHERE id = auth.uid() AND role = 'shop_owner'));

-- Trigger for updated_at
CREATE OR REPLACE FUNCTION update_updated_at_column()
RETURNS TRIGGER AS $$
BEGIN
    NEW.updated_at = now();
    RETURN NEW;
END;
$$ language 'plpgsql';

CREATE TRIGGER update_reviews_updated_at BEFORE UPDATE ON public.reviews FOR EACH ROW EXECUTE PROCEDURE update_updated_at_column();
CREATE TRIGGER update_events_updated_at BEFORE UPDATE ON public.events FOR EACH ROW EXECUTE PROCEDURE update_updated_at_column();
