# ID Agent + ID Mentor — Design System

A self-contained design system distilled from the two Ivan Doronin marketing sites:
**ID Agent** (AI job-search copilot) and **ID Mentor** (1-on-1 PM mentoring).

Both products share a single visual language: a **deep indigo-black stage** with a signature
**magenta-violet accent** (`#8606c1 → #b44de8`), dense **Raleway** typography with bold
`-0.03em` display headlines, and **Space Mono** reserved for data, metrics, and dashboard
widgets. The system is tuned for Russian-language marketing copy and self-hosted so it can
ship anywhere without a CDN.

---

## Files

```
colors_and_type.css       ← tokens + type utilities (single source of truth)
fonts/                    ← Raleway + Space Mono TTFs (SIL OFL 1.1)
preview/                  ← specimen cards for the review pane (type, color, spacing)
ui_kits/
  id-agent/               ← full site recreation as modular React components
  id-mentor/              ← full site recreation as modular React components
assets/                   ← founder photos, client avatars, logos, icons
  logos/                    ← id-logo-primary.svg · light · mono-dark · mono-white · tight · mark (png)
SKILL.md                  ← how to use this kit
```

---

## Quick start

```html
<link rel="stylesheet" href="colors_and_type.css">
<body class="dark">
  <h1 class="t-display">AI <span class="t-grad-accent">управляет</span> рутиной</h1>
  <p class="t-lead">Под каждого клиента — персональный AI-агент.</p>
  <button class="t-btn t-btn-primary">Начать →</button>
</body>
```

Dark mode is the default stage. Every token is defined on `:root` and overridable.

---

## Design DNA

### Brand mark
Five logo lockups ship in `assets/logos/`. The primary lockup is a **white `i` (gradient from `#FFFFFF` 40% → `#D9C8EB`)** next to a **gradient `d` (`#B44DE8 → #A78BFA`)** with a solid `#B44DE8` dot and a soft radial glow. Pick by surface:

| File | Use on |
|---|---|
| `id-logo-primary.svg` | Dark stage (`#0b0812` / `#1a1528`) — the default |
| `id-logo-light.svg` | Light marketing backgrounds — `i` becomes dark, `d` stays gradient |
| `id-logo-mono-dark.svg` | Single-color dark on light (print, invoices, 1-color press) |
| `id-logo-mono-white.svg` | Single-color white on accent / photo / video overlays |
| `id-logo-tight.svg` | Tighter lockup variant — dot closer to the `d` for horizontal packing |
| `id-mark-square.png` | Raster app-icon / favicon / social-avatar mark |

**Clearspace:** reserve at least the width of the `i` stem around the lockup. **Minimum size:** 24px tall for the mark, 80px wide for the lockup. The dot is load-bearing — never crop or reposition it; the radial glow is decorative and may be removed if a flat render is required.

The **Brand Swatches** card (`preview/brand-swatches.html`) is a drop-in palette reference for Keynote / Figma / Canva: open it, eyedropper each swatch, save to your app's custom palette. It encodes the nine canonical brand colors plus the signature 135° gradient.

### Palette
- **Stage:** `--bg` `#0b0812` (near-black indigo) with `--bg-2` `#141020` for alt sections.
- **Cards:** `--bg-card` `#1a1528` → hover `#221d32`.
- **Accent:** `--accent` `#8606c1` / `--accent-light` `#b44de8` / glow `rgba(134,6,193,.25)`.
- **Signals:** green `#34d399` (success, results), amber `#fbbf24` (attention), blue `#60a5fa` (info), red `#f87171` (pain).
- **Text:** `--fg-1` `#ffffff` / `--fg-2` `#a8a0b8` / `--fg-3` `#6b6180`.

Gradient accent is non-negotiable — headline keywords (`AI`, `консультант`, `вы`)
gradient-clip onto `linear-gradient(180deg, #b44de8 0%, #a78bfa 100%)`.

### Typography
**Raleway** (self-hosted variable font, 100–900) is the single prose family. Display is
**800 at -0.03em tracking**, body is 400–500. **Space Mono** (self-hosted, 400 / 400i /
700 / 700i) appears *only* in dashboard widgets, KPIs, timestamps, and preview-card tag
labels — never in prose.

### Spacing & shape
- Radii: `--radius` `16px` (cards), `--radius-sm` `10px` (inputs, small chips), `100px` (pills).
- Section rhythm: `--section-gap` `80px` on desktop, `56px` on mobile.
- Max content width: `1120px`.
- Card borders: `1px solid rgba(255,255,255,.06)`, hover lifts to `.12`.

### Motion
- `cubic-bezier(0.25, 0.46, 0.45, 0.94)` for hero fade-up (0.85s).
- Pulse dot: 2s ease infinite on "Набор открыт" badges.
- Card hover: `transform: translateY(-2px)` + border recolor, 250ms.
- Gantt bars reveal via `clip-path: inset(0 100% 0 0)` → `inset(0 0% 0 0)`, staggered.

---

## Components (in `ui_kits/`)

**Shared** — nav with blur backdrop · hero with founder photo-card · section labels ·
pain cards (4-up grid) · founder about card (photo + quote + company chips) · testimonials
(avatar + quote + green result chip) · FAQ accordion · CTA card with radial glow · footer.

**ID Agent specific** — process stepper (Step 1 → 2 → 3 with connector) · feature grid
with outlined icons · dashboard mockup preview · "how it works" with animated arrows.

**ID Mentor specific** — 3 track cards (Карьера / Поиск / Hard skills) each color-coded
(blue / green / amber) · Gantt schedule · 2-plan pricing (Спринт 1mo / Интенсив 2mo with
"Рекомендуемый" badge) · Telegram + WhatsApp CTA pair.

---

## Flagged substitutions
- **Fonts**: Raleway and Space Mono are **self-hosted** from `fonts/` (variable-weight TTFs, SIL Open Font License 1.1). No Google Fonts call is made. If you ship this to a new host, copy `fonts/` alongside `colors_and_type.css` — the `@font-face src:` paths are relative.
- **Icons**: Lucide is flagged as the CDN companion for any icon not shipped in the source. Every new icon pulled from Lucide should be noted at the callsite.
- **Imagery**: Real founder and client photos are in `assets/`. Use placeholder `.png` boxes rather than AI-generated portraits for new personas.

---

## When to pick which side

| Need | Look at |
|---|---|
| Product/tool positioning, feature grids, dashboard previews | **ID Agent** kit |
| Personal/consulting positioning, tracks, founder-led copy, pricing with tiers | **ID Mentor** kit |
| Both — it's an Ivan Doronin property | use the shared tokens, mix components |
