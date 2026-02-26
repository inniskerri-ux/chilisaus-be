'use client';

import { useState } from 'react';
import { useRouter } from 'next/navigation';
import { Button } from '@/components/ui/button';
import { Input } from '@/components/ui/input';
import { Label } from '@/components/ui/label';
import { Textarea } from '@/components/ui/textarea';
import { Card, CardContent, CardHeader, CardTitle } from '@/components/ui/card';
import { createNewsletter } from '../actions';
import { Loader2, Send, Mail, Info } from 'lucide-react';

export default function CampaignForm({ locale }: { locale: string }) {
  const router = useRouter();
  const [loading, setLoading] = useState(false);

  const handleSubmit = async (e: React.FormEvent<HTMLFormElement>) => {
    e.preventDefault();
    setLoading(true);

    const formData = new FormData(e.currentTarget);

    try {
      const result = await createNewsletter(formData);
      if (result.success) {
        router.push(`/${locale}/admin/marketing`);
        router.refresh();
      } else {
        alert(result.error || 'Failed to create campaign');
      }
    } finally {
      setLoading(false);
    }
  };

  return (
    <form onSubmit={handleSubmit} className="space-y-6 max-w-4xl mx-auto">
      <div className="flex items-center justify-between">
        <h1 className="text-2xl font-bold tracking-tight flex items-center gap-2">
          <Mail className="w-6 h-6" />
          Create New Newsletter
        </h1>
        <Button type="submit" disabled={loading} className="bg-black text-white hover:bg-zinc-800">
          {loading ? <Loader2 className="mr-2 h-4 w-4 animate-spin" /> : <Send className="mr-2 h-4 w-4" />}
          {loading ? 'Creating...' : 'Create Draft Campaign'}
        </Button>
      </div>

      <div className="grid gap-6">
        <Card>
          <CardHeader>
            <CardTitle className="text-lg">Campaign Settings</CardTitle>
          </CardHeader>
          <CardContent className="space-y-4">
            <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
              <div className="space-y-2">
                <Label htmlFor="title">Internal Title *</Label>
                <Input id="title" name="title" placeholder="e.g. Weekly Hot Sauce Drop #42" required />
                <p className="text-[10px] text-zinc-500">Only visible to you in Mailchimp.</p>
              </div>
              <div className="space-y-2">
                <Label htmlFor="subject">Subject Line *</Label>
                <Input id="subject" name="subject" placeholder="New Spicy Arrivals inside! 🌶️" required />
                <p className="text-[10px] text-zinc-500">This is what customers see in their inbox.</p>
              </div>
            </div>

            <div className="space-y-2">
              <Label htmlFor="previewText">Preview Text</Label>
              <Input id="previewText" name="previewText" placeholder="The text shown next to the subject line..." />
            </div>

            <div className="grid grid-cols-1 md:grid-cols-2 gap-4 pt-2">
              <div className="space-y-2">
                <Label htmlFor="fromName">From Name</Label>
                <Input id="fromName" name="fromName" defaultValue="Chilisaus.be" required />
              </div>
              <div className="space-y-2">
                <Label htmlFor="replyTo">Reply-to Email</Label>
                <Input id="replyTo" name="replyTo" type="email" defaultValue="sales@chilisaus.be" required />
              </div>
            </div>
          </CardContent>
        </Card>

        <Card>
          <CardHeader>
            <CardTitle className="text-lg">Newsletter Content (HTML)</CardTitle>
          </CardHeader>
          <CardContent className="space-y-4">
            <div className="bg-blue-50 p-4 rounded-lg flex items-start gap-3 border border-blue-100 mb-2">
              <Info className="text-blue-500 mt-0.5" size={18} />
              <div className="text-xs text-blue-700 leading-relaxed">
                Enter your newsletter HTML here. You can use standard Mailchimp tags like 
                <code className="mx-1 bg-white px-1 rounded border border-blue-200">*|FNAME|*</code> 
                to personalize the email.
              </div>
            </div>
            
            <div className="space-y-2">
              <Textarea 
                id="content" 
                name="content" 
                placeholder="<h1>Hello *|FNAME|*!</h1><p>Check out our latest sauces...</p>" 
                className="min-h-[400px] font-mono text-xs" 
                required 
              />
            </div>
          </CardContent>
        </Card>
      </div>
    </form>
  );
}
