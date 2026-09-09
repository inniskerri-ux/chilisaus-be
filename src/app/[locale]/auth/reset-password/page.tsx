"use client";

import { useState } from "react";
import { useParams } from "next/navigation";
import { requestPasswordReset } from "../../actions/auth";
import { useFormGuard } from "@/components/security/useFormGuard";
import TurnstileWidget from "@/components/security/TurnstileWidget";

export default function ResetPasswordPage() {
  const { locale } = useParams() as { locale: string };
  const [email, setEmail] = useState("");
  const [info, setInfo] = useState<string | null>(null);
  const [err, setErr] = useState<string | null>(null);
  const [loading, setLoading] = useState(false);
  const [turnstileToken, setTurnstileToken] = useState<string | null>(null);
  const { honeypotValue, renderedAt, honeypotFieldProps } = useFormGuard();

  async function onSubmit(e: React.FormEvent) {
    e.preventDefault();
    setErr(null);
    setInfo(null);
    setLoading(true);

    const result = await requestPasswordReset({
      email,
      locale,
      honeypot: honeypotValue,
      renderedAt,
      turnstileToken: turnstileToken || "",
    });

    if (result.error) setErr(result.error);
    else if (result.info) setInfo(result.info);
    setLoading(false);
  }

  return (
    <main className="mx-auto max-w-sm p-6">
      <h1 className="text-2xl font-bold mb-4">Reset password</h1>
      <form onSubmit={onSubmit} className="space-y-3">
        <input {...honeypotFieldProps} />
        <input
          className="w-full border p-2 rounded"
          placeholder="Email"
          type="email"
          value={email}
          onChange={(e) => setEmail(e.target.value)}
          required
        />
        <TurnstileWidget onVerify={setTurnstileToken} />
        {err && <p className="text-red-600 text-sm">{err}</p>}
        {info && <p className="text-green-700 text-sm">{info}</p>}
        <button
          className="w-full rounded bg-black text-white p-2 disabled:opacity-60"
          disabled={loading || !turnstileToken}
        >
          Send reset link
        </button>
      </form>
    </main>
  );
}
