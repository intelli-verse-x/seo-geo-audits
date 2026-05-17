# animator — SEO + GEO Audit

**Target**: https://animator.intelli-verse-x.ai  
**Audited**: 2026-05-17T17:41:15Z  
**HTTP**: 200 text/html; charset=UTF-8

## SEO Findings
| Check | Result | Severity |
|---|---|---|
| title tag | ✓ Present: "ManimCat" — concise but lacks context | WARN |
| meta description | ✗ Missing — no meta description tag | FAIL |
| canonical | ✗ Missing — no `<link rel="canonical">` | WARN |
| robots.txt | ✗ Returns JSON error: "Route not found" (Express routing misconfiguration) | FAIL |
| sitemap.xml | ✗ Likely returns same JSON error | FAIL |
| HSTS | ✗ Missing — no Strict-Transport-Security header | FAIL |
| Open Graph | ✗ Missing — no og:* meta tags | FAIL |
| Twitter Card | ✗ Missing — no twitter:* meta tags | FAIL |
| JSON-LD schema | ✗ Missing — no structured data | WARN |
| h1 count | ✗ CRITICAL: No h1 tags — empty `<div id="root">` | FAIL |
| lang attribute | ✓ Present: `<html lang="en">` | OK |
| CSP | ✗ Missing — no Content-Security-Policy header | WARN |
| X-Robots-Tag | ✗ Not present | WARN |
| Server-side rendering | ✗ CRITICAL: Client-side only SPA with empty shell (1129 bytes total) | FAIL |

## GEO Findings

**AI-answerability**: FAIL — The HTML contains only "ManimCat" title with no description or content.

**LLM-friendliness score**: 1/10

**Why**: Minimal SPA (1129 bytes) with empty `<div id="root">`. All content is client-side JavaScript. Missing all SEO metadata and structured data.

**Top 3 fixes**:

1. **Implement SSR or pre-rendering** — Migrate to Next.js or add react-snap for static generation
2. **Add comprehensive metadata** — Meta description, Open Graph, Twitter Cards, JSON-LD schema
3. **Fix Express routing** — Serve proper robots.txt/sitemap.xml files, add security headers

## Recommended Actions

1. **Add metadata to index.html**:
```html
<title>ManimCat | Mathematical Animation Tool</title>
<meta name="description" content="Create mathematical animations and visualizations with ManimCat, powered by Manim animation engine." />
<link rel="canonical" href="https://animator.intelli-verse-x.ai/" />
```

2. **Fix Express server routing** (server.js or app.js):
```js
app.get('/robots.txt', (req, res) => {
  res.type('text/plain')
  res.send(`User-agent: *\nAllow: /\nSitemap: https://animator.intelli-verse-x.ai/sitemap.xml`)
})

app.get('/sitemap.xml', (req, res) => {
  res.type('application/xml')
  res.send(`<?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
  <url><loc>https://animator.intelli-verse-x.ai/</loc></url>
</urlset>`)
})
```

3. **Migrate to SSR** — Use Next.js or implement Express SSR for React app.
