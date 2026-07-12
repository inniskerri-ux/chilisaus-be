"use server";

import { revalidatePath } from "next/cache";
import { createClient } from "@/lib/supabase/server";

export async function updateProfile(
  { locale }: { locale: string },
  formData: FormData,
): Promise<{ error?: string; success?: string }> {
  const supabase = await createClient();
  const {
    data: { user },
  } = await supabase.auth.getUser();

  if (!user) {
    return { error: "Not authenticated" };
  }

  const firstName = formData.get("first_name")?.toString().trim() || null;
  const lastName = formData.get("last_name")?.toString().trim() || null;
  const phone = formData.get("phone")?.toString().trim() || null;
  const dateOfBirth = formData.get("date_of_birth")?.toString().trim() || null;
  const street = formData.get("street")?.toString().trim() || null;
  const city = formData.get("city")?.toString().trim() || null;
  const postalCode = formData.get("postal_code")?.toString().trim() || null;
  const country = formData.get("country")?.toString().trim() || null;

  const { error: profileError } = await supabase
    .from("profiles")
    .update({
      first_name: firstName,
      last_name: lastName,
      phone,
      date_of_birth: dateOfBirth,
      country,
    })
    .eq("id", user.id);

  if (profileError) {
    console.error("[Profile] Failed to update profile:", profileError);
    return { error: "Failed to save profile" };
  }

  const { data: existingAddress } = await supabase
    .from("addresses")
    .select("id")
    .eq("user_id", user.id)
    .eq("label", "Default")
    .maybeSingle();

  const addressPayload = {
    user_id: user.id,
    label: "Default",
    street,
    city,
    postal_code: postalCode,
    country,
  };

  const { error: addressError } = existingAddress
    ? await supabase
        .from("addresses")
        .update(addressPayload)
        .eq("id", existingAddress.id)
    : await supabase.from("addresses").insert(addressPayload);

  if (addressError) {
    console.error("[Profile] Failed to save address:", addressError);
    return { error: "Failed to save address" };
  }

  revalidatePath(`/${locale}/account`);
  return { success: "saved" };
}
