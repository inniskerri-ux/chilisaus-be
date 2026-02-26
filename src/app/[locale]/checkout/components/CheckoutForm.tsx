'use client';

import { useState, useMemo } from 'react';
import { useTranslations } from 'next-intl';
import { Input } from '@/components/ui/input';
import { Label } from '@/components/ui/label';
import { Button } from '@/components/ui/button';
import { formatPrice } from '@/lib/format';
import { calculateShippingCost, SHIPPING_RATE_LABEL } from '@/lib/checkout/pricing';
import { createCheckoutSession } from '../actions';
import { Loader2, CreditCard, ShieldCheck } from 'lucide-react';
import Image from 'next/image';

interface CheckoutFormProps {
  cartItems: any[];
  weightKg: number;
  locale: string;
  initialEmail?: string;
}

export default function CheckoutForm({ cartItems, weightKg, locale, initialEmail }: CheckoutFormProps) {
  const t = useTranslations('Checkout');
  const [isPending, setIsPending] = useState(false);
  const [selectedCountry, setSelectedCountry] = useState('BEL');

  const subtotal = useMemo(() => 
    cartItems.reduce((acc, item) => acc + (item.product.price_cents * item.quantity), 0),
    [cartItems]
  );

  const shippingCost = useMemo(() => 
    calculateShippingCost(selectedCountry, weightKg, subtotal),
    [selectedCountry, weightKg, subtotal]
  );

  const total = subtotal + shippingCost;

  return (
    <div className="grid grid-cols-1 lg:grid-cols-2 gap-12">
      {/* Form Side */}
      <form action={async (formData) => {
        setIsPending(true);
        try {
          // Add locale and country to formData
          formData.set('locale', locale);
          formData.set('country', selectedCountry);
          await createCheckoutSession(formData);
        } catch (error) {
          console.error('Checkout failed:', error);
          setIsPending(false);
        }
      }} className="space-y-8">
        
        <div className="space-y-4">
          <h2 className="text-xl font-bold flex items-center gap-2">
            <span className="bg-black text-white w-6 h-6 rounded-full flex items-center justify-center text-xs">1</span>
            {t('shipping')}
          </h2>
          
          <div className="grid grid-cols-1 gap-4">
            <div className="space-y-2">
              <Label htmlFor="email">{t('email')}</Label>
              <Input id="email" name="email" type="email" required defaultValue={initialEmail} />
            </div>
            
            <div className="space-y-2">
              <Label htmlFor="name">{t('fullName')}</Label>
              <Input id="name" name="name" required placeholder="John Doe" />
            </div>

            <div className="space-y-2">
              <Label htmlFor="street">{t('street')}</Label>
              <Input id="street" name="street" required />
            </div>

            <div className="grid grid-cols-2 gap-4">
              <div className="space-y-2">
                <Label htmlFor="zip">{t('zip')}</Label>
                <Input id="zip" name="zip" required />
              </div>
              <div className="space-y-2">
                <Label htmlFor="city">{t('city')}</Label>
                <Input id="city" name="city" required />
              </div>
            </div>

            <div className="space-y-2">
              <Label htmlFor="country">{t('country')}</Label>
              <select
                id="country"
                name="country"
                className="flex h-10 w-full rounded-md border border-input bg-background px-3 py-2 text-sm ring-offset-background file:border-0 file:bg-transparent file:text-sm file:font-medium placeholder:text-muted-foreground focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:cursor-not-allowed disabled:opacity-50"
                value={selectedCountry}
                onChange={(e) => setSelectedCountry(e.target.value)}
                required
              >
                <option value="BEL">Belgium</option>
                <option value="NLD">Netherlands</option>
                <option value="DEU">Germany</option>
                <option value="FRA">France</option>
                <option value="LUX">Luxembourg</option>
                <option value="AUT">Austria</option>
                <option value="DNK">Denmark</option>
                <option value="ITA">Italy</option>
                <option value="ESP">Spain</option>
                <option value="POL">Poland</option>
                <option value="CZE">Czech Republic</option>
              </select>
            </div>
          </div>
        </div>

        <div className="pt-6 border-t">
          <h2 className="text-xl font-bold flex items-center gap-2 mb-6">
            <span className="bg-black text-white w-6 h-6 rounded-full flex items-center justify-center text-xs">2</span>
            {t('payment')}
          </h2>
          
          <div className="bg-zinc-50 p-4 rounded-lg border flex items-center justify-between mb-6">
            <div className="flex items-center gap-3">
              <CreditCard className="text-zinc-400" />
              <span className="text-sm font-medium">Stripe Secure Payment</span>
            </div>
            <div className="flex gap-1">
              <div className="bg-white px-1 border rounded h-5 flex items-center">
                <span className="text-[8px] font-bold">VISA</span>
              </div>
              <div className="bg-white px-1 border rounded h-5 flex items-center">
                <span className="text-[8px] font-bold">iDEAL</span>
              </div>
              <div className="bg-white px-1 border rounded h-5 flex items-center">
                <span className="text-[8px] font-bold">Bancontact</span>
              </div>
            </div>
          </div>

          <Button 
            type="submit" 
            disabled={isPending} 
            className="w-full h-14 text-lg font-bold bg-black hover:bg-zinc-800"
          >
            {isPending ? (
              <Loader2 className="mr-2 h-5 w-5 animate-spin" />
            ) : (
              <ShieldCheck className="mr-2 h-5 w-5" />
            )}
            {t('payNow')}
          </Button>
        </div>
      </form>

      {/* Summary Side */}
      <div className="bg-zinc-50 p-8 rounded-2xl border h-fit sticky top-24">
        <h2 className="text-xl font-bold mb-6">{t('summary')}</h2>
        
        <div className="space-y-4 mb-8">
          {cartItems.map((item) => (
            <div key={item.id} className="flex justify-between items-center text-sm">
              <div className="flex items-center gap-3">
                <div className="relative w-12 h-12 bg-white rounded border flex-shrink-0">
                  {item.product.image_url ? (
                    <Image src={item.product.image_url} alt={item.product.name} fill className="object-contain p-1" />
                  ) : (
                    <div className="flex h-full items-center justify-center">🌶️</div>
                  )}
                  <span className="absolute -top-2 -right-2 bg-zinc-800 text-white text-[10px] w-5 h-5 rounded-full flex items-center justify-center font-bold">
                    {item.quantity}
                  </span>
                </div>
                <span className="font-medium">{item.product.name}</span>
              </div>
              <span className="font-semibold">{formatPrice(item.product.price_cents * item.quantity)}</span>
            </div>
          ))}
        </div>

        <div className="space-y-3 pt-6 border-t text-sm">
          <div className="flex justify-between">
            <span className="text-zinc-500">{t('summary')} (Subtotal)</span>
            <span className="font-medium">{formatPrice(subtotal)}</span>
          </div>
          <div className="flex justify-between">
            <span className="text-zinc-500">{SHIPPING_RATE_LABEL}</span>
            <span className="font-medium">
              {shippingCost === 0 ? <span className="text-green-600">{t('freeShipping')}</span> : formatPrice(shippingCost)}
            </span>
          </div>
          <div className="flex justify-between text-lg font-bold pt-4 border-t mt-4">
            <span>Total</span>
            <span className="text-red-600">{formatPrice(total)}</span>
          </div>
        </div>
      </div>
    </div>
  );
}
