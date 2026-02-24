import { NextIntlClientProvider, unstable_setRequestLocale, getMessages } from 'next-intl/server';
import '../globals.css';
import type { ReactNode } from 'react';

const RTL_LOCALES = new Set(['ar', 'fa', 'he', 'ur']);

export const dynamic = 'force-dynamic';

export default async function LocaleLayout({
  children,
  params: { locale }
}: { children: ReactNode; params: { locale: string } }) {
  unstable_setRequestLocale(locale);
  const messages = await getMessages();
  const dir = RTL_LOCALES.has(locale) ? 'rtl' : 'ltr';

  return (
    <html lang={locale} dir={dir} suppressHydrationWarning>
      <body className="min-h-screen bg-white text-gray-900 antialiased">
        <NextIntlClientProvider messages={messages}>
          {children}
        </NextIntlClientProvider>
      </body>
    </html>
  );
}
