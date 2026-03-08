import { createClient } from "@supabase/supabase-js";
import dotenv from "fs";

// Read env from .env.local manually if needed
const env = {};
const envContent = dotenv.readFileSync(".env.local", "utf8");
envContent.split("\n").forEach((line) => {
  const [key, value] = line.split("=");
  if (key && value) env[key.trim()] = value.trim();
});

const supabase = createClient(
  env["NEXT_PUBLIC_SUPABASE_URL"],
  env["NEXT_PUBLIC_SUPABASE_ANON_KEY"],
);

async function check() {
  const { data, error } = await supabase
    .from("products")
    .select("name, description, description_nl")
    .eq("slug", "evil-one")
    .single();

  if (error) {
    console.error("Error fetching product:", error);
    return;
  }

  console.log('Product check for "evil-one":');
  console.log("Name:", data.name);
  console.log("Original Desc:", data.description?.substring(0, 50) + "...");
  console.log("Dutch Desc:", data.description_nl?.substring(0, 50) + "...");
}

check();
