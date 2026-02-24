import { redirect } from 'next/navigation';
import { createClient } from '@/lib/supabase/server';

export default async function CheckoutPage({ params: { locale } }: { params: { locale: string }}) {
  const supabase = await createClient();
  const { data: { session } } = await supabase.auth.getSession();
  if (!session) redirect(`/${locale}/auth/sign-in`);

  return <div className="p-6"><h1 className="text-2xl font-bold">Checkout</h1></div>;
}
