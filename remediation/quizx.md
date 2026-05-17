# quizx - SEO + GEO Remediation Playbook

**Target**: https://quizx.intelli-verse-x.ai
**Backing service**: aicart/intelliverse-quizx (image `intelli-verse-quizx:latest`)
**Source repo (best guess)**: intelli-verse-x/intelli-verse-quizx
**Audit reference**: `reports/quizx.md`
**Generated**: 2026-05-17T18:55:00Z

---

## 1. Executive summary

QuizX is **completely empty CSR SPA**—no title, no meta description, only loader spinner in HTML. Zero SEO. This is identical to animator/qrstudio pattern: fix routing for robots/sitemap, enhance HTML shell, migrate to SSR for long-term success. Projected: 1/10 → 5/10 (quick fixes) → 8/10 (SSR).

## 2-4. Remediation

**CSR SPA pattern**—see `remediation/qrstudio.md` or `remediation/animator.md` for full details.

### Quick fixes (Phase 1):
1. Add robots.txt/sitemap via nginx routing or Express routes
2. Enhance `index.html` with full metadata (title, description, OG, Twitter, JSON-LD)
3. Add security headers
4. Add llms.txt

### Long-term (Phase 2):
5. Migrate to Next.js SSR for server-rendered content

## Template

Use `remediation/qrstudio.md` as template. Replace "qrstudio" → "quizx", "QR Studio" → "QuizX", describe as "Advanced quiz platform" or similar based on actual product.

## Impact

1/10 → 5/10 LLM-friendliness (Phase 1), 1/10 → 8/10 (Phase 2 SSR).
