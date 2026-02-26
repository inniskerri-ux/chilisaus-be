import { NextIntlClientProvider } from 'next-intl';
import { setRequestLocale, getMessages } from 'next-intl/server';
import { Montserrat } from "next/font/google";
import '../globals.css';
import type { ReactNode } from 'react';
import Header from '@/components/Header';
import Footer from '@/components/Footer';
import { MessageCircle } from 'lucide-react';
import NewsletterPopup from '@/components/store/NewsletterPopup';
import CookieConsent from '@/components/store/CookieConsent';

const fontSans = Montserrat({
  variable: "--font-montserrat",
  subsets: ["latin"],
  weight: ['100', '200', '300', '400', '500', '600', '700', '800', '900'],
});

const RTL_LOCALES = new Set(['ar', 'fa', 'he', 'ur']);

export const dynamic = 'force-dynamic';

export default async function LocaleLayout({
  children,
  params,
}: { children: ReactNode; params: Promise<{ locale: string }> }) {
  const { locale } = await params;
  setRequestLocale(locale);
  const messages = await getMessages();
  const dir = RTL_LOCALES.has(locale) ? 'rtl' : 'ltr';

  return (
    <html lang={locale} dir={dir} suppressHydrationWarning>
      <body className={`${fontSans.variable} min-h-screen bg-white text-gray-900 antialiased font-sans flex flex-col`}>
        <NextIntlClientProvider messages={messages}>
          <Header locale={locale} />
          <main className="flex-grow">{children}</main>
          <Footer locale={locale} />
          <NewsletterPopup locale={locale} />
          <CookieConsent />
          
          {/* Floating WhatsApp Button */}
          <a
            href={`https://wa.me/${process.env.NEXT_PUBLIC_WHATSAPP_NUMBER}`}
            target="_blank"
            rel="noopener noreferrer"
            className="fixed bottom-8 right-8 z-50 flex h-14 w-14 items-center justify-center rounded-full bg-[#25D366] text-white shadow-2xl transition-all hover:scale-110 active:scale-95"
            aria-label="Chat on WhatsApp"
          >
            <MessageCircle size={32} />
          </a>
        </NextIntlClientProvider>
      </body>
    </html>
  );
}
