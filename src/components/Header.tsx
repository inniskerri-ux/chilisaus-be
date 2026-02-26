import Link from 'next/link';
import Image from 'next/image';
import { createClient } from '@/lib/supabase/server';
import { Instagram, MessageCircle } from 'lucide-react';

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
    <header className="sticky top-0 z-50 border-b border-zinc-100 bg-white/80 backdrop-blur-md">
      <div className="mx-auto max-w-7xl flex items-center justify-between px-6 py-4">
        <Link href={`/${locale}`} className="flex items-center">
          <Image 
            src="/images/logo.jpg" 
            alt="ChiliSaus Logo" 
            width={123} 
            height={48} 
            quality={100}
            className="h-12 w-auto object-contain"
            priority
          />
        </Link>

        <nav className="hidden md:flex items-center gap-8 text-sm font-bold uppercase tracking-widest">
          <Link href={`/${locale}/shop`} className="text-zinc-600 hover:text-brand-red transition-colors">Shop</Link>
          <Link href={`/${locale}/scoville-scale`} className="text-zinc-600 hover:text-brand-red transition-colors">Scoville</Link>
          <Link href={`#`} className="text-zinc-600 hover:text-brand-red transition-colors">Videos</Link>
        </nav>

        <div className="flex items-center gap-4">
          <div className="flex items-center gap-2 border-r border-zinc-100 pr-4 mr-2">
            <a 
              href="https://www.instagram.com/chilisaus.be" 
              target="_blank" 
              rel="noopener noreferrer"
              className="p-2 text-zinc-400 hover:text-brand-red transition-colors"
            >
              <Instagram size={20} />
            </a>
            <a 
              href={`https://wa.me/${process.env.NEXT_PUBLIC_WHATSAPP_NUMBER}`} 
              target="_blank" 
              rel="noopener noreferrer"
              className="p-2 text-zinc-400 hover:text-brand-red transition-colors"
            >
              <MessageCircle size={20} />
            </a>
          </div>

          <nav className="flex items-center gap-4 text-sm font-bold uppercase tracking-wider">
            {isShopOwner && (
              <Link
                href={`/${locale}/admin`}
                className="hidden sm:block rounded-full bg-zinc-100 px-4 py-2 text-zinc-900 hover:bg-zinc-200 transition-colors"
              >
                Admin
              </Link>
            )}

            {user ? (
              <form action={`/api/auth/sign-out`} method="POST">
                <button
                  type="submit"
                  className="text-zinc-500 hover:text-brand-red transition-colors"
                >
                  Sign out
                </button>
              </form>
            ) : (
              <Link href={`/${locale}/auth/sign-in`} className="text-zinc-900 hover:text-brand-red transition-colors">
                Sign in
              </Link>
            )}
            
            <Link 
              href={`/${locale}/cart`} 
              className="rounded-full bg-brand-black px-5 py-2 text-white hover:bg-brand-red transition-all"
            >
              Cart
            </Link>
          </nav>
        </div>
      </div>
    </header>
  );
}
