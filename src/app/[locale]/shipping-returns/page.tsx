export default async function ShippingReturnsPage() {
  return (
    <div className="mx-auto max-w-3xl px-6 py-20">
      <h1 className="text-4xl font-black uppercase tracking-tight text-zinc-900 mb-12">Shipping & Returns</h1>
      
      <div className="prose prose-zinc max-w-none space-y-12">
        <section>
          <h2 className="text-2xl font-bold text-zinc-900 mb-4">Shipping Information</h2>
          <div className="space-y-4 text-zinc-600">
            <p>We ship our hot sauces from our warehouse in Belgium to customers across Europe.</p>
            <ul className="list-disc pl-5 space-y-2">
              <li><strong>Belgium:</strong> Next day delivery (via Bpost/PostNL)</li>
              <li><strong>Netherlands:</strong> 1-2 business days</li>
              <li><strong>Germany & France:</strong> 2-4 business days</li>
              <li><strong>Rest of EU:</strong> 3-7 business days</li>
            </ul>
            <p className="text-sm italic">Note: Shipping costs are calculated at checkout based on the total weight of your order.</p>
          </div>
        </section>

        <section className="bg-zinc-50 p-8 rounded-2xl border border-zinc-100">
          <h2 className="text-2xl font-bold text-zinc-900 mb-4 text-brand-red">Returns & Right of Withdrawal</h2>
          <div className="space-y-4 text-zinc-600">
            <p>
              In accordance with European and Belgian consumer law, you have the right to withdraw 
              from your purchase within <strong>14 days</strong> without giving any reason.
            </p>
            <p>
              <strong>Important Condition:</strong> Due to the nature of our products (food items), 
              sauces can only be returned if the <strong>security seal is unbroken</strong> and the 
              bottle is unopened. Once a sauce is opened, it cannot be returned for health and hygiene reasons.
            </p>
            <p>
              To exercise your right, please contact us via email or WhatsApp before the 14-day period expires.
            </p>
          </div>
        </section>

        <section>
          <h2 className="text-2xl font-bold text-zinc-900 mb-4">Damaged Items</h2>
          <p className="text-zinc-600">
            We pack our glass bottles very carefully, but accidents can happen. If your order 
            arrives damaged, please take a photo immediately and contact us. We will send a 
            replacement or issue a refund right away.
          </p>
        </section>
      </div>
    </div>
  );
}
