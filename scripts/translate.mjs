import * as deepl from 'deepl-node';
import fs from 'fs';
import path from 'path';
import dotenv from 'dotenv';
import { fileURLToPath } from 'url';

dotenv.config({ path: '.env.local' });

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const MESSAGES_DIR = path.join(__dirname, '../src/messages');
const SOURCE_LOCALE = 'en';

const authKey = process.env.DEEPL_AUTH_KEY;
if (!authKey) {
  console.error('Error: DEEPL_AUTH_KEY is not set in .env.local');
  process.exit(1);
}

const translator = new deepl.Translator(authKey);

// Target locales to support (added 8 new ones)
const TARGET_LOCALES = [
  'nl', 'fr', 'cs', 'es', 'de', 'pl', // Existing
  'pt', 'it', 'da', 'no', 'sv', 'uk', 'ar', 'bg' // New
];

// Mapping for DeepL codes
const DEEPL_CODES = {
  'en': 'en-US',
  'nl': 'nl',
  'fr': 'fr',
  'cs': 'cs',
  'es': 'es',
  'de': 'de',
  'pl': 'pl',
  'pt': 'pt-PT',
  'it': 'it',
  'da': 'da',
  'no': 'nb', // Norwegian Bokmål
  'sv': 'sv',
  'uk': 'uk',
  'ar': 'ar', // Note: DeepL added Arabic support recently
  'bg': 'bg'
};

async function translateObject(obj, targetLocale) {
  const result = {};
  
  for (const [key, value] of Object.entries(obj)) {
    if (typeof value === 'object' && value !== null) {
      result[key] = await translateObject(value, targetLocale);
    } else if (typeof value === 'string') {
      try {
        // DeepL translation
        const response = await translator.translateText(
          value,
          DEEPL_CODES[SOURCE_LOCALE],
          DEEPL_CODES[targetLocale] || targetLocale
        );
        result[key] = response.text;
        console.log(`  [${targetLocale}] Translated: "${key}"`);
      } catch (err) {
        console.error(`  [${targetLocale}] Error translating "${key}":`, err.message);
        result[key] = value; // Fallback to source
      }
    } else {
      result[key] = value;
    }
  }
  
  return result;
}

/**
 * Deep merge to preserve existing translations and only add missing keys
 */
async function syncTranslations(sourceObj, targetObj, targetLocale) {
  const result = { ...targetObj };
  
  for (const [key, value] of Object.entries(sourceObj)) {
    if (typeof value === 'object' && value !== null) {
      result[key] = await syncTranslations(value, targetObj[key] || {}, targetLocale);
    } else if (typeof value === 'string') {
      // Only translate if key is missing or is exactly the same as source (indicates untranslated)
      if (targetObj[key] === undefined || targetObj[key] === value) {
        try {
          const response = await translator.translateText(
            value,
            DEEPL_CODES[SOURCE_LOCALE],
            DEEPL_CODES[targetLocale] || targetLocale
          );
          result[key] = response.text;
          console.log(`  [${targetLocale}] Added: "${key}"`);
        } catch (err) {
          console.error(`  [${targetLocale}] Error adding "${key}":`, err.message);
          result[key] = targetObj[key] || value;
        }
      }
    }
  }
  
  return result;
}

async function main() {
  console.log('Starting translation sync...');
  
  const sourcePath = path.join(MESSAGES_DIR, `${SOURCE_LOCALE}.json`);
  const sourceMessages = JSON.parse(fs.readFileSync(sourcePath, 'utf8'));

  for (const locale of TARGET_LOCALES) {
    console.log(`Processing locale: ${locale}`);
    const targetPath = path.join(MESSAGES_DIR, `${locale}.json`);
    
    let targetMessages = {};
    if (fs.existsSync(targetPath)) {
      targetMessages = JSON.parse(fs.readFileSync(targetPath, 'utf8'));
    }

    const updatedMessages = await syncTranslations(sourceMessages, targetMessages, locale);
    
    fs.writeFileSync(targetPath, JSON.stringify(updatedMessages, null, 2) + '
');
    console.log(`Finished locale: ${locale}
`);
  }

  console.log('All translations synced successfully!');
}

main().catch(err => {
  console.error('Translation process failed:', err);
  process.exit(1);
});
