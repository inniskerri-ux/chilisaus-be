import { listCampaigns } from '@/lib/marketing/mailchimp';
import { Button } from '@/components/ui/button';
import Link from 'next/link';
import { Mail, Plus, Send, FileEdit, CheckCircle2, Clock } from 'lucide-react';
import { format } from 'date-fns';

export default async function MarketingPage({ params }: { params: Promise<{ locale: string }> }) {
  const { locale } = await params;
  const result = await listCampaigns(15);
  const campaigns = result.success ? result.campaigns : [];

  return (
    <div className="space-y-6">
      <div className="flex items-center justify-between">
        <div>
          <h1 className="text-2xl font-bold tracking-tight flex items-center gap-2">
            <Mail className="w-6 h-6 text-red-600" />
            Marketing Hub
          </h1>
          <p className="text-sm text-zinc-500">Manage your Mailchimp newsletters and campaigns.</p>
        </div>
        <Button asChild className="bg-black text-white hover:bg-zinc-800">
          <Link href={`/${locale}/admin/marketing/new`}>
            <Plus className="mr-2 h-4 w-4" />
            Create Newsletter
          </Link>
        </Button>
      </div>

      <div className="grid gap-6">
        <div className="bg-white rounded-xl border shadow-sm overflow-hidden">
          <div className="p-4 border-b bg-zinc-50/50">
            <h2 className="font-bold text-sm uppercase tracking-wider text-zinc-500">Recent Campaigns</h2>
          </div>
          <div className="divide-y">
            {campaigns.length === 0 ? (
              <div className="p-12 text-center text-zinc-500">
                <Mail className="mx-auto h-12 w-12 text-zinc-200 mb-4" />
                <p>No campaigns found. Ready to send your first newsletter?</p>
              </div>
            ) : (
              campaigns.map((campaign: any) => (
                <div key={campaign.id} className="p-6 hover:bg-zinc-50/50 transition-colors flex items-center justify-between">
                  <div className="flex items-start gap-4">
                    <div className={`p-2 rounded-lg ${campaign.status === 'sent' ? 'bg-green-50 text-green-600' : 'bg-zinc-100 text-zinc-500'}`}>
                      {campaign.status === 'sent' ? <CheckCircle2 size={20} /> : <FileEdit size={20} />}
                    </div>
                    <div>
                      <h3 className="font-bold text-zinc-900">{campaign.settings.subject_line || 'No Subject'}</h3>
                      <p className="text-xs text-zinc-500 mt-1">Internal Title: {campaign.settings.title}</p>
                      <div className="flex items-center gap-3 mt-3">
                        <span className={`text-[10px] font-bold uppercase px-2 py-0.5 rounded-full border ${
                          campaign.status === 'sent' 
                            ? 'bg-green-50 text-green-700 border-green-100' 
                            : 'bg-zinc-50 text-zinc-600 border-zinc-200'
                        }`}>
                          {campaign.status}
                        </span>
                        <span className="text-[10px] text-zinc-400 flex items-center gap-1">
                          <Clock size={10} />
                          {format(new Date(campaign.create_time), 'MMM d, yyyy HH:mm')}
                        </span>
                      </div>
                    </div>
                  </div>
                  
                  <div className="flex items-center gap-2">
                    <Button variant="outline" size="sm" asChild className="rounded-lg h-8 text-xs">
                      <a href={campaign.archive_url} target="_blank" rel="noopener noreferrer">View Archive</a>
                    </Button>
                    {campaign.status !== 'sent' && (
                      <Button variant="ghost" size="sm" className="rounded-lg h-8 text-xs text-red-600 hover:text-red-700 hover:bg-red-50">
                        Edit in Mailchimp
                      </Button>
                    )}
                  </div>
                </div>
              ))
            )}
          </div>
        </div>
      </div>
    </div>
  );
}
