# platform - SEO + GEO Remediation Playbook

**Target**: https://platform.intelli-verse-x.ai
**Backing service**: aicart/intelliverse-user-frontend (image `intelliverse-user-frontend:latest`)
**Source repo (best guess)**: intelli-verse-x/intelliverse-user-frontend
**Audit reference**: `reports/platform.md`
**Generated**: 2026-05-17T19:00:00Z

---

## 1. Executive summary

**CSR SPA with minimal SSR**—same pattern as qrstudio/marketx. Has basic title/description but empty `<div id="root">`, robots/sitemap return HTML (routing issue), no OG tags, no structured data, no security headers. This is the main user platform, so SSR migration is critical for discoverability. Phase 1: fix routing, enhance metadata. Phase 2: SSR. Projected: 3/10 → 5/10 (quick fixes) → 8/10 (SSR).

## 2-8. Remediation

**CSR SPA pattern**—see `remediation/qrstudio.md` for complete playbook.

### Phase 1 (immediate):
1. Fix nginx routing for robots.txt, sitemap.xml (serve before SPA fallback)
2. Enhance index.html metadata:
   - Expand description to 120-155 chars
   - Add OG tags, Twitter Card
   - Add JSON-LD (WebApplication schema for user platform/dashboard)
   - Add canonical URL
3. Add security headers
4. Create llms.txt describing platform features

### Phase 2 (long-term):
5. Migrate to Next.js SSR
   - Server-render landing page, features, pricing
   - Keep dashboard as CSR (`'use client'` components)
   - Hybrid approach: public pages = SSR, auth pages = CSR

## Note

Platform is user-facing app (login/dashboard). Consider which pages should be public/indexed:
- **Index**: Landing page, features, pricing, /about
- **Noindex**: /dashboard, /account, /settings (auth-required)

Add to robots.txt: `Disallow: /dashboard`, `Disallow: /account`

## Impact

3/10 → 5/10 (Phase 1), 3/10 → 8/10 (Phase 2 SSR). Main platform site is critical for brand SEO—prioritize SSR migration.
