import CampaignForm from './CampaignForm';

export default async function NewCampaignPage({ params }: { params: Promise<{ locale: string }> }) {
  const { locale } = await params;
  
  return (
    <div className="py-6">
      <CampaignForm locale={locale} />
    </div>
  );
}
