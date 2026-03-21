"use client";

import { useState, useRef } from "react";
import { useRouter } from "next/navigation";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";
import { Textarea } from "@/components/ui/textarea";
import { Card, CardContent } from "@/components/ui/card";
import { supabase } from "@/lib/supabase/client";
import {
  Plus,
  Trash2,
  ChevronUp,
  ChevronDown,
  Type,
  ImageIcon,
  ShoppingBag,
  MousePointerClick,
  Loader2,
  Send,
  X,
  Upload,
} from "lucide-react";
import type { Block, TextBlock, ImageBlock, ProductsBlock, ButtonBlock } from "@/lib/emails/newsletter-builder";

type Product = {
  id: string;
  name: string;
  image_url: string | null;
  price_cents: number;
  slug: string;
};

function genId() {
  return Math.random().toString(36).slice(2);
}

// --- Block editors ---

function TextEditor({ block, onChange }: { block: TextBlock; onChange: (b: TextBlock) => void }) {
  return (
    <div className="space-y-3">
      <div className="flex gap-2">
        {(["heading", "body", "small"] as const).map((s) => (
          <button
            key={s}
            type="button"
            onClick={() => onChange({ ...block, size: s })}
            className={`px-3 py-1 text-xs rounded-full border transition-colors capitalize ${
              block.size === s
                ? "bg-black text-white border-black"
                : "border-zinc-300 text-zinc-600 hover:border-zinc-500"
            }`}
          >
            {s}
          </button>
        ))}
      </div>
      <Textarea
        value={block.content}
        onChange={(e) => onChange({ ...block, content: e.target.value })}
        placeholder="Write your text here..."
        className={`w-full resize-none ${
          block.size === "heading" ? "text-xl font-bold min-h-[60px]" :
          block.size === "small" ? "text-xs text-zinc-500 min-h-[60px]" :
          "text-sm min-h-[100px]"
        }`}
      />
    </div>
  );
}

function ImageEditor({ block, onChange }: { block: ImageBlock; onChange: (b: ImageBlock) => void }) {
  const [uploading, setUploading] = useState(false);
  const inputRef = useRef<HTMLInputElement>(null);

  const handleFile = async (e: React.ChangeEvent<HTMLInputElement>) => {
    const file = e.target.files?.[0];
    if (!file) return;
    setUploading(true);
    try {
      const filename = `email-${Date.now()}.webp`;
      const { data, error } = await supabase.storage
        .from("product-images")
        .upload(filename, file, { upsert: true });
      if (error) throw error;
      const { data: { publicUrl } } = supabase.storage.from("product-images").getPublicUrl(data.path);
      onChange({ ...block, url: publicUrl });
    } catch {
      alert("Upload failed");
    } finally {
      setUploading(false);
      if (inputRef.current) inputRef.current.value = "";
    }
  };

  return (
    <div className="space-y-3">
      {block.url ? (
        <div className="relative">
          {/* eslint-disable-next-line @next/next/no-img-element */}
          <img src={block.url} alt={block.alt} className="w-full max-h-48 object-cover rounded-lg border" />
          <button
            type="button"
            onClick={() => onChange({ ...block, url: "" })}
            className="absolute top-2 right-2 bg-black/60 text-white rounded-full p-1 hover:bg-black"
          >
            <X size={14} />
          </button>
        </div>
      ) : (
        <div
          onClick={() => inputRef.current?.click()}
          className="flex flex-col items-center justify-center h-32 border-2 border-dashed border-zinc-200 rounded-lg cursor-pointer hover:bg-zinc-50 transition-colors"
        >
          {uploading ? (
            <Loader2 size={20} className="animate-spin text-zinc-400" />
          ) : (
            <>
              <Upload size={20} className="text-zinc-400 mb-1" />
              <span className="text-xs text-zinc-500">Click to upload image</span>
            </>
          )}
        </div>
      )}
      <Input
        placeholder="Alt text (optional)"
        value={block.alt}
        onChange={(e) => onChange({ ...block, alt: e.target.value })}
        className="text-sm"
      />
      <input ref={inputRef} type="file" accept="image/*" onChange={handleFile} className="hidden" />
    </div>
  );
}

function ProductsEditor({
  block,
  onChange,
  allProducts,
}: {
  block: ProductsBlock;
  onChange: (b: ProductsBlock) => void;
  allProducts: Product[];
}) {
  const [search, setSearch] = useState("");
  const selectedIds = new Set(block.products.map((p) => p.id));

  const filtered = allProducts.filter((p) =>
    p.name.toLowerCase().includes(search.toLowerCase()),
  );

  const toggle = (product: Product) => {
    if (selectedIds.has(product.id)) {
      onChange({ ...block, products: block.products.filter((p) => p.id !== product.id) });
    } else if (block.products.length < 4) {
      onChange({
        ...block,
        products: [
          ...block.products,
          {
            id: product.id,
            name: product.name,
            imageUrl: product.image_url || "",
            priceCents: product.price_cents,
            slug: product.slug,
          },
        ],
      });
    }
  };

  return (
    <div className="space-y-3">
      <p className="text-xs text-zinc-500">Select up to 4 products to feature.</p>
      {block.products.length > 0 && (
        <div className="flex flex-wrap gap-2">
          {block.products.map((p) => (
            <span
              key={p.id}
              className="flex items-center gap-1 text-xs bg-zinc-100 rounded-full px-3 py-1"
            >
              {p.name}
              <button type="button" onClick={() => toggle({ id: p.id, name: p.name, image_url: p.imageUrl, price_cents: p.priceCents, slug: p.slug })}>
                <X size={12} />
              </button>
            </span>
          ))}
        </div>
      )}
      <Input
        placeholder="Search products..."
        value={search}
        onChange={(e) => setSearch(e.target.value)}
        className="text-sm"
      />
      <div className="max-h-40 overflow-y-auto border rounded-lg divide-y">
        {filtered.slice(0, 30).map((p) => {
          const selected = selectedIds.has(p.id);
          const disabled = !selected && block.products.length >= 4;
          return (
            <button
              key={p.id}
              type="button"
              disabled={disabled}
              onClick={() => toggle(p)}
              className={`w-full flex items-center gap-3 px-3 py-2 text-left text-sm transition-colors ${
                selected ? "bg-red-50" : disabled ? "opacity-40 cursor-not-allowed" : "hover:bg-zinc-50"
              }`}
            >
              {p.image_url && (
                // eslint-disable-next-line @next/next/no-img-element
                <img src={p.image_url} alt={p.name} className="w-8 h-8 object-cover rounded" />
              )}
              <span className="flex-1 truncate">{p.name}</span>
              <span className="text-xs text-zinc-400">€{(p.price_cents / 100).toFixed(2)}</span>
              {selected && <span className="text-red-600 text-xs font-bold">✓</span>}
            </button>
          );
        })}
      </div>
    </div>
  );
}

function ButtonEditor({ block, onChange }: { block: ButtonBlock; onChange: (b: ButtonBlock) => void }) {
  return (
    <div className="space-y-3">
      <div>
        <Label className="text-xs text-zinc-500 mb-1 block">Button label</Label>
        <Input
          value={block.label}
          onChange={(e) => onChange({ ...block, label: e.target.value })}
          placeholder="Shop Now"
        />
      </div>
      <div>
        <Label className="text-xs text-zinc-500 mb-1 block">Link URL</Label>
        <Input
          value={block.url}
          onChange={(e) => onChange({ ...block, url: e.target.value })}
          placeholder="https://chilisaus.be/en/shop"
        />
      </div>
    </div>
  );
}

// --- Preview ---

function BlockPreview({ block }: { block: Block }) {
  switch (block.type) {
    case "text": {
      if (!block.content) return <p className="text-zinc-300 italic text-sm">Empty text block</p>;
      const classes: Record<string, string> = {
        heading: "text-2xl font-bold text-zinc-900 leading-tight",
        body: "text-sm text-zinc-600 leading-relaxed",
        small: "text-xs text-zinc-400",
      };
      return <p className={classes[block.size]} style={{ whiteSpace: "pre-wrap" }}>{block.content}</p>;
    }
    case "image":
      return block.url ? (
        // eslint-disable-next-line @next/next/no-img-element
        <img src={block.url} alt={block.alt} className="w-full max-h-48 object-cover rounded-lg" />
      ) : (
        <div className="w-full h-24 bg-zinc-100 rounded-lg flex items-center justify-center text-zinc-400 text-xs">
          No image
        </div>
      );
    case "products":
      return (
        <div className="grid grid-cols-2 gap-2">
          {block.products.map((p) => (
            <div key={p.id} className="border rounded-lg overflow-hidden bg-white">
              {p.imageUrl ? (
                // eslint-disable-next-line @next/next/no-img-element
                <img src={p.imageUrl} alt={p.name} className="w-full h-24 object-cover" />
              ) : (
                <div className="w-full h-24 bg-zinc-100" />
              )}
              <div className="p-2">
                <p className="text-xs font-semibold text-zinc-900 truncate">{p.name}</p>
                <p className="text-xs text-red-600 font-bold">€{(p.priceCents / 100).toFixed(2)}</p>
              </div>
            </div>
          ))}
          {block.products.length === 0 && (
            <p className="col-span-2 text-zinc-300 italic text-sm">No products selected</p>
          )}
        </div>
      );
    case "button":
      return (
        <div className="text-center">
          <span className="inline-block bg-red-600 text-white text-sm font-semibold px-6 py-3 rounded-md">
            {block.label || "Button"}
          </span>
        </div>
      );
  }
}

const BLOCK_TYPES = [
  { type: "text", label: "Text", icon: Type },
  { type: "image", label: "Image", icon: ImageIcon },
  { type: "products", label: "Products", icon: ShoppingBag },
  { type: "button", label: "Button", icon: MousePointerClick },
] as const;

function createBlock(type: Block["type"]): Block {
  const id = genId();
  switch (type) {
    case "text": return { id, type: "text", content: "", size: "body" };
    case "image": return { id, type: "image", url: "", alt: "" };
    case "products": return { id, type: "products", products: [] };
    case "button": return { id, type: "button", label: "Shop Now", url: "https://chilisaus.be/en/shop" };
  }
}

// --- Main builder ---

export default function EmailBuilder({
  locale,
  products,
  subscriberCount,
}: {
  locale: string;
  products: Product[];
  subscriberCount: number;
}) {
  const router = useRouter();
  const [subject, setSubject] = useState("");
  const [blocks, setBlocks] = useState<Block[]>([]);
  const [sending, setSending] = useState(false);
  const [activeBlockId, setActiveBlockId] = useState<string | null>(null);

  const updateBlock = (id: string, updated: Block) =>
    setBlocks((prev) => prev.map((b) => (b.id === id ? updated : b)));

  const removeBlock = (id: string) =>
    setBlocks((prev) => prev.filter((b) => b.id !== id));

  const moveBlock = (id: string, dir: -1 | 1) => {
    setBlocks((prev) => {
      const idx = prev.findIndex((b) => b.id === id);
      const newArr = [...prev];
      const target = idx + dir;
      if (target < 0 || target >= newArr.length) return prev;
      [newArr[idx], newArr[target]] = [newArr[target], newArr[idx]];
      return newArr;
    });
  };

  const addBlock = (type: Block["type"]) => {
    const block = createBlock(type);
    setBlocks((prev) => [...prev, block]);
    setActiveBlockId(block.id);
  };

  const handleSend = async () => {
    if (!subject.trim()) { alert("Please enter a subject line."); return; }
    if (blocks.length === 0) { alert("Please add at least one block."); return; }
    if (!confirm(`Send to ${subscriberCount} subscribers?`)) return;

    setSending(true);
    try {
      const res = await fetch("/api/admin/send-campaign", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ subject, blocks }),
      });
      const data = await res.json();
      if (!res.ok) throw new Error(data.error);
      alert(`Sent to ${data.sent} subscribers!`);
      router.push(`/${locale}/admin/marketing`);
      router.refresh();
    } catch (err: any) {
      alert(err.message || "Send failed");
    } finally {
      setSending(false);
    }
  };

  return (
    <div className="space-y-4">
      {/* Top bar */}
      <div className="flex items-center justify-between gap-4">
        <h1 className="text-2xl font-bold tracking-tight">New Newsletter</h1>
        <Button
          onClick={handleSend}
          disabled={sending}
          className="bg-red-600 hover:bg-red-700 text-white"
        >
          {sending ? <Loader2 className="mr-2 h-4 w-4 animate-spin" /> : <Send className="mr-2 h-4 w-4" />}
          {sending ? "Sending..." : `Send to ${subscriberCount} subscribers`}
        </Button>
      </div>

      {/* Subject */}
      <div className="space-y-1">
        <Label htmlFor="subject" className="text-sm font-medium">Subject line *</Label>
        <Input
          id="subject"
          value={subject}
          onChange={(e) => setSubject(e.target.value)}
          placeholder="New arrivals this week 🌶️"
          className="text-base"
        />
      </div>

      <div className="grid grid-cols-1 xl:grid-cols-2 gap-6">
        {/* Left: Editor */}
        <div className="space-y-3">
          {/* Add block buttons */}
          <div className="flex flex-wrap gap-2">
            {BLOCK_TYPES.map(({ type, label, icon: Icon }) => (
              <button
                key={type}
                type="button"
                onClick={() => addBlock(type)}
                className="flex items-center gap-1.5 text-xs px-3 py-1.5 border rounded-lg hover:bg-zinc-50 transition-colors"
              >
                <Icon size={14} />
                <span>{label}</span>
                <Plus size={12} className="text-zinc-400" />
              </button>
            ))}
          </div>

          {/* Blocks */}
          {blocks.length === 0 ? (
            <div className="border-2 border-dashed border-zinc-200 rounded-xl p-10 text-center text-zinc-400">
              <Plus size={24} className="mx-auto mb-2" />
              <p className="text-sm">Add a block above to start building your email.</p>
            </div>
          ) : (
            <div className="space-y-2">
              {blocks.map((block, idx) => {
                const isActive = activeBlockId === block.id;
                const Icon = BLOCK_TYPES.find((t) => t.type === block.type)?.icon || Type;
                return (
                  <Card
                    key={block.id}
                    className={`cursor-pointer transition-all ${isActive ? "ring-2 ring-black shadow-md" : "hover:shadow-sm"}`}
                    onClick={() => setActiveBlockId(isActive ? null : block.id)}
                  >
                    <CardContent className="p-4">
                      {/* Block header */}
                      <div className="flex items-center justify-between mb-3">
                        <div className="flex items-center gap-2 text-xs font-medium text-zinc-500 uppercase tracking-wide">
                          <Icon size={14} />
                          <span>{block.type}</span>
                        </div>
                        <div className="flex items-center gap-1">
                          <button
                            type="button"
                            onClick={(e) => { e.stopPropagation(); moveBlock(block.id, -1); }}
                            disabled={idx === 0}
                            className="p-1 rounded hover:bg-zinc-100 disabled:opacity-30"
                          >
                            <ChevronUp size={14} />
                          </button>
                          <button
                            type="button"
                            onClick={(e) => { e.stopPropagation(); moveBlock(block.id, 1); }}
                            disabled={idx === blocks.length - 1}
                            className="p-1 rounded hover:bg-zinc-100 disabled:opacity-30"
                          >
                            <ChevronDown size={14} />
                          </button>
                          <button
                            type="button"
                            onClick={(e) => { e.stopPropagation(); removeBlock(block.id); }}
                            className="p-1 rounded hover:bg-red-50 text-red-500"
                          >
                            <Trash2 size={14} />
                          </button>
                        </div>
                      </div>

                      {/* Block editor (only when active) */}
                      {isActive && (
                        <div onClick={(e) => e.stopPropagation()}>
                          {block.type === "text" && (
                            <TextEditor block={block} onChange={(b) => updateBlock(block.id, b)} />
                          )}
                          {block.type === "image" && (
                            <ImageEditor block={block} onChange={(b) => updateBlock(block.id, b)} />
                          )}
                          {block.type === "products" && (
                            <ProductsEditor
                              block={block}
                              onChange={(b) => updateBlock(block.id, b)}
                              allProducts={products}
                            />
                          )}
                          {block.type === "button" && (
                            <ButtonEditor block={block} onChange={(b) => updateBlock(block.id, b)} />
                          )}
                        </div>
                      )}
                    </CardContent>
                  </Card>
                );
              })}
            </div>
          )}
        </div>

        {/* Right: Preview */}
        <div className="sticky top-4">
          <p className="text-xs font-semibold uppercase tracking-wider text-zinc-400 mb-3">Preview</p>
          <div className="rounded-xl overflow-hidden border shadow-sm bg-zinc-100">
            {/* Header */}
            <div className="bg-red-600 px-6 py-4 text-center">
              <span className="text-white font-extrabold text-lg">🌶️ Chilisaus.be</span>
            </div>
            {/* Body */}
            <div className="bg-white px-6 py-6 space-y-4 min-h-[200px]">
              {blocks.length === 0 ? (
                <p className="text-zinc-300 text-sm text-center pt-8">Your email preview will appear here.</p>
              ) : (
                blocks.map((block) => (
                  <div key={block.id}>
                    <BlockPreview block={block} />
                  </div>
                ))
              )}
            </div>
            {/* Footer */}
            <div className="bg-zinc-900 px-6 py-4 text-center space-y-1">
              <p className="text-zinc-400 text-xs">Chilisaus.be — Belgium&apos;s Hot Sauce Shop</p>
              <p className="text-zinc-600 text-xs">You&apos;re receiving this because you subscribed or made a purchase.</p>
              <p className="text-zinc-500 text-xs underline">Unsubscribe</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
}
