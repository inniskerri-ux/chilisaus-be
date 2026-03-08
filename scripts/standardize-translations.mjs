import fs from "fs";
import path from "path";

const messagesDir = "src/messages";
const enPath = path.join(messagesDir, "en.json");
const enContent = JSON.parse(fs.readFileSync(enPath, "utf8"));

const files = fs
  .readdirSync(messagesDir)
  .filter((f) => f.endsWith(".json") && f !== "en.json");

function mergeRecursive(target, source, filename, pathStr = "") {
  // Ensure Admin is English
  if (source.Admin) {
    target.Admin = JSON.parse(JSON.stringify(source.Admin));
  }

  for (const key in source) {
    const fullPath = pathStr ? `${pathStr}.${key}` : key;

    // Skip Admin here as we handled it above
    if (key === "Admin") continue;

    if (!(key in target)) {
      target[key] = JSON.parse(JSON.stringify(source[key]));
      console.log(`Added missing key "${fullPath}" to ${filename}`);
    } else if (
      typeof source[key] === "object" &&
      source[key] !== null &&
      !Array.isArray(source[key])
    ) {
      if (
        typeof target[key] !== "object" ||
        target[key] === null ||
        Array.isArray(target[key])
      ) {
        target[key] = {}; // Reset if type mismatch
      }
      mergeRecursive(target[key], source[key], filename, fullPath);
    }
  }
}

function sortKeys(obj, reference) {
  const sorted = {};
  Object.keys(reference).forEach((key) => {
    if (key in obj) {
      if (
        typeof reference[key] === "object" &&
        reference[key] !== null &&
        !Array.isArray(reference[key])
      ) {
        sorted[key] = sortKeys(obj[key], reference[key]);
      } else {
        sorted[key] = obj[key];
      }
    }
  });
  return sorted;
}

files.forEach((file) => {
  const filePath = path.join(messagesDir, file);
  try {
    const content = JSON.parse(fs.readFileSync(filePath, "utf8"));
    mergeRecursive(content, enContent, file);
    const finalContent = sortKeys(content, enContent);
    fs.writeFileSync(filePath, JSON.stringify(finalContent, null, 2), "utf8");
    console.log(`Finished ${file}`);
  } catch (e) {
    console.error(`Error processing ${file}: ${e.message}`);
  }
});
