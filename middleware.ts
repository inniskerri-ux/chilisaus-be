import createMiddleware from 'next-intl/middleware';

export default createMiddleware({
  locales: ['nl', 'en', 'fr', 'cs', 'es', 'de', 'pl'],
  defaultLocale: 'en',
});

export const config = {
  matcher: ['/((?!_next|api|auth/callback|.*\\..*).*)']
};
