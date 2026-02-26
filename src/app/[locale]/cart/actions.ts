'use server';

import { createClient } from '@/lib/supabase/server';
import { cookies } from 'next/headers';
import { revalidatePath } from 'next/cache';

export async function addToCart(productId: string, quantity: number = 1, size?: string, color?: string) {
  const supabase = await createClient();
  const cookieStore = await cookies();
  
  let cartSessionId = cookieStore.get('cart_session_id')?.value;

  if (!cartSessionId) {
    cartSessionId = crypto.randomUUID();
    cookieStore.set('cart_session_id', cartSessionId, {
      path: '/',
      maxAge: 60 * 60 * 24 * 30, // 30 days
      sameSite: 'lax',
      secure: process.env.NODE_ENV === 'production',
    });
  }

  // Check if item already exists in cart
  const { data: existingItem } = await supabase
    .from('cart_items')
    .select('id, quantity')
    .eq('cart_session_id', cartSessionId)
    .eq('product_id', productId)
    .maybeSingle();

  if (existingItem) {
    const { error } = await supabase
      .from('cart_items')
      .update({ quantity: existingItem.quantity + quantity })
      .eq('id', existingItem.id);
    
    if (error) throw error;
  } else {
    const { error } = await supabase
      .from('cart_items')
      .insert({
        cart_session_id: cartSessionId,
        product_id: productId,
        quantity: quantity,
        selected_size: size,
        selected_color: color,
      });
    
    if (error) throw error;
  }

  revalidatePath('/cart');
}

export async function removeFromCart(itemId: string) {
  const supabase = await createClient();
  const { error } = await supabase
    .from('cart_items')
    .delete()
    .eq('id', itemId);
  
  if (error) throw error;
  revalidatePath('/cart');
}

export async function updateCartQuantity(itemId: string, quantity: number) {
  const supabase = await createClient();
  
  if (quantity <= 0) {
    return removeFromCart(itemId);
  }

  const { error } = await supabase
    .from('cart_items')
    .update({ quantity })
    .eq('id', itemId);
  
  if (error) throw error;
  revalidatePath('/cart');
}
