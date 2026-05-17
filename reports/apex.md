# apex — SEO + GEO Audit

**Target**: https://intelli-verse-x.ai  
**Audited**: 2026-05-17T17:36:19Z  
**HTTP**: 200 text/html; charset=utf-8

## SEO Findings
| Check | Result | Severity |
|---|---|---|
| title tag | ✓ Present: "IntelliverseX" — brand-focused, could be more descriptive (e.g., "IntelliverseX \| Connected Gaming Ecosystem") | WARN |
| meta description | ✓ Present: "The Engine for Digital Evolution" (35 chars) — too short and vague, should expand to ~155 chars with keywords | WARN |
| canonical | ✗ Missing — no `<link rel="canonical">` | WARN |
| robots.txt | ✗ Returns Next.js 404 HTML instead of proper robots.txt | FAIL |
| sitemap.xml | ✗ Returns Next.js 404 HTML instead of XML sitemap | FAIL |
| HSTS | ✗ Missing — no Strict-Transport-Security header | FAIL |
| Open Graph | ✗ Missing — no og:* meta tags | FAIL |
| Twitter Card | ✗ Missing — no twitter:* meta tags | FAIL |
| JSON-LD schema | ✗ Missing — no structured data | WARN |
| h1 count | ⚠ Multiple h1 tags (2) — "Welcome to the" and "Intelliverse" should be combined into single h1 | WARN |
| lang attribute | ✓ Present: `<html lang="en">` | OK |
| CSP | ✗ Missing — no Content-Security-Policy header | WARN |
| X-Robots-Tag | ✗ Not present | WARN |
| Server-side rendering | ✓ GOOD: Next.js with server-side rendering — substantial content visible in HTML | OK |
| Cache headers | ✓ Present: s-maxage=31536000, x-nextjs-cache: HIT, x-nextjs-prerender: 1 | OK |

## GEO Findings

**AI-answerability**: PASS — If a user asked an AI assistant "what is intelli-verse-x.ai for?", it COULD answer from the HTML. The server-rendered content clearly describes: "Where games are built, worlds connect, and players unlock infinite experiences across one connected ecosystem." The page explains it's a gaming ecosystem with three engines (Game Worlds, Intelligence Layer, Monetization Engine) that connect multiple games.

**LLM-friendliness score**: 6/10

**Why**: This is a well-built Next.js site with server-side rendering, which is a major advantage over client-only SPAs. The content is substantial and descriptive. However, it lacks critical SEO/GEO enhancements:

✓ **Strengths**:
- Server-side rendering with Next.js (substantial HTML content)
- Clear value proposition and messaging
- Structured content hierarchy
- Descriptive h1 headings (though split into two)
- Proper cache headers

✗ **Weaknesses**:
- No robots.txt or sitemap.xml (routing misconfiguration)
- No Open Graph or Twitter Card metadata
- No JSON-LD structured data
- No HSTS security header
- Very short meta description (35 chars vs recommended 155)
- No canonical URL
- Multiple h1 tags (should be one)
- Generic title tag

AI indexers and search engines can crawl this site effectively due to SSR, but missing metadata limits social sharing, rich snippets, and structured data extraction.

**Top 3 fixes (ranked)**:

1. **Fix robots.txt and sitemap.xml routing** (CRITICAL) — These files return 404/Next.js error pages. Add Next.js public static files:
   - Create `public/robots.txt` 
   - Create `public/sitemap.xml` (or use next-sitemap for dynamic generation)
   - Next.js automatically serves files from `/public` at the root

2. **Add comprehensive metadata** (HIGH) — Enhance the HTML head with:
   - Expanded meta description (~155 chars with keywords: "gaming ecosystem", "cross-game", "developers")
   - Open Graph tags for social sharing
   - Twitter Card tags
   - Canonical URL
   - JSON-LD WebSite/Organization schema

3. **Add security headers and fix h1 structure** (MEDIUM):
   - Add HSTS header (Strict-Transport-Security)
   - Combine the two h1 tags into a single semantic h1
   - Consider adding Content-Security-Policy

## Recommended Actions (concrete patches)

**Immediate (Next.js public directory):**

1. **Create `public/robots.txt`**:
   ```
   User-agent: *
   Allow: /
   Sitemap: https://intelli-verse-x.ai/sitemap.xml
   
   User-agent: GPTBot
   Allow: /
   
   User-agent: ChatGPT-User
   Allow: /
   ```

2. **Create `public/sitemap.xml`** (or install next-sitemap):
   ```xml
   <?xml version="1.0" encoding="UTF-8"?>
   <urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
     <url>
       <loc>https://intelli-verse-x.ai/</loc>
       <changefreq>weekly</changefreq>
       <priority>1.0</priority>
     </url>
     <!-- Add other pages as needed -->
   </urlset>
   ```

   **Better**: Install and configure `next-sitemap`:
   ```bash
   npm install next-sitemap
   ```
   
   Add `next-sitemap.config.js`:
   ```js
   module.exports = {
     siteUrl: 'https://intelli-verse-x.ai',
     generateRobotsTxt: true,
     robotsTxtOptions: {
       policies: [
         { userAgent: '*', allow: '/' },
         { userAgent: 'GPTBot', allow: '/' },
       ],
     },
   }
   ```

3. **Enhance metadata in app/layout.tsx or page.tsx**:
   ```tsx
   export const metadata = {
     title: 'IntelliverseX | Connected Gaming Ecosystem',
     description: 'Build and play games across one connected ecosystem. Cross-game progression, AI-powered experiences, and developer monetization tools. Join the Intelliverse.',
     openGraph: {
       title: 'IntelliverseX | Connected Gaming Ecosystem',
       description: 'Where games are built, worlds connect, and players unlock infinite experiences across one ecosystem.',
       url: 'https://intelli-verse-x.ai',
       siteName: 'IntelliverseX',
       images: [
         {
           url: 'https://intelli-verse-x.ai/og-image.png',
           width: 1200,
           height: 630,
           alt: 'IntelliverseX Gaming Ecosystem',
         },
       ],
       locale: 'en_US',
       type: 'website',
     },
     twitter: {
       card: 'summary_large_image',
       title: 'IntelliverseX | Connected Gaming Ecosystem',
       description: 'Build and play games across one connected ecosystem.',
       images: ['https://intelli-verse-x.ai/og-image.png'],
     },
     alternates: {
       canonical: 'https://intelli-verse-x.ai',
     },
   }
   ```

4. **Add JSON-LD structured data** (in layout or page component):
   ```tsx
   <script
     type="application/ld+json"
     dangerouslySetInnerHTML={{
       __html: JSON.stringify({
         '@context': 'https://schema.org',
         '@type': 'WebSite',
         name: 'IntelliverseX',
         url: 'https://intelli-verse-x.ai',
         description: 'Connected gaming ecosystem for developers and players',
         potentialAction: {
           '@type': 'SearchAction',
           target: 'https://intelli-verse-x.ai/search?q={search_term_string}',
           'query-input': 'required name=search_term_string',
         },
       }),
     }}
   />
   ```

5. **Fix h1 structure** — Combine the two h1 tags into one:
   ```tsx
   <h1 className="text-4xl sm:text-5xl md:text-[6rem] lg:text-[7rem] font-extrabold tracking-tight mb-8">
     <span className="text-white">Welcome to the </span>
     <span className="text-transparent bg-clip-text bg-gradient-to-r from-[#00E5FF] to-[#8A2BE2]">
       Intelliverse
     </span>
   </h1>
   ```

6. **Add security headers** (in next.config.js):
   ```js
   const nextConfig = {
     async headers() {
       return [
         {
           source: '/:path*',
           headers: [
             {
               key: 'Strict-Transport-Security',
               value: 'max-age=63072000; includeSubDomains; preload'
             },
             {
               key: 'X-Content-Type-Options',
               value: 'nosniff'
             },
             {
               key: 'X-Frame-Options',
               value: 'SAMEORIGIN'
             },
           ],
         },
       ]
     },
   }
   ```

**Long-term (optional enhancements):**

7. **Add FAQ section with FAQPage schema** — Create an FAQ page answering common questions like "What is IntelliverseX?", "How do games connect?", "How do developers monetize?" with proper FAQPage JSON-LD schema.

8. **Implement dynamic sitemap generation** — Use next-sitemap's dynamic generation to automatically include all game pages, developer pages, etc.

9. **Add breadcrumb navigation and BreadcrumbList schema** for deeper pages to improve crawlability and search result display.
