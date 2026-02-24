import dotenv from 'dotenv';
import { createClient } from '@supabase/supabase-js';
import sharp from 'sharp';
import fetch from 'node-fetch';

dotenv.config({ path: '.env.local' });

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL;
const supabaseServiceKey = process.env.SUPABASE_SERVICE_ROLE_KEY;

if (!supabaseUrl || !supabaseServiceKey) {
  console.error('Missing Supabase credentials in .env.local');
  process.exit(1);
}

const supabase = createClient(supabaseUrl, supabaseServiceKey);
const BUCKET_NAME = 'product-images';

async function migrate() {
  console.log('Starting image migration...');

  const { data: products, error } = await supabase
    .from('products')
    .select('id, name, slug, image_url')
    .not('image_url', 'is', null)
    .filter('image_url', 'ilike', 'http%');

  if (error) {
    console.error('Error fetching products:', error);
    return;
  }

  console.log(`Found ${products.length} products with external images.`);

  for (const product of products) {
    try {
      console.log(`Processing: ${product.name}`);
      const externalUrl = product.image_url;
      
      if (externalUrl.includes(supabaseUrl)) {
        console.log('Already migrated, skipping.');
        continue;
      }

      const response = await fetch(externalUrl, {
        headers: {
          'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36'
        }
      });
      
      if (!response.ok) {
        throw new Error(`Failed to download: ${response.statusText}`);
      }

      const buffer = await response.arrayBuffer();
      const nodeBuffer = Buffer.from(buffer);

      console.log('Optimizing image...');
      const optimizedBuffer = await sharp(nodeBuffer)
        .resize(800, 800, { fit: 'inside', withoutEnlargement: true })
        .webp({ quality: 80 })
        .toBuffer();

      const fileName = `${product.slug}.webp`;
      const filePath = `products/${fileName}`;

      console.log(`Uploading to ${BUCKET_NAME}/${filePath}...`);
      const { error: uploadError } = await supabase.storage
        .from(BUCKET_NAME)
        .upload(filePath, optimizedBuffer, {
          contentType: 'image/webp',
          upsert: true
        });

      if (uploadError) throw uploadError;

      const { data: { publicUrl } } = supabase.storage
        .from(BUCKET_NAME)
        .getPublicUrl(filePath);

      console.log(`New URL: ${publicUrl}`);

      const { error: updateError } = await supabase
        .from('products')
        .update({ image_url: publicUrl })
        .eq('id', product.id);

      if (updateError) throw updateError;

      console.log('Success!');
      await new Promise(resolve => setTimeout(resolve, 200));

    } catch (err) {
      console.error(`Failed processing ${product.name}:`, err.message);
    }
  }

  console.log('Migration finished!');
}

migrate();
