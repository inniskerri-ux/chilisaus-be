export default async function TermsPage() {
  return (
    <div className="mx-auto max-w-3xl px-6 py-20">
      <h1 className="text-4xl font-black uppercase tracking-tight text-zinc-900 mb-4">
        Terms of Service
      </h1>
      <p className="text-sm text-zinc-400 mb-12">Last updated: May 2026</p>

      <div className="prose prose-zinc max-w-none space-y-10">

        <section>
          <h2 className="text-xl font-bold uppercase tracking-widest text-brand-red mb-4">
            1. Company Information
          </h2>
          <div className="text-zinc-600 space-y-1">
            <p>These Terms of Service govern the relationship between:</p>
            <div className="mt-3 pl-4 border-l-2 border-zinc-200 space-y-1">
              <p className="font-bold text-zinc-900">Chilisaus.be</p>
              <p>Represented by: Kerri Innes</p>
              <p>Dorpsstraat 22, 5051 CK Goirle, Netherlands</p>
              <p>Registration Number: NL003596133B90</p>
              <p>VAT: Not applicable</p>
              <p>Email: <a href="mailto:sales@chilisaus.be" className="text-brand-red">sales@chilisaus.be</a></p>
            </div>
            <p className="mt-3">
              — and any customer placing an order through <strong>chilisaus.be</strong> or <strong>chilisaus.eu</strong> (collectively, "the Website").
            </p>
          </div>
        </section>

        <section>
          <h2 className="text-xl font-bold uppercase tracking-widest text-brand-red mb-4">
            2. Scope and Acceptance
          </h2>
          <div className="text-zinc-600 space-y-3">
            <p>
              By placing an order on this Website, you confirm that you have read, understood, and agree to be bound by these Terms of Service, as well as our <a href="/en/privacy" className="text-brand-red underline">Privacy Policy</a> and <a href="/en/shipping-returns" className="text-brand-red underline">Shipping &amp; Returns Policy</a>.
            </p>
            <p>
              These Terms apply to all sales concluded at a distance between ChiliSaus.be and consumers, in accordance with Book VI of the Belgian Code of Economic Law (<em>Wetboek van Economisch Recht</em>) and EU Directive 2011/83/EU on consumer rights.
            </p>
            <p>
              If you are purchasing on behalf of a business, these Terms apply to the extent permitted by law, and certain consumer protections (such as the right of withdrawal) may not apply.
            </p>
          </div>
        </section>

        <section>
          <h2 className="text-xl font-bold uppercase tracking-widest text-brand-red mb-4">
            3. Products and Prices
          </h2>
          <div className="text-zinc-600 space-y-3">
            <p>
              All prices shown on the Website are in euros (€) and include Belgian VAT (BTW/TVA) at the applicable rate. Shipping costs are not included in the product price and are calculated separately at checkout based on the weight of your order and your delivery country.
            </p>
            <p>
              We make every effort to ensure product descriptions and images are accurate. However, minor variations in colour, packaging, or labelling may occur. In the event of a material discrepancy, you have the right to cancel your order before dispatch.
            </p>
            <p>
              We reserve the right to correct pricing errors. If an order is placed at an incorrect price, we will contact you before processing. You will have the option to confirm the order at the correct price or cancel it for a full refund.
            </p>
            <p>
              Products labelled "Out of Stock" cannot be ordered. We do not accept pre-orders.
            </p>
          </div>
        </section>

        <section>
          <h2 className="text-xl font-bold uppercase tracking-widest text-brand-red mb-4">
            4. Ordering Process
          </h2>
          <div className="text-zinc-600 space-y-3">
            <p>An order is placed when you complete the following steps:</p>
            <ol className="list-decimal pl-5 space-y-2">
              <li>Add products to your cart and proceed to checkout.</li>
              <li>Provide your delivery and contact information.</li>
              <li>Review your order summary, including total price and shipping costs.</li>
              <li>Complete payment via our secure Stripe payment interface.</li>
            </ol>
            <p>
              Upon successful payment, you will receive an order confirmation by email. This confirmation constitutes acceptance of your order and forms a binding contract between you and ChiliSaus.be.
            </p>
            <p>
              We reserve the right to refuse or cancel orders at our discretion — for example, in cases of suspected fraud, unusually large quantities, or if a product becomes unavailable after your order was placed. In such cases, a full refund will be issued promptly.
            </p>
          </div>
        </section>

        <section>
          <h2 className="text-xl font-bold uppercase tracking-widest text-brand-red mb-4">
            5. Payment
          </h2>
          <div className="text-zinc-600 space-y-3">
            <p>
              All payments are processed securely through <strong>Stripe</strong>. We accept Visa, Mastercard, American Express, Bancontact, iDEAL, PayPal, Apple Pay, Google Pay, and other methods displayed at checkout. Your card details are never stored on our servers.
            </p>
            <p>
              Payment is taken at the time of order. Your order will not be dispatched until payment has been successfully confirmed.
            </p>
          </div>
        </section>

        <section>
          <h2 className="text-xl font-bold uppercase tracking-widest text-brand-red mb-4">
            6. Delivery
          </h2>
          <div className="text-zinc-600 space-y-3">
            <p>
              Please refer to our <a href="/en/shipping-returns" className="text-brand-red underline">Shipping &amp; Returns</a> page for full details on delivery times and costs. Estimated delivery times are provided as a guide only and do not constitute a guarantee. We are not responsible for delays caused by carriers or customs authorities.
            </p>
            <p>
              Risk of loss and title for products passes to you upon delivery to the carrier. If a delivery attempt fails and your parcel is returned to us, we will contact you to arrange re-delivery at your cost.
            </p>
          </div>
        </section>

        <section>
          <h2 className="text-xl font-bold uppercase tracking-widest text-brand-red mb-4">
            7. Right of Withdrawal
          </h2>
          <div className="text-zinc-600 space-y-3">
            <p>
              As a consumer based in the European Union, you have the right to withdraw from your order within <strong>14 calendar days</strong> from the date you receive your goods, without giving any reason, in accordance with Article VI.47 of the Belgian Code of Economic Law and EU Directive 2011/83/EU.
            </p>
            <p>
              To exercise your right of withdrawal, you must notify us clearly before the 14-day period expires. You can do so by:
            </p>
            <ul className="list-disc pl-5 space-y-1">
              <li>Email: <a href="mailto:sales@chilisaus.be" className="text-brand-red">sales@chilisaus.be</a></li>
              <li>WhatsApp (see contact details in footer)</li>
            </ul>
            <p>
              You must return the goods within 14 days of notifying us of your withdrawal. Return shipping costs are at your expense unless the item is defective or incorrect.
            </p>
            <p className="font-semibold text-zinc-800">
              Important exception — food products:
            </p>
            <p>
              In accordance with Article VI.53, 4° of the Belgian Code of Economic Law, the right of withdrawal does not apply to products that have been <strong>opened, unsealed, or partially consumed</strong>, as these cannot be returned for health and hygiene reasons. All returned bottles must have their original security seal intact and be in resalable condition.
            </p>
            <p>
              Once we have received and inspected your return, we will issue a full refund within <strong>14 days</strong>, using the same payment method you used for the original purchase.
            </p>
          </div>
        </section>

        <section>
          <h2 className="text-xl font-bold uppercase tracking-widest text-brand-red mb-4">
            8. Legal Conformity Warranty
          </h2>
          <div className="text-zinc-600 space-y-3">
            <p>
              All products sold are covered by the statutory two-year legal conformity warranty under Articles 1649bis–1649octies of the Belgian Civil Code (implementing EU Directive 1999/44/EC). If a product is defective or does not conform to its description at the time of delivery, you are entitled to repair, replacement, or refund.
            </p>
            <p>
              If you receive a damaged or incorrect product, please contact us immediately with photographic evidence. We will arrange a replacement or full refund at no cost to you.
            </p>
            <p>
              This warranty does not cover damage caused by misuse, accident, or normal wear. It does not affect any additional voluntary guarantees offered by the manufacturer.
            </p>
          </div>
        </section>

        <section>
          <h2 className="text-xl font-bold uppercase tracking-widest text-brand-red mb-4">
            9. Liability
          </h2>
          <div className="text-zinc-600 space-y-3">
            <p>
              ChiliSaus.be is not liable for indirect or consequential damages arising from the use of our products, except where such exclusion is prohibited by applicable Belgian consumer law.
            </p>
            <p>
              Our products contain chilli peppers and other spicy ingredients. We strongly recommend reading all product descriptions and ingredient lists before purchase, particularly if you have food allergies, medical conditions, or are purchasing for children. Products labelled "superhot" or "extreme" are intended for adults and experienced chilli enthusiasts.
            </p>
            <p>
              We are not responsible for the consequences of misuse of our products. Consuming extremely hot products is done at your own risk.
            </p>
          </div>
        </section>

        <section>
          <h2 className="text-xl font-bold uppercase tracking-widest text-brand-red mb-4">
            10. Intellectual Property
          </h2>
          <p className="text-zinc-600">
            All content on this Website — including text, images, logos, product names, and design — is the property of ChiliSaus.be or its suppliers and is protected by Belgian and EU intellectual property law. You may not reproduce, distribute, or use any content without our prior written consent.
          </p>
        </section>

        <section>
          <h2 className="text-xl font-bold uppercase tracking-widest text-brand-red mb-4">
            11. Governing Law and Jurisdiction
          </h2>
          <div className="text-zinc-600 space-y-3">
            <p>
              These Terms are governed by Belgian law. Any dispute arising out of or in connection with these Terms shall be subject to the exclusive jurisdiction of the courts of Belgium, without prejudice to your rights as a consumer under the law of your country of residence.
            </p>
            <p>
              If you are a consumer resident in another EU member state, you may also have the right to bring proceedings in the courts of your own country.
            </p>
          </div>
        </section>

        <section>
          <h2 className="text-xl font-bold uppercase tracking-widest text-brand-red mb-4">
            12. Dispute Resolution
          </h2>
          <div className="text-zinc-600 space-y-3">
            <p>
              If you have a complaint, please contact us first at <a href="mailto:sales@chilisaus.be" className="text-brand-red">sales@chilisaus.be</a>. We aim to respond within 2 business days and resolve all disputes amicably.
            </p>
            <p>
              If we cannot resolve your complaint directly, you may refer the matter to the <strong>Belgian Consumer Mediation Service</strong> (<em>Service de Médiation pour le Consommateur / Consumentenombudsdienst</em>):
            </p>
            <div className="pl-4 border-l-2 border-zinc-200 space-y-1 text-sm">
              <p>North Gate II, Koning Albert II-laan 8, 1000 Brussels</p>
              <p><a href="https://www.consumentenombudsdienst.be" target="_blank" rel="noopener noreferrer" className="text-brand-red underline">www.consumentenombudsdienst.be</a></p>
            </div>
            <p>
              The European Commission also provides an online dispute resolution (ODR) platform for consumers:
            </p>
            <div className="pl-4 border-l-2 border-zinc-200 text-sm">
              <a href="https://ec.europa.eu/consumers/odr" target="_blank" rel="noopener noreferrer" className="text-brand-red underline">https://ec.europa.eu/consumers/odr</a>
            </div>
          </div>
        </section>

        <section>
          <h2 className="text-xl font-bold uppercase tracking-widest text-brand-red mb-4">
            13. Amendments
          </h2>
          <p className="text-zinc-600">
            We reserve the right to update these Terms at any time. Changes will be posted on this page with an updated date. For orders already placed, the Terms in effect at the time of purchase apply.
          </p>
        </section>

      </div>
    </div>
  );
}
