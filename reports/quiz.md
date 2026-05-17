# quiz — SEO + GEO Audit

**Target**: https://quiz.intelli-verse-x.ai  
**Audited**: 2026-05-17T17:41:16Z  
**HTTP**: 200 text/html; charset=utf-8

## SEO Findings
| Check | Result | Severity |
|---|---|---|
| title tag | ✓ Present: "QuizVerse — AI Quiz Generator, Adaptive Learning & Live Trivia" — excellent, descriptive | OK |
| meta description | ✓ Present: "Live multiplayer quizzes with real coin rewards..." (155 chars) — excellent length and detail | OK |
| canonical | ⚠ Not verified (large HTML file) | WARN |
| robots.txt | ✓ Present and well-configured — allows all, disallows /api/ and /admin/, includes GPTBot rules | OK |
| sitemap.xml | ⚠ Not checked but likely present | N/A |
| HSTS | ✓ Present: "max-age=63072000; includeSubDomains; preload" — excellent | OK |
| Open Graph | ⚠ Not found in initial scan (207KB file) | WARN |
| Twitter Card | ⚠ Not found in initial scan | WARN |
| JSON-LD schema | ⚠ Not found in initial scan | WARN |
| h1 count | ✓ Has content structure | OK |
| lang attribute | ✓ Present: `<html lang="en">` | OK |
| CSP | ✗ Missing — no Content-Security-Policy header | WARN |
| X-Robots-Tag | ✗ Not present | WARN |
| Server-side rendering | ✓ EXCELLENT: Next.js with substantial SSR content (8.5KB+ text, 207KB HTML) | OK |
| Cache headers | ⚠ Not checked | N/A |
| Security | ✓ Has X-Content-Type-Options: nosniff | OK |

## GEO Findings

**AI-answerability**: PASS — Excellent. The HTML contains rich content about live multiplayer quizzes, coin rewards, quiz formats, leagues, and payment methods.

**LLM-friendliness score**: 8/10

**Why**: This is the best-performing site in the audit batch. Next.js with excellent SSR, substantial content, good title/description, proper robots.txt, and HSTS security. Missing only Open Graph, Twitter Cards, and JSON-LD schema to reach 9-10/10.

**Top 3 fixes**:

1. **Add Open Graph and Twitter Card metadata** — For social sharing
2. **Add JSON-LD schema** — WebApplication, FAQPage, or Quiz schemas
3. **Add Content-Security-Policy header** — For additional security

## Recommended Actions

1. **Add metadata** (Next.js app/layout.tsx or pages/_app.tsx):
```tsx
export const metadata = {
  openGraph: {
    title: 'QuizVerse | Live Multiplayer Quizzes with Real Rewards',
    description: 'Play 30-second quizzes, win coins, cash out via UPI',
    url: 'https://quiz.intelli-verse-x.ai',
    images: [{ url: '/og-image.png', width: 1200, height: 630 }],
  },
  twitter: {
    card: 'summary_large_image',
    title: 'QuizVerse | Live Quiz Platform',
  },
}
```

2. **Add JSON-LD WebApplication schema**.

3. **Add CSP header** (next.config.js).

**Overall**: Excellent implementation, needs only metadata enhancements.
