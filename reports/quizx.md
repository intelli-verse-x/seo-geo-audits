# quizx — SEO + GEO Audit

**Target**: https://quizx.intelli-verse-x.ai  
**Audited**: 2026-05-17T17:41:16Z  
**HTTP**: 200 text/html; charset=utf-8

## SEO Findings
| Check | Result | Severity |
|---|---|---|
| title tag | ✗ Missing — no title in HTML | FAIL |
| meta description | ✗ Missing | FAIL |
| canonical | ✗ Missing | WARN |
| robots.txt | ✗ Not checked (likely missing) | WARN |
| sitemap.xml | ✗ Not checked (likely missing) | WARN |
| HSTS | ✗ Missing | FAIL |
| Open Graph | ✗ Missing | FAIL |
| Twitter Card | ✗ Missing | FAIL |
| JSON-LD schema | ✗ Missing | WARN |
| h1 count | ✗ Zero — only loader spinner in HTML | FAIL |
| lang attribute | ✓ Present: `<html lang="en">` | OK |
| CSP | ✗ Missing | WARN |
| X-Robots-Tag | ✗ Not present | WARN |
| Server-side rendering | ✗ CRITICAL: Next.js Pages Router with zero SSR — only loader spinner visible | FAIL |

## GEO Findings

**AI-answerability**: FAIL — HTML contains only a loading spinner animation. No content whatsoever.

**LLM-friendliness score**: 1/10

**Why**: Next.js Pages Router configured as pure client-side SPA. Only visible content is `<div class="loader">` with spinner animation. All content loaded via JavaScript.

**Top 3 fixes**:

1. **Migrate to Next.js App Router with SSR** — Or implement getServerSideProps/getStaticProps
2. **Add all metadata** — Title, description, Open Graph, Twitter Cards, JSON-LD
3. **Add robots.txt, sitemap.xml, security headers**

## Recommended Actions

1. **Enable SSR** — Use getStaticProps or migrate to App Router:
```tsx
export async function getStaticProps() {
  return { props: { /* data */ } }
}
```

2. **Add metadata** via next/head or metadata export.

3. **Remove loader-only pattern** — Pre-render actual content.

**This site has the same fundamental issues as platform and marketx SPAs.**
