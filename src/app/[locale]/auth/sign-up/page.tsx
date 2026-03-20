"use client";

import { useState } from "react";
import { supabase } from "@/lib/supabase/client";
import { useTranslations } from "next-intl";
import { useRouter } from "next/navigation";
import Link from "next/link";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";
import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card";
import { Loader2, CheckCircle2, PackageSearch } from "lucide-react";

export default function SignUpPage({ params }: { params: { locale: string } }) {
  const t = useTranslations("Auth");
  const router = useRouter();
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [confirm, setConfirm] = useState("");
  const [loading, setLoading] = useState(false);
  const [err, setErr] = useState<string | null>(null);
  const [done, setDone] = useState(false);

  async function onSubmit(e: React.FormEvent) {
    e.preventDefault();
    setLoading(true);
    setErr(null);

    if (password !== confirm) {
      setErr("Passwords do not match"); // I should ideally add this to messages too
      setLoading(false);
      return;
    }

    try {
      const { error } = await supabase.auth.signUp({
        email,
        password,
        options: {
          emailRedirectTo: `${window.location.origin}/auth/callback?next=/${params.locale}/account`,
        },
      });

      if (error) {
        setErr(error.message);
      } else {
        setDone(true);
      }
    } catch (error) {
      setErr("An unexpected error occurred");
    } finally {
      setLoading(false);
    }
  }

  if (done) {
    return (
      <main className="mx-auto max-w-md px-4 py-20">
        <Card className="border-green-100 bg-green-50/30">
          <CardContent className="pt-10 pb-10 text-center">
            <div className="mb-6 flex justify-center">
              <CheckCircle2 className="h-16 w-16 text-green-500" />
            </div>
            <h1 className="text-2xl font-bold mb-4 text-zinc-900">
              Check your email
            </h1>
            <p className="text-zinc-600 mb-8">
              We&apos;ve sent a confirmation link to <strong>{email}</strong>. Please
              click it to activate your account.
            </p>
            <Button
              asChild
              className="w-full bg-brand-red hover:bg-brand-red/90 text-white font-bold h-12 rounded-xl"
            >
              <Link href={`/${params.locale}/auth/sign-in`}>
                Back to Sign In
              </Link>
            </Button>
          </CardContent>
        </Card>
      </main>
    );
  }

  return (
    <main className="mx-auto max-w-md px-4 py-20">
      {/* Legacy customer banner */}
      <div className="mb-6 flex gap-3 rounded-xl border border-orange-200 bg-orange-50 px-4 py-4">
        <PackageSearch className="mt-0.5 h-5 w-5 shrink-0 text-orange-500" />
        <p className="text-sm text-orange-800">
          <span className="font-bold">Ordered from us before?</span> Sign up with
          the same email address you used and your full order history will be
          waiting for you automatically.
        </p>
      </div>

      <Card className="shadow-xl border-zinc-100">
        <CardHeader className="space-y-1 pb-8">
          <CardTitle className="text-3xl font-black uppercase tracking-tight text-center">
            {t("SignUp")}
          </CardTitle>
          <p className="text-sm text-zinc-500 text-center">
            Create an account to track your spicy orders
          </p>
        </CardHeader>
        <CardContent>
          <form onSubmit={onSubmit} className="space-y-5">
            <div className="space-y-2">
              <Label htmlFor="email">{t("Email")}</Label>
              <Input
                id="email"
                placeholder="you@example.com"
                type="email"
                value={email}
                onChange={(e) => setEmail(e.target.value)}
                required
                className="h-12 rounded-xl border-zinc-200 focus:ring-brand-red focus:border-brand-red"
                disabled={loading}
              />
            </div>
            <div className="space-y-2">
              <Label htmlFor="password">{t("Password")}</Label>
              <Input
                id="password"
                placeholder="••••••••"
                type="password"
                value={password}
                onChange={(e) => setPassword(e.target.value)}
                required
                className="h-12 rounded-xl border-zinc-200 focus:ring-brand-red focus:border-brand-red"
                disabled={loading}
              />
            </div>
            <div className="space-y-2">
              <Label htmlFor="confirm">{t("ConfirmPassword")}</Label>
              <Input
                id="confirm"
                placeholder="••••••••"
                type="password"
                value={confirm}
                onChange={(e) => setConfirm(e.target.value)}
                required
                className="h-12 rounded-xl border-zinc-200 focus:ring-brand-red focus:border-brand-red"
                disabled={loading}
              />
            </div>

            {err && (
              <div className="p-3 rounded-lg bg-red-50 text-red-600 text-sm font-medium border border-red-100">
                {err}
              </div>
            )}

            <Button
              className="w-full bg-brand-red hover:bg-brand-red/90 text-white font-bold h-12 rounded-xl text-lg shadow-lg shadow-red-100 transition-all hover:scale-[1.02] active:scale-[0.98]"
              disabled={loading}
            >
              {loading ? (
                <Loader2 className="mr-2 h-5 w-5 animate-spin" />
              ) : null}
              {t("SignUp")}
            </Button>

            <div className="text-center pt-4">
              <p className="text-sm text-zinc-500">
                Already have an account?{" "}
                <Link
                  href={`/${params.locale}/auth/sign-in`}
                  className="font-bold text-brand-red hover:underline"
                >
                  {t("SignIn")}
                </Link>
              </p>
            </div>
          </form>
        </CardContent>
      </Card>
    </main>
  );
}
