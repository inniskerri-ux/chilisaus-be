import Link from 'next/link';
import { getTranslations } from 'next-intl/server';

export default async function Footer({ locale }: { locale: string }) {
  const t = await getTranslations({ locale, namespace: 'Nav' });
  const currentYear = new Date().getFullYear();

  return (
    <footer className="border-t border-zinc-100 bg-zinc-50 py-12">
      <div className="mx-auto max-w-7xl px-6 lg:px-8">
        <div className="grid grid-cols-1 gap-12 sm:grid-cols-2 lg:grid-cols-4">
          <div className="flex flex-col gap-4">
            <Link href={`/${locale}`} className="flex items-center gap-2 font-black text-xl tracking-tighter uppercase">
              <span className="text-brand-red">🌶️</span>
              <span>ChiliSaus</span>
            </Link>
            <p className="text-sm text-zinc-500 max-w-xs">
              Hand-picked hot sauces from around the world. Based in Belgium, shipping across Europe.
            </p>
          </div>

          <div>
            <h3 className="text-sm font-bold uppercase tracking-widest text-zinc-900">Shop</h3>
            <ul className="mt-4 space-y-2 text-sm text-zinc-600">
              <li><Link href={`/${locale}/shop`} className="hover:text-brand-red transition-colors">All Sauces</Link></li>
              <li><Link href={`/${locale}/shop?category=classic-hot-sauce`} className="hover:text-brand-red transition-colors">Classic Sauces</Link></li>
              <li><Link href={`/${locale}/shop?heat=extreme`} className="hover:text-brand-red transition-colors">Extreme Heat</Link></li>
            </ul>
          </div>

          <div>
            <h3 className="text-sm font-bold uppercase tracking-widest text-zinc-900">Information</h3>
            <ul className="mt-4 space-y-2 text-sm text-zinc-600">
              <li><Link href={`/${locale}/shipping-returns`} className="hover:text-brand-red transition-colors">Shipping & Returns</Link></li>
              <li><Link href={`/${locale}/terms`} className="hover:text-brand-red transition-colors">Terms of Service</Link></li>
              <li><Link href={`/${locale}/privacy`} className="hover:text-brand-red transition-colors">Privacy Policy</Link></li>
              <li><Link href={`/${locale}/legal`} className="hover:text-brand-red transition-colors">Legal Notice</Link></li>
            </ul>
          </div>

          <div>
            <h3 className="text-sm font-bold uppercase tracking-widest text-zinc-900">Support</h3>
            <ul className="mt-4 space-y-2 text-sm text-zinc-600">
              <li><a href="mailto:sales@chilisaus.be" className="hover:text-brand-red transition-colors">sales@chilisaus.be</a></li>
              <li><a href={`https://wa.me/${process.env.NEXT_PUBLIC_WHATSAPP_NUMBER}`} className="hover:text-brand-red transition-colors">WhatsApp Support</a></li>
              <li><a href="https://www.instagram.com/chilisaus.be" target="_blank" rel="noopener noreferrer" className="hover:text-brand-red transition-colors">Instagram</a></li>
              <li><Link href={`/${locale}/auth/sign-in`} className="hover:text-brand-red transition-colors">My Account</Link></li>
            </ul>
          </div>
        </div>

        <div className="mt-12 border-t border-zinc-200 pt-8 flex flex-col sm:flex-row justify-between items-center gap-4">
          <p className="text-xs text-zinc-400">
            © {currentYear} ChiliSaus. All rights reserved. Registered in Belgium.
          </p>
          <div className="flex gap-4 grayscale opacity-50">
            {/* Payment icons placeholder */}
            <span className="text-xs font-bold uppercase tracking-tighter">Stripe</span>
            <span className="text-xs font-bold uppercase tracking-tighter">Bancontact</span>
            <span className="text-xs font-bold uppercase tracking-tighter">Ideal</span>
          </div>
        </div>
      </div>
    </footer>
  );
}
