export default async function PrivacyPolicyPage() {
  return (
    <div className="mx-auto max-w-3xl px-6 py-20">
      <h1 className="text-4xl font-black uppercase tracking-tight text-zinc-900 mb-4">
        Privacy Policy
      </h1>
      <p className="text-sm text-zinc-400 mb-12">Last updated: May 2026</p>

      <div className="prose prose-zinc max-w-none space-y-10">

        <section>
          <h2 className="text-xl font-bold uppercase tracking-widest text-brand-red mb-4">
            1. Data Controller
          </h2>
          <div className="text-zinc-600 space-y-3">
            <p>
              This Privacy Policy explains how <strong>ChiliSaus.be</strong> collects, uses, and protects your personal data when you visit or make a purchase from our Website, in accordance with the EU General Data Protection Regulation (GDPR) and Belgian data protection law.
            </p>
            <div className="pl-4 border-l-2 border-zinc-200 space-y-1">
              <p className="font-bold text-zinc-900">Chilisaus.be — Data Controller</p>
              <p>Kerri Innes</p>
              <p>Dorpsstraat 22, 5051 CK Goirle, Netherlands</p>
              <p>Email: <a href="mailto:sales@chilisaus.be" className="text-brand-red">sales@chilisaus.be</a></p>
            </div>
          </div>
        </section>

        <section>
          <h2 className="text-xl font-bold uppercase tracking-widest text-brand-red mb-4">
            2. Data We Collect
          </h2>
          <div className="text-zinc-600 space-y-4">
            <p>We collect the following categories of personal data:</p>

            <div>
              <p className="font-semibold text-zinc-800 mb-2">When you place an order:</p>
              <ul className="list-disc pl-5 space-y-1">
                <li>Full name and delivery address</li>
                <li>Email address</li>
                <li>Country of delivery</li>
                <li>Order history (products purchased, quantities, prices)</li>
                <li>Payment reference (we do not store card numbers — payments are handled by Stripe)</li>
              </ul>
            </div>

            <div>
              <p className="font-semibold text-zinc-800 mb-2">When you create an account:</p>
              <ul className="list-disc pl-5 space-y-1">
                <li>Email address and password (stored securely via Supabase Auth)</li>
                <li>Account preferences and order history</li>
              </ul>
            </div>

            <div>
              <p className="font-semibold text-zinc-800 mb-2">When you browse the Website:</p>
              <ul className="list-disc pl-5 space-y-1">
                <li>IP address and browser type (collected by our hosting infrastructure)</li>
                <li>Pages visited and session data</li>
                <li>Cookie data (see Section 7)</li>
              </ul>
            </div>

            <div>
              <p className="font-semibold text-zinc-800 mb-2">When you contact us:</p>
              <ul className="list-disc pl-5 space-y-1">
                <li>Email address and message content</li>
                <li>WhatsApp number and conversation history, if you contact us via WhatsApp</li>
              </ul>
            </div>
          </div>
        </section>

        <section>
          <h2 className="text-xl font-bold uppercase tracking-widest text-brand-red mb-4">
            3. How We Use Your Data
          </h2>
          <div className="text-zinc-600 space-y-3">
            <p>We process your personal data for the following purposes and on the following legal bases:</p>

            <div className="overflow-x-auto">
              <table className="w-full text-sm border-collapse">
                <thead>
                  <tr className="border-b border-zinc-200">
                    <th className="text-left py-2 pr-4 font-semibold text-zinc-800">Purpose</th>
                    <th className="text-left py-2 font-semibold text-zinc-800">Legal basis (GDPR Art. 6)</th>
                  </tr>
                </thead>
                <tbody className="divide-y divide-zinc-100">
                  <tr>
                    <td className="py-2 pr-4">Processing and fulfilling your order</td>
                    <td className="py-2">Performance of a contract (Art. 6(1)(b))</td>
                  </tr>
                  <tr>
                    <td className="py-2 pr-4">Sending order confirmations and shipping updates</td>
                    <td className="py-2">Performance of a contract (Art. 6(1)(b))</td>
                  </tr>
                  <tr>
                    <td className="py-2 pr-4">Managing your account</td>
                    <td className="py-2">Performance of a contract (Art. 6(1)(b))</td>
                  </tr>
                  <tr>
                    <td className="py-2 pr-4">Responding to enquiries and customer support</td>
                    <td className="py-2">Legitimate interest (Art. 6(1)(f))</td>
                  </tr>
                  <tr>
                    <td className="py-2 pr-4">Fraud prevention and security</td>
                    <td className="py-2">Legitimate interest (Art. 6(1)(f))</td>
                  </tr>
                  <tr>
                    <td className="py-2 pr-4">Compliance with legal obligations (tax, accounting)</td>
                    <td className="py-2">Legal obligation (Art. 6(1)(c))</td>
                  </tr>
                  <tr>
                    <td className="py-2 pr-4">Sending marketing emails (if you opt in)</td>
                    <td className="py-2">Consent (Art. 6(1)(a))</td>
                  </tr>
                </tbody>
              </table>
            </div>

            <p>
              We do not use your data for automated decision-making or profiling that produces legal effects.
            </p>
          </div>
        </section>

        <section>
          <h2 className="text-xl font-bold uppercase tracking-widest text-brand-red mb-4">
            4. Who We Share Your Data With
          </h2>
          <div className="text-zinc-600 space-y-3">
            <p>
              We only share your personal data with trusted third parties who help us operate our business. We do not sell your data to third parties.
            </p>
            <ul className="space-y-3">
              <li className="pl-4 border-l-2 border-zinc-200">
                <p className="font-semibold text-zinc-800">Stripe (Payment Processing)</p>
                <p className="text-sm">Stripe, Inc. processes payments on our behalf. Your payment information is handled directly by Stripe and is subject to <a href="https://stripe.com/privacy" target="_blank" rel="noopener noreferrer" className="text-brand-red underline">Stripe's Privacy Policy</a>. Stripe is PCI DSS Level 1 certified. Data may be processed in the US under EU Standard Contractual Clauses.</p>
              </li>
              <li className="pl-4 border-l-2 border-zinc-200">
                <p className="font-semibold text-zinc-800">Supabase (Database & Authentication)</p>
                <p className="text-sm">Supabase stores our customer and order data. Our Supabase project is hosted in the EU (eu-west-2, London region). Supabase is GDPR-compliant and processes data under a Data Processing Agreement.</p>
              </li>
              <li className="pl-4 border-l-2 border-zinc-200">
                <p className="font-semibold text-zinc-800">Vercel (Website Hosting)</p>
                <p className="text-sm">Our Website is hosted on Vercel's infrastructure. Vercel may process IP addresses and request logs. Vercel is GDPR-compliant and operates under EU Standard Contractual Clauses where applicable.</p>
              </li>
              <li className="pl-4 border-l-2 border-zinc-200">
                <p className="font-semibold text-zinc-800">Shipping Carriers</p>
                <p className="text-sm">We share your name and delivery address with our shipping carriers (e.g., bpost, DPD, PostNL) solely for the purpose of delivering your order.</p>
              </li>
            </ul>
            <p>
              We may also disclose your data if required by law, court order, or governmental authority.
            </p>
          </div>
        </section>

        <section>
          <h2 className="text-xl font-bold uppercase tracking-widest text-brand-red mb-4">
            5. Data Retention
          </h2>
          <div className="text-zinc-600 space-y-3">
            <p>We retain your personal data only for as long as necessary:</p>
            <ul className="list-disc pl-5 space-y-2">
              <li><strong>Order data</strong> (name, address, order history): retained for <strong>7 years</strong> from the date of purchase, as required by Belgian accounting and tax law.</li>
              <li><strong>Account data</strong>: retained for as long as your account is active. If you delete your account, your data will be removed within 30 days, except where retention is required by law.</li>
              <li><strong>Customer support communications</strong>: retained for <strong>2 years</strong> from the date of last contact.</li>
              <li><strong>Marketing consent records</strong>: retained until you withdraw your consent.</li>
              <li><strong>Cookie data</strong>: see Section 7.</li>
            </ul>
          </div>
        </section>

        <section>
          <h2 className="text-xl font-bold uppercase tracking-widest text-brand-red mb-4">
            6. Your Rights
          </h2>
          <div className="text-zinc-600 space-y-3">
            <p>Under the GDPR, you have the following rights regarding your personal data:</p>
            <ul className="space-y-2">
              <li><span className="font-semibold text-zinc-800">Right of access</span> — request a copy of the data we hold about you.</li>
              <li><span className="font-semibold text-zinc-800">Right to rectification</span> — ask us to correct inaccurate or incomplete data.</li>
              <li><span className="font-semibold text-zinc-800">Right to erasure</span> — request deletion of your data, subject to legal retention requirements.</li>
              <li><span className="font-semibold text-zinc-800">Right to restriction</span> — ask us to limit how we use your data in certain circumstances.</li>
              <li><span className="font-semibold text-zinc-800">Right to data portability</span> — receive your data in a structured, machine-readable format.</li>
              <li><span className="font-semibold text-zinc-800">Right to object</span> — object to processing based on legitimate interest, including direct marketing.</li>
              <li><span className="font-semibold text-zinc-800">Right to withdraw consent</span> — where processing is based on consent (e.g., marketing emails), you may withdraw at any time without affecting prior processing.</li>
            </ul>
            <p>
              To exercise any of these rights, contact us at <a href="mailto:sales@chilisaus.be" className="text-brand-red">sales@chilisaus.be</a>. We will respond within 30 days.
            </p>
            <p>
              If you are not satisfied with our response, you have the right to lodge a complaint with the <strong>Belgian Data Protection Authority</strong> (<em>Autorité de protection des données / Gegevensbeschermingsautoriteit</em>):
            </p>
            <div className="pl-4 border-l-2 border-zinc-200 space-y-1 text-sm">
              <p>Drukpersstraat 35 / Rue de la Presse 35, 1000 Brussels</p>
              <p><a href="https://www.dataprotectionauthority.be" target="_blank" rel="noopener noreferrer" className="text-brand-red underline">www.dataprotectionauthority.be</a></p>
              <p>contact@apd-gba.be</p>
            </div>
          </div>
        </section>

        <section>
          <h2 className="text-xl font-bold uppercase tracking-widest text-brand-red mb-4">
            7. Cookies
          </h2>
          <div className="text-zinc-600 space-y-4">
            <p>
              Our Website uses cookies — small text files stored on your device — to make the site function and to improve your experience. Below is a description of the cookies we use.
            </p>

            <div>
              <p className="font-semibold text-zinc-800 mb-2">Strictly Necessary Cookies</p>
              <p className="text-sm mb-2">These cookies are essential for the Website to function and cannot be disabled. No consent is required for these cookies.</p>
              <div className="overflow-x-auto">
                <table className="w-full text-sm border-collapse">
                  <thead>
                    <tr className="border-b border-zinc-200">
                      <th className="text-left py-2 pr-4 font-semibold text-zinc-800">Cookie</th>
                      <th className="text-left py-2 pr-4 font-semibold text-zinc-800">Purpose</th>
                      <th className="text-left py-2 font-semibold text-zinc-800">Expiry</th>
                    </tr>
                  </thead>
                  <tbody className="divide-y divide-zinc-100">
                    <tr>
                      <td className="py-2 pr-4 font-mono text-xs">cart_session_id</td>
                      <td className="py-2 pr-4">Maintains your shopping cart between page loads</td>
                      <td className="py-2">Session / 30 days</td>
                    </tr>
                    <tr>
                      <td className="py-2 pr-4 font-mono text-xs">sb-*-auth-token</td>
                      <td className="py-2 pr-4">Keeps you logged in to your account (Supabase Auth)</td>
                      <td className="py-2">Session / 1 week</td>
                    </tr>
                    <tr>
                      <td className="py-2 pr-4 font-mono text-xs">NEXT_LOCALE</td>
                      <td className="py-2 pr-4">Remembers your preferred language</td>
                      <td className="py-2">1 year</td>
                    </tr>
                  </tbody>
                </table>
              </div>
            </div>

            <div>
              <p className="font-semibold text-zinc-800 mb-2">Third-Party Cookies</p>
              <p className="text-sm mb-2">When you proceed to payment, Stripe may set cookies in your browser as part of its fraud prevention and payment flow. These are subject to <a href="https://stripe.com/cookie-settings" target="_blank" rel="noopener noreferrer" className="text-brand-red underline">Stripe's Cookie Policy</a>.</p>
            </div>

            <p>
              We do not currently use cookies for advertising, cross-site tracking, or third-party analytics beyond what is described above. If this changes, we will update this policy and ask for your consent where required.
            </p>
            <p>
              You can control and delete cookies through your browser settings. Disabling strictly necessary cookies may prevent the Website from functioning correctly.
            </p>
          </div>
        </section>

        <section>
          <h2 className="text-xl font-bold uppercase tracking-widest text-brand-red mb-4">
            8. Security
          </h2>
          <p className="text-zinc-600">
            We take the security of your personal data seriously. Our Website is served over HTTPS. Passwords are hashed and never stored in plain text. Payment data is handled exclusively by Stripe and never touches our servers. We restrict access to personal data to authorised personnel only. Despite these measures, no system is completely secure — if you believe your account has been compromised, please contact us immediately.
          </p>
        </section>

        <section>
          <h2 className="text-xl font-bold uppercase tracking-widest text-brand-red mb-4">
            9. Children's Privacy
          </h2>
          <p className="text-zinc-600">
            Our Website is not directed at children under the age of 16. We do not knowingly collect personal data from children. Some of our products (e.g., extreme heat sauces) are intended for adults only. If you believe a child has provided us with personal data, please contact us so we can delete it.
          </p>
        </section>

        <section>
          <h2 className="text-xl font-bold uppercase tracking-widest text-brand-red mb-4">
            10. Changes to This Policy
          </h2>
          <p className="text-zinc-600">
            We may update this Privacy Policy from time to time. The date at the top of this page shows when it was last revised. Material changes will be communicated to registered users by email. Continued use of the Website after changes are posted constitutes acceptance of the updated policy.
          </p>
        </section>

        <section>
          <h2 className="text-xl font-bold uppercase tracking-widest text-brand-red mb-4">
            11. Contact
          </h2>
          <div className="text-zinc-600 space-y-2">
            <p>For any questions about this Privacy Policy or to exercise your rights, contact us:</p>
            <div className="pl-4 border-l-2 border-zinc-200 space-y-1">
              <p>Email: <a href="mailto:sales@chilisaus.be" className="text-brand-red">sales@chilisaus.be</a></p>
              <p>Post: Kerri Innes, Dorpsstraat 22, 5051 CK Goirle, Netherlands</p>
            </div>
          </div>
        </section>

      </div>
    </div>
  );
}
