import Link from 'next/link';

export default function HomePage({ params: { locale } }: { params: { locale: string }}) {
  return (
    <main className="mx-auto max-w-3xl p-6">
      <h1 className="text-3xl font-bold mb-6">Next Commerce Template</h1>
      <nav className="flex gap-4">
        <Link href={`/${locale}/shop`} className="underline">Shop</Link>
        <Link href={`/${locale}/cart`} className="underline">Cart</Link>
        <Link href={`/${locale}/checkout`} className="underline">Checkout</Link>
        <Link href={`/${locale}/auth/sign-in`} className="underline">Sign in</Link>
      </nav>
    </main>
  );
}
