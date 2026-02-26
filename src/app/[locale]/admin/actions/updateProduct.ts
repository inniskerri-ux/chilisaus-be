'use server';

import { revalidatePath } from 'next/cache';
import { ensureShopOwner } from '../lib/auth';

interface UpdateProductContext {
  locale: string;
  defaultBrandId?: string | number;
}

export async function updateProduct(
  context: UpdateProductContext,
  formData: FormData
): Promise<{ error?: string; success?: string }> {
  const { error, supabase } = await ensureShopOwner();
  if (error || !supabase) {
    return { error: 'Not authorized' };
  }

  const storeMode = process.env.NEXT_PUBLIC_STORE_MODE === 'multi' ? 'multi' : 'single';
  const productId = formData.get('product_id')?.toString();
  if (!productId) {
    return { error: 'Missing product ID' };
  }

  const name = formData.get('name')?.toString().trim();
  const slug = formData.get('slug')?.toString().trim();
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

  if (storeMode === 'multi' && !brandId) {
    return { error: 'Brand is required in multi-store mode' };
  }

  const { error: updateError } = await supabase
    .from('products')
    .update({
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
      stock,
      is_active: isActive,
      nutrition_info: nutritionInfo,
      size_options: sizeOptions.length > 0 ? sizeOptions : null,
      color_options: colorOptions.length > 0 ? colorOptions : null
    })
    .eq('id', productId);

  if (updateError) {
    return { error: updateError.message };
  }

  await supabase.from('products_chilli_types').delete().eq('product_id', productId);

  if (chilliTypeIds.length > 0) {
    const rows = chilliTypeIds.map((chilliId) => ({
      product_id: productId,
      chilli_type_id: chilliId
    }));
    const { error: insertError } = await supabase.from('products_chilli_types').insert(rows);
    if (insertError) {
      return { error: insertError.message };
    }
  }

  revalidatePath(`/${context.locale}/admin/products`);
  revalidatePath(`/${context.locale}/admin/products/${productId}`);

  return { success: 'updated' };
}
