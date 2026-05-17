# qrstudio — SEO + GEO Audit

**Target**: https://qrstudio.intelli-verse-x.ai  
**Audited**: 2026-05-17T15:51:00Z  
**HTTP**: 200 text/html

## SEO Findings
| Check | Result | Severity |
|---|---|---|
| title tag | ✓ Present: "QR Studio" — concise but could be more descriptive (e.g., "QR Studio \| Dynamic QR Code Generator") | WARN |
| meta description | ✓ Present: "QR Studio - design dynamic + static QR codes, build landing pages, track scans." (90 chars) — good but could expand to ~155 chars | OK |
| canonical | ✗ Missing — no `<link rel="canonical">` | WARN |
| robots.txt | ✗ Returns SPA HTML instead of proper robots.txt (SPA fallback route issue) | FAIL |
| sitemap.xml | ✗ Returns SPA HTML instead of XML sitemap (SPA fallback route issue) | FAIL |
| HSTS | ✗ Missing — no Strict-Transport-Security header | FAIL |
| Open Graph | ✗ Missing — no og:* meta tags | FAIL |
| Twitter Card | ✗ Missing — no twitter:* meta tags | FAIL |
| JSON-LD schema | ✗ Missing — no structured data | WARN |
| h1 count | ⚠ Cannot assess — SPA with empty `<div id="root">`, content rendered client-side | FAIL |
| lang attribute | ✓ Present: `<html lang="en">` | OK |
| CSP | ✗ Missing — no Content-Security-Policy header | WARN |
| X-Robots-Tag | ✗ Not present | WARN |
| Server-side rendering | ✗ CRITICAL: Client-side only SPA with empty shell — search engines see no content | FAIL |

## GEO Findings

**AI-answerability**: FAIL — If a user asked an AI assistant "what is qrstudio.intelli-verse-x.ai for?", it could NOT confidently answer from the HTML alone. The server HTML contains only meta description text ("design dynamic + static QR codes, build landing pages, track scans") but no actual content, features, pricing, or use-case examples. All content is client-side JavaScript.

**LLM-friendliness score**: 2/10

**Why**: This is a client-side SPA (Single Page Application) with virtually zero server-rendered content. Critical deficiencies:
- ✗ Empty `<div id="root">` — all content loaded via JavaScript
- ✗ No server-side rendering (SSR) or static generation (SSG)
- ✗ robots.txt and sitemap.xml return HTML instead of proper files (routing misconfiguration)
- ✗ No Open Graph or Twitter Card metadata
- ✗ No JSON-LD structured data
- ✗ No HSTS security header
- ✗ No h1, h2, or any semantic HTML structure visible to crawlers
- ✓ Has basic title and meta description (only positives)

Search engine crawlers and AI systems that don't execute JavaScript will see an essentially blank page. Modern crawlers (Google, Bing) do execute JS, but with delays and limitations. AI knowledge systems may not index this content at all.

**Top 3 fixes (ranked)**:

1. **Implement Server-Side Rendering (SSR) or Static Site Generation (SSG)** (CRITICAL) — Migrate to a framework that provides SSR (Next.js, Remix, SvelteKit, Nuxt) or pre-render key pages. This is the #1 blocker for SEO/GEO. Without server-rendered HTML, the site is invisible to most AI indexing and weakened for search.

2. **Fix robots.txt and sitemap.xml routing** (CRITICAL) — These files are being caught by the SPA fallback route. Configure server (nginx) to serve these as static files BEFORE the SPA route:
   ```nginx
   location = /robots.txt { try_files /robots.txt =404; }
   location = /sitemap.xml { try_files /sitemap.xml =404; }
   ```
   Then create proper `/robots.txt` and `/sitemap.xml` files in the public directory.

3. **Add comprehensive metadata to the HTML shell** — Even before implementing SSR, enhance the `<head>` with:
   - Canonical URL
   - Open Graph tags (og:title, og:description, og:image, og:url, og:type)
   - Twitter Card tags
   - JSON-LD WebApplication schema describing the QR code tool
   - Longer, keyword-rich meta description (~155 chars)

## Recommended Actions (concrete patches)

**Immediate (can do without SSR migration):**

1. **Fix SPA routing for static files** — Update nginx config:
   ```nginx
   server {
       # ... existing config
       
       # Serve static SEO files directly
       location = /robots.txt {
           root /path/to/public;
           try_files /robots.txt =404;
       }
       
       location = /sitemap.xml {
           root /path/to/public;
           try_files /sitemap.xml =404;
       }
       
       # SPA fallback for all other routes
       location / {
           try_files $uri $uri/ /index.html;
       }
   }
   ```

2. **Create `public/robots.txt`**:
   ```
   User-agent: *
   Allow: /
   Sitemap: https://qrstudio.intelli-verse-x.ai/sitemap.xml
   ```

3. **Create basic `public/sitemap.xml`**:
   ```xml
   <?xml version="1.0" encoding="UTF-8"?>
   <urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
     <url>
       <loc>https://qrstudio.intelli-verse-x.ai/</loc>
       <changefreq>weekly</changefreq>
       <priority>1.0</priority>
     </url>
   </urlset>
   ```

4. **Enhance `index.html` metadata** (add to `<head>`):
   ```html
   <link rel="canonical" href="https://qrstudio.intelli-verse-x.ai/" />
   
   <!-- Open Graph -->
   <meta property="og:title" content="QR Studio | Dynamic QR Code Generator & Landing Page Builder" />
   <meta property="og:description" content="Design dynamic and static QR codes, build custom landing pages, and track scan analytics. Professional QR code management platform." />
   <meta property="og:type" content="website" />
   <meta property="og:url" content="https://qrstudio.intelli-verse-x.ai/" />
   <meta property="og:image" content="https://qrstudio.intelli-verse-x.ai/og-image.png" />
   
   <!-- Twitter Card -->
   <meta name="twitter:card" content="summary_large_image" />
   <meta name="twitter:title" content="QR Studio | Dynamic QR Code Generator" />
   <meta name="twitter:description" content="Design, track, and manage dynamic QR codes with custom landing pages." />
   
   <!-- JSON-LD -->
   <script type="application/ld+json">
   {
     "@context": "https://schema.org",
     "@type": "WebApplication",
     "name": "QR Studio",
     "url": "https://qrstudio.intelli-verse-x.ai",
     "description": "Design dynamic and static QR codes, build landing pages, track scans.",
     "applicationCategory": "DesignApplication",
     "offers": {
       "@type": "Offer",
       "price": "0",
       "priceCurrency": "USD"
     }
   }
   </script>
   ```

5. **Add security headers** (nginx):
   ```nginx
   add_header Strict-Transport-Security "max-age=63072000; includeSubDomains; preload" always;
   add_header X-Content-Type-Options "nosniff" always;
   add_header X-Frame-Options "SAMEORIGIN" always;
   ```

**Long-term (recommended for full SEO/GEO optimization):**

6. **Migrate to SSR/SSG framework** — Consider Next.js (React), SvelteKit, or Nuxt (Vue). Pre-render at least the homepage, pricing, and feature pages. This is essential for robust AI/LLM discoverability.

7. **Add pre-rendered FAQ section** with FAQPage schema markup answering "What is a dynamic QR code?", "How do I track scans?", "Is it free?", etc.
