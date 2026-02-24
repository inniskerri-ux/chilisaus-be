import { getTranslations } from 'next-intl/server';

export default async function LegalNoticePage({ params }: { params: Promise<{ locale: string }> }) {
  const { locale } = await params;
  const t = await getTranslations({ locale, namespace: 'Legal' });

  return (
    <div className="mx-auto max-w-3xl px-6 py-20">
      <h1 className="text-4xl font-black uppercase tracking-tight text-zinc-900 mb-12">Legal Notice</h1>
      
      <div className="prose prose-zinc max-w-none space-y-8">
        <section>
          <h2 className="text-xl font-bold uppercase tracking-widest text-brand-red mb-4">Company Information</h2>
          <div className="text-zinc-600 space-y-1">
            <p className="font-bold text-zinc-900">ChiliSaus.be</p>
            <p>Represented by: [Owner Name]</p>
            <p>[Business Address Street]</p>
            <p>[Postal Code] [City]</p>
            <p>Belgium</p>
          </div>
        </section>

        <section>
          <h2 className="text-xl font-bold uppercase tracking-widest text-brand-red mb-4">Contact</h2>
          <div className="text-zinc-600 space-y-1">
            <p>Email: [Legal Email Address]</p>
            <p>WhatsApp: {process.env.NEXT_PUBLIC_WHATSAPP_NUMBER}</p>
          </div>
        </section>

        <section>
          <h2 className="text-xl font-bold uppercase tracking-widest text-brand-red mb-4">Business Registration</h2>
          <div className="text-zinc-600 space-y-1">
            <p>Company Registration Number (CBE/KBO): [Registration Number]</p>
            <p>VAT Identification Number: [VAT Number]</p>
          </div>
        </section>

        <section>
          <h2 className="text-xl font-bold uppercase tracking-widest text-brand-red mb-4">Online Dispute Resolution</h2>
          <p className="text-zinc-600">
            The European Commission provides a platform for online dispute resolution (ODR), 
            which you can find at <a href="https://ec.europa.eu/consumers/odr" target="_blank" className="text-brand-red underline">https://ec.europa.eu/consumers/odr</a>. 
            We are neither obligated nor willing to participate in a dispute settlement procedure before a consumer arbitration board.
          </p>
        </section>
      </div>
    </div>
  );
}
