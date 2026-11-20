---
name: Yaroslav Barov
lang: en
headline: Senior Full-Stack Engineer | AI Infrastructure & LLM Serving · Frontend Platform · React · TypeScript · Go · Kubernetes
contacts:
  - jaroslav.barov@gmail.com
  - +381 61 2283 192
  - "[LinkedIn](https://www.linkedin.com/in/yaroslavbarov)"
  - "[GitHub](https://github.com/tanchu)"
  - Belgrade, Serbia
  - "Work authorization: Serbia"
  - Remote (CET / UTC+1)
  - Open to full-time or contract / B2B
---

## Professional Summary

Senior engineer with 10+ years of building complex, high-load web products, now working full-stack on AI infrastructure. At Claven AI I build the platform that deploys any open-source LLM on any hardware — Kubernetes services in Go, inference engines (vLLM, SGLang), fractional GPU sharing with HAMi, and the React / TypeScript portal on top. Before that: frontend platform and developer experience (DX) at TheSoul Publishing and six years on HeadHunter's high-load recruitment product. Known for turning engineering standards into tooling — custom ESLint / Babel / SWC / Vite plugins (three published on npm), strict TypeScript, lint- and test-enforced design systems, CI/CD — and for shipping production sites end to end, from design tokens to deployment.

## Core Competencies

AI Infrastructure
: LLM serving (vLLM, SGLang, TGI, Ollama) · OpenAI-compatible APIs · fractional GPU sharing (HAMi) · NVIDIA / AMD / Intel GPUs · multi-tenancy · Kubernetes · Helm · kind · skaffold

Backend & Platform
: Go · REST / OpenAPI contracts · Keycloak / OIDC · Envoy Gateway · Docker · Node.js · Python

Frontend Architecture
: React · TypeScript · Next.js (App Router) · Vite · Redux Toolkit · Tailwind CSS 4 · react-aria · SPA · i18n (next-intl)

Design Systems & Accessibility
: Design tokens (OKLCH, rem type scale) · reusable component libraries · accessibility (a11y, WCAG) · responsive and cross-browser UI

Developer Experience & Code Quality
: ESLint (custom rules) · Biome · StyleLint · shareable configs · AST tooling · Babel / SWC / Vite / Webpack / RSpack plugins · strict TypeScript · dead code elimination

Testing & Delivery
: Playwright (e2e, computed-style snapshots) · Jest · MSW · contract tests · GitHub Actions · release-please · Sentry

AI-Assisted Development
: Coding agents (Claude Code) in daily work · agent rules (AGENTS.md) · linters and tests as guardrails for generated code

## Professional Experience

### Claven AI {dates="Oct 2026 – Present"}

**Senior Full-Stack Engineer** | Remote

*Sovereign AI cloud platform: turns an organisation's own GPU clusters (NVIDIA, AMD, Intel) into a private or shared AI cloud with serverless inference, fine-tuning, multi-tenancy and billing — on-premises and air-gapped.*

- Build the infrastructure that deploys any open-source LLM on any hardware: Go services on the Kubernetes API, Helm charts, inference engines (vLLM, SGLang) behind OpenAI-compatible endpoints.
- Work on fractional GPU sharing with HAMi (Heterogeneous AI Computing Virtualization Middleware): slicing GPU memory and compute so several models and tenants share one card.
- Extended the deployment service: rollout status derived from Kubernetes Deployment conditions, per-replica pod status, vLLM engine parameters (eager mode, chat templates); seeded the model library with 17 models and their GPU, quantization and template profiles.
- Built a local development stand on kind + skaffold with live file sync and CPU-only vLLM serving on a Mac, so the full stack runs on a laptop without GPUs.
- Ran a front-end audit of the portal (React, TypeScript, Vite) and wrote the resulting architecture decisions: lint stack with a zero-warning CI gate, client cache policy, API contract chain (OpenAPI specs, generated types, contract tests), role-based authorization.
- Hardened security across the stack: removed password-grant login in Keycloak, strict Content Security Policy without inline scripts, runtime brand isolation for white-label deployments, typed field-level validation errors from Go services to the UI.

### TheSoul Publishing {dates="Jun 2023 – Jun 2026"}

**Senior Frontend Developer** | Belgrade

*Frontend platform, developer experience (DX), and code-quality engineering on a large React / TypeScript codebase.*

- Built the team's linting and code-quality infrastructure: grew the ESLint ruleset from a minimal config to 220+ rules, then migrated it to maintained plugin presets (`@eslint-react/eslint-plugin`, `@stylistic/eslint-plugin`, `eslint-plugin-import-x`, `typescript-eslint`); set up StyleLint from scratch and standardized formatting with Prettier and Husky.
- Wrote custom ESLint rules (AST-level) for import sorting and async error handling.
- Built and published the Babel and SWC versions of the React source-location plugins (see Open Source).
- Added CI/CD rules backed by a custom Babel plugin that detected and removed 12,000+ lines of dead code, improving build performance and maintainability.
- Led the TypeScript configuration migration to recommended guidelines and replaced `any` with concrete types across the entire project.
- Worked on a new design system (reusable component library) to replace the legacy MUI-based one; set up and maintained Sentry.

### HeadHunter Group {dates="Dec 2016 – Apr 2023"}

**Senior Frontend Developer** | Russia

*Leading online recruitment platform in Russia, 1,000+ employees. High-load product frontend on two business-critical services (vacancy search and employer search), through two major rewrites.*

- Part of two large-scale modernization efforts: jQuery / XSLT to React / Redux and JavaScript to TypeScript.
- Shipped product features through A/B testing; developed half of the UI for the internal A/B testing service.
- Wrote unit tests (Jest, Enzyme) with 50–95% coverage depending on the project; reviewed colleagues' code and worked with designers on UI/UX.
- Taught frontend at the HeadHunter Developer School for two years (mentoring).
- Drafted a long-term plan to bring accessibility (a11y) into the existing codebase, with economic, marketing, and humanistic justification.

### Earlier roles {dates="Jun 2015 – Nov 2016"}

**Frontend Developer** at Action Media Group (accounting web apps: form validation, calculation logic) and Skytrack LLC (jQuery to Angular rewrite, D3.js analytics charts).

## Independent Web Projects

### Websites for small businesses in Serbia {dates="2026 – Present"}

*Production sites built and run end to end — design system, content, SEO, hosting: [modamakers.space](https://modamakers.space) (sewing school, migrated from Tilda) and others.*

- **Stack:** Next.js App Router, React Server Components, TypeScript, Tailwind CSS 4, react-aria; multilingual (RU / EN / SR) with next-intl; migration from Tilda with redirects from every old URL to keep search rankings.
- **Shared standards as packages:** open-source `@tanchu/*` configs for ESLint, StyleLint, TypeScript and browserslist plus written agent rules, versioned with release-please; every site starts from one Next.js starter template.
- **Design tokens, enforced:** each project has its own small token set in one theme file — OKLCH colors, a rem-based type scale, fixed component styles; linters reject any size or color outside the tokens.
- **Testing:** Playwright end-to-end tests and a computed-style snapshot of every page at three widths, run in Docker — catches layout regressions without fragile screenshots.
- **Delivery:** GitHub Actions CI on every pull request, deploy by version tag to a VPS (pm2, nginx, Cloudflare), Dependabot updates, and every asset optimization a site needs — SVG minification, JPEG to WebP / AVIF conversion and more.
- **Working with AI agents:** coding agents do most of the routine work under project rules (AGENTS.md); linters, tests and owner approval for new tokens keep the output consistent.

## Open Source

React plugins that tag every JSX element with `data-source="path:line"`, so any DOM node in DevTools points to its source line.

- **vite-plugin-react-source-string** — Vite 5+ (incl. Rolldown), oxc-parser · [GitHub](https://github.com/tanchu/vite-plugin-react-source) · [npm](https://www.npmjs.com/package/vite-plugin-react-source-string)
- **swc-plugin-react-source-string** — Next.js and Rspack, written in Rust · [GitHub](https://github.com/tanchu/swc-plugin-react-source) · [npm](https://www.npmjs.com/package/swc-plugin-react-source-string)
- **babel-plugin-react-source-string** — Babel / Webpack · [GitHub](https://github.com/tanchu/babel-plugin-react-source-string) · [npm](https://www.npmjs.com/package/babel-plugin-react-source-string)

## Education & Languages

**Bachelor's Degree, International Economics** — MGUPI, Moscow, 2004–2009\
English — Upper-Intermediate (B2) · Russian — Native
