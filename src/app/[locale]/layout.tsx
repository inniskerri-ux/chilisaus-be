import { NextIntlClientProvider } from 'next-intl';
import { setRequestLocale, getMessages } from 'next-intl/server';
import '../globals.css';
import type { ReactNode } from 'react';
import Header from '@/components/Header';
import { MessageCircle } from 'lucide-react';

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
      <body className="min-h-screen bg-white text-gray-900 antialiased font-sans">
        <NextIntlClientProvider messages={messages}>
          <Header locale={locale} />
          <main>{children}</main>
          
          {/* Floating WhatsApp Button */}
          <a
            href="https://wa.me/yournumber"
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
