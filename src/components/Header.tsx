import Link from 'next/link';
import { createClient } from '@/lib/supabase/server';

export default async function Header({ locale }: { locale: string }) {
  const supabase = await createClient();
  const { data: { user } } = await supabase.auth.getUser();

  let isShopOwner = false;
  if (user) {
    const { data: profile } = await supabase
      .from('profiles')
      .select('role')
      .eq('id', user.id)
      .single();
    isShopOwner = profile?.role === 'shop_owner';
  }

  return (
    <header className="border-b border-gray-200 bg-white">
      <div className="mx-auto max-w-5xl flex items-center justify-between px-6 py-3">
        <Link href={`/${locale}`} className="font-bold text-lg tracking-tight">
          🌶️ ChiliSaus
        </Link>

        <nav className="flex items-center gap-5 text-sm">
          <Link href={`/${locale}/shop`} className="text-gray-600 hover:text-gray-900">Shop</Link>
          <Link href={`/${locale}/cart`} className="text-gray-600 hover:text-gray-900">Cart</Link>

          {isShopOwner && (
            <Link
              href={`/${locale}/admin`}
              className="rounded bg-gray-900 px-3 py-1 text-white hover:bg-gray-700"
            >
              Admin
            </Link>
          )}

          {user ? (
            <div className="flex items-center gap-3">
              <span className="text-gray-500 hidden sm:block">{user.email}</span>
              <form action={`/api/auth/sign-out`} method="POST">
                <button
                  type="submit"
                  className="text-gray-600 hover:text-gray-900 underline"
                >
                  Sign out
                </button>
              </form>
            </div>
          ) : (
            <div className="flex items-center gap-3">
              <Link href={`/${locale}/auth/sign-in`} className="text-gray-600 hover:text-gray-900">Sign in</Link>
              <Link href={`/${locale}/auth/sign-up`} className="rounded bg-black px-3 py-1 text-white hover:bg-gray-800">
                Sign up
              </Link>
            </div>
          )}
        </nav>
      </div>
    </header>
  );
}
