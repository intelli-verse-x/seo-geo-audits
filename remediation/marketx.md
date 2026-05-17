# marketx - SEO + GEO Remediation Playbook

**Target**: https://marketx.intelli-verse-x.ai
**Backing service**: aicart/intelliverse-marketx-frontend (image `intelliverse-marketx-frontend:0.00.10`)
**Source repo (best guess)**: intelli-verse-x/intelliverse-marketx-frontend
**Audit reference**: `reports/marketx.md`
**Generated**: 2026-05-17T18:55:00Z

---

## 1. Executive summary

**CSR SPA with empty `<div id="root">`**—same pattern as qrstudio/animator/quizx. Missing all SEO metadata, robots/sitemap return HTML (routing issue). Phase 1: fix routing, enhance HTML shell. Phase 2: migrate to SSR. Projected: 2/10 → 5/10 (quick fixes) → 8/10 (SSR).

## 2-8. Remediation

**CSR SPA pattern**—see `remediation/qrstudio.md` for complete playbook.

### Phase 1 (immediate):
1. Fix nginx/Express routing for robots.txt, sitemap.xml
2. Enhance index.html: title "MarketX | Digital Marketplace Platform", add meta description about marketplace/ecommerce features
3. Add OG tags, Twitter Card, JSON-LD (Marketplace / WebApplication schema)
4. Add security headers
5. Create llms.txt describing marketplace features

### Phase 2 (long-term):
6. Migrate to Next.js SSR for product listings, categories, search pages

## Schema recommendation

Use `Product` or `ItemList` schemas for marketplace content. Consider `Offer` schema for individual listings.

## Impact

2/10 → 5/10 (Phase 1), 2/10 → 8/10 (Phase 2 SSR). Marketplace sites benefit heavily from SSR for product SEO.
