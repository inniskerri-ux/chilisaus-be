'use server';

import { revalidatePath } from 'next/cache';
import { ensureShopOwner } from '../lib/auth';

interface CreateProductContext {
  locale: string;
  defaultBrandId?: string | number;
}

export async function createProduct(
  context: CreateProductContext,
  formData: FormData
): Promise<{ error?: string; success?: string; productId?: string }> {
  const { error, supabase } = await ensureShopOwner();
  if (error || !supabase) {
    return { error: 'Not authorized' };
  }

  const storeMode = process.env.NEXT_PUBLIC_STORE_MODE === 'multi' ? 'multi' : 'single';
  const name = formData.get('name')?.toString().trim();
  let slug = formData.get('slug')?.toString().trim();
  const priceCents = Number(formData.get('price_cents'));
  const currency = formData.get('currency')?.toString() || 'GBP';
  const description = formData.get('description')?.toString() || '';
  const heatLevel = formData.get('heat_level')?.toString() || null;
  const categoryId = formData.get('category_id')?.toString() || null;
  const brandId =
    formData.get('brand_id')?.toString() ||
    (context.defaultBrandId ? String(context.defaultBrandId) : null);
  const imageUrl = formData.get('image_url')?.toString() || null;
  const ingredients = formData.get('ingredients')?.toString() || null;
  const capacityMl = formData.get('capacity_ml') ? Number(formData.get('capacity_ml')) : null;
  const weightGrams = formData.get('weight_grams') ? Number(formData.get('weight_grams')) : 0;
  const stock = formData.get('stock') ? Number(formData.get('stock')) : 0;
  const isActive = formData.get('is_active') === 'true';
  const nutritionInfoRaw = formData.get('nutrition_info')?.toString();
  const nutritionInfo = nutritionInfoRaw ? JSON.parse(nutritionInfoRaw) : null;

  const sizeOptionsRaw = formData.get('size_options')?.toString() || '';
  const colorOptionsRaw = formData.get('color_options')?.toString() || '';
  const sizeOptions = sizeOptionsRaw.split(',').map(s => s.trim()).filter(Boolean);
  const colorOptions = colorOptionsRaw.split(',').map(s => s.trim()).filter(Boolean);

  const chilliTypeIds = formData.getAll('chilliTypeIds').map((id) => id.toString()).filter(Boolean);

  if (!name || !slug || Number.isNaN(priceCents)) {
    return { error: 'Missing required fields' };
  }

  // Ensure unique slug
  let uniqueSlug = slug;
  let counter = 1;
  while (true) {
    const { data: existing } = await supabase
      .from('products')
      .select('id')
      .eq('slug', uniqueSlug)
      .maybeSingle();
    
    if (!existing) break;
    uniqueSlug = `${slug}-${counter}`;
    counter++;
  }
  slug = uniqueSlug;

  if (storeMode === 'multi' && !brandId) {
    return { error: 'Brand is required in multi-store mode' };
  }

  const { data: product, error: insertError } = await supabase
    .from('products')
    .insert({
      name,
      slug,
      price_cents: priceCents,
      currency,
      description,
      image_url: imageUrl,
      heat_level: heatLevel,
      category_id: categoryId,
      brand_id: brandId,
      ingredients,
      capacity_ml: capacityMl,
      weight_grams: weightGrams,
      stock,
      is_active: isActive,
      nutrition_info: nutritionInfo,
      size_options: sizeOptions.length > 0 ? sizeOptions : null,
      color_options: colorOptions.length > 0 ? colorOptions : null
    })
    .select('id')
    .single();

  if (insertError || !product) {
    return { error: insertError?.message || 'Unable to create product' };
  }

  if (chilliTypeIds.length > 0) {
    const joinRows = chilliTypeIds.map((chilliId) => ({
      product_id: product.id,
      chilli_type_id: chilliId
    }));
    const { error: joinError } = await supabase.from('products_chilli_types').insert(joinRows);
    if (joinError) {
      return { error: joinError.message };
    }
  }

  revalidatePath(`/${context.locale}/admin/products`);

  return { success: 'created', productId: product.id };
}
