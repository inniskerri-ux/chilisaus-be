import { redirect } from 'next/navigation';
import { createClient } from '@/lib/supabase/server';
import { cookies } from 'next/headers';
import CheckoutForm from './components/CheckoutForm';
import { calculatePackageWeight } from '@/lib/shipping/config';

export default async function CheckoutPage({ params }: { params: Promise<{ locale: string }> }) {
  const { locale } = await params;
  const supabase = await createClient();
  const { data: { session } } = await supabase.auth.getSession();
  
  // Checkout is allowed for guests, but we prefer them to be logged in
  // If we wanted to force login: if (!session) redirect(`/${locale}/auth/sign-in`);

  const cartSessionId = (await cookies()).get('cart_session_id')?.value;
  if (!cartSessionId) redirect(`/${locale}/cart`);

  // Fetch cart items
  const { data: cartItems } = await supabase
    .from('cart_items')
    .select('*, product:products(*)')
    .eq('cart_session_id', cartSessionId);

  if (!cartItems || cartItems.length === 0) redirect(`/${locale}/cart`);

  // Calculate weight for shipping
  const weightItems = cartItems.map(item => ({
    productName: item.product.name,
    quantity: item.quantity,
    capacityMl: item.product.capacity_ml,
    selectedSize: item.selected_size,
    weightGrams: item.product.weight_grams,
  }));
  const weightKg = calculatePackageWeight(weightItems);

  return (
    <div className="container mx-auto px-4 py-12 max-w-6xl">
      <CheckoutForm 
        cartItems={cartItems} 
        weightKg={weightKg} 
        locale={locale}
        initialEmail={session?.user?.email}
      />
    </div>
  );
}
