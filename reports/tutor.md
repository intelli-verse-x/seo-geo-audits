# tutor — SEO + GEO Audit

**Target**: https://tutor.intelli-verse-x.ai  
**Audited**: 2026-05-17T17:41:15Z  
**HTTP**: 200 text/html; charset=utf-8

## SEO Findings
| Check | Result | Severity |
|---|---|---|
| title tag | ⚠ Present: "DeepTutor" but also has 404 title (dual title issue) | WARN |
| meta description | ✓ Present: "Agent-native intelligent learning companion" (47 chars) — too short | WARN |
| canonical | ✗ Missing — no `<link rel="canonical">` | WARN |
| robots.txt | ✗ Returns Next.js 404 HTML page instead of robots.txt | FAIL |
| sitemap.xml | ✗ Likely returns Next.js 404 HTML (same routing issue) | FAIL |
| HSTS | ✗ Missing — no Strict-Transport-Security header | FAIL |
| Open Graph | ✗ Missing — no og:* meta tags | FAIL |
| Twitter Card | ✗ Missing — no twitter:* meta tags | FAIL |
| JSON-LD schema | ✗ Missing — no structured data | WARN |
| h1 count | ⚠ Minimal SSR content — "New Chat" navigation only | WARN |
| lang attribute | ✓ Present: `<html lang="en">` | OK |
| CSP | ✗ Missing — no Content-Security-Policy header | WARN |
| X-Robots-Tag | ⚠ Has meta robots="noindex" — blocks search indexing! | FAIL |
| Server-side rendering | ⚠ Next.js with prerendering but minimal content (84 chars text) | WARN |
| Cache headers | ✓ Present: x-nextjs-cache: HIT, x-nextjs-prerender, stale-time | OK |

## GEO Findings

**AI-answerability**: PARTIAL — Title and meta description indicate it's an "Agent-native intelligent learning companion" but virtually no other content is server-rendered.

**LLM-friendliness score**: 3/10

**Why**: Next.js site with prerendering but minimal SSR content. Has meta noindex which blocks search engines. Missing all rich metadata.

**Top 3 fixes**:

1. **Remove meta robots="noindex"** (CRITICAL) — Currently blocking all search indexing
2. **Add robots.txt and sitemap.xml** — Create `public/robots.txt` and `public/sitemap.xml`
3. **Add comprehensive metadata** — Open Graph, Twitter Cards, JSON-LD, longer meta description

## Recommended Actions

1. **Remove noindex** (in layout or page metadata):
```tsx
// Remove or change:
// export const metadata = { robots: 'noindex' }
```

2. **Create `public/robots.txt`**:
```
User-agent: *
Allow: /
Sitemap: https://tutor.intelli-verse-x.ai/sitemap.xml

User-agent: GPTBot
Allow: /
```

3. **Enhance metadata** (app/layout.tsx):
```tsx
export const metadata = {
  title: 'DeepTutor | AI-Powered Learning Companion',
  description: 'Agent-native intelligent learning companion powered by AI. Get personalized tutoring, guided learning paths, and interactive knowledge building.',
  openGraph: {
    title: 'DeepTutor | AI Learning Companion',
    description: 'Personalized AI tutoring and guided learning',
    url: 'https://tutor.intelli-verse-x.ai',
  },
}
```

4. **Add security headers** (next.config.js).
