import { getTranslations } from 'next-intl/server';
import { requireShopOwner } from '../lib/auth';
import { createBrand } from '../actions/createBrand';
import BrandForm from '../components/BrandForm';

export default async function BrandsPage({ params }: { params: Promise<{ locale: string }> }) {
  const { locale } = await params;
  const { supabase } = await requireShopOwner(locale);
  const t = await getTranslations({ locale, namespace: 'Admin' });

  const { data: brands } = await supabase
    .from('brands')
    .select('*')
    .order('name');

  const createAction = createBrand.bind(null, { locale });

  return (
    <div className="space-y-8">
      <div>
        <h2 className="text-xl font-semibold text-foreground">Brand Management</h2>
        <p className="text-sm text-text-muted">Add and manage your suppliers/brands.</p>
      </div>

      <div className="grid gap-8 md:grid-cols-[1fr,2fr]">
        <div>
          <BrandForm onSubmit={createAction} />
        </div>

        <div className="overflow-hidden rounded-2xl border border-border bg-white shadow-sm">
          <table className="min-w-full divide-y divide-border">
            <thead className="bg-roh-dust-white text-left text-sm font-semibold text-text-secondary">
              <tr>
                <th className="px-4 py-3">Brand Name</th>
                <th className="px-4 py-3">Country</th>
                <th className="px-4 py-3">Website</th>
                <th className="px-4 py-3 text-right">Actions</th>
              </tr>
            </thead>
            <tbody className="divide-y divide-border text-sm">
              {brands?.map((brand) => (
                <tr key={brand.id}>
                  <td className="px-4 py-3 font-medium text-foreground">{brand.name}</td>
                  <td className="px-4 py-3 text-text-muted">{brand.country || '—'}</td>
                  <td className="px-4 py-3 text-text-muted">
                    {brand.website ? (
                      <a href={brand.website} target="_blank" rel="noopener noreferrer" className="hover:text-brand-red transition-colors">
                        Link
                      </a>
                    ) : '—'}
                  </td>
                  <td className="px-4 py-3 text-right">
                    <span className="text-xs text-text-muted">Edit coming soon</span>
                  </td>
                </tr>
              ))}
              {(!brands || brands.length === 0) && (
                <tr>
                  <td colSpan={4} className="px-4 py-6 text-center text-text-muted">
                    No brands found.
                  </td>
                </tr>
              )}
            </tbody>
          </table>
        </div>
      </div>
    </div>
  );
}
