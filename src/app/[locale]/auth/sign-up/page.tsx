'use client';

import { useState } from 'react';
import { supabase } from '@/lib/supabase/client';
import { useRouter, useParams } from 'next/navigation';

export default function SignUpPage() {
  const { locale } = useParams() as { locale: string };
  const router = useRouter();
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');
  const [confirm, setConfirm] = useState('');
  const [err, setErr] = useState<string | null>(null);

  async function onSubmit(e: React.FormEvent) {
    e.preventDefault();
    setErr(null);
    if (password !== confirm) {
      setErr('Passwords do not match');
      return;
    }
    const { error } = await supabase.auth.signUp({ email, password });
    if (error) setErr(error.message);
    else router.push(`/${locale}`);
  }

  return (
    <main className="mx-auto max-w-sm p-6">
      <h1 className="text-2xl font-bold mb-4">Sign up</h1>
      <form onSubmit={onSubmit} className="space-y-3">
        <input className="w-full border p-2 rounded" placeholder="Email" type="email" value={email} onChange={e=>setEmail(e.target.value)} required/>
        <input className="w-full border p-2 rounded" placeholder="Password" type="password" value={password} onChange={e=>setPassword(e.target.value)} required/>
        <input className="w-full border p-2 rounded" placeholder="Confirm password" type="password" value={confirm} onChange={e=>setConfirm(e.target.value)} required/>
        {err && <p className="text-red-600 text-sm">{err}</p>}
        <button className="w-full rounded bg-black text-white p-2">Create account</button>
      </form>
    </main>
  );
}
