const locales = [
  "nl",
  "fr",
  "cs",
  "es",
  "de",
  "pl",
  "pt",
  "it",
  "da",
  "no",
  "sv",
  "uk",
  "ar",
  "bg",
]; // English is already the base column

const tables = {
  products: ["description", "details", "ingredients"],
  chilli_types: ["name", "description"],
  categories: ["name", "description"],
  brands: ["description"],
};

let sql = "-- Migration: Add translation columns\n\n";

for (const [table, columns] of Object.entries(tables)) {
  sql += `-- Table: ${table}\n`;
  for (const locale of locales) {
    for (const column of columns) {
      sql += `ALTER TABLE public.${table} ADD COLUMN IF NOT EXISTS ${column}_${locale} text;\n`;
    }
  }
  sql += "\n";
}

console.log(sql);
