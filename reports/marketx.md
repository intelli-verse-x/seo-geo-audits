# marketx — SEO + GEO Audit

**Target**: https://marketx.intelli-verse-x.ai  
**Audited**: 2026-05-17T17:39:58Z  
**HTTP**: 200 text/html

## SEO Findings
| Check | Result | Severity |
|---|---|---|
| title tag | ✓ Present: "Intelli Market X" — minimal but present | WARN |
| meta description | ✗ Missing — no meta description tag | FAIL |
| canonical | ✗ Missing — no `<link rel="canonical">` | WARN |
| robots.txt | ✗ Returns SPA HTML instead of proper robots.txt (routing misconfiguration) | FAIL |
| sitemap.xml | ✗ Likely returns SPA HTML (not checked but same routing issue) | FAIL |
| HSTS | ✗ Missing — no Strict-Transport-Security header | FAIL |
| Open Graph | ✗ Missing — no og:* meta tags | FAIL |
| Twitter Card | ✗ Missing — no twitter:* meta tags | FAIL |
| JSON-LD schema | ✗ Missing — no structured data | WARN |
| h1 count | ✗ CRITICAL: No h1 tags — empty `<div id="root">` | FAIL |
| lang attribute | ✓ Present: `<html lang="en">` | OK |
| CSP | ✗ Missing — no Content-Security-Policy header | WARN |
| X-Robots-Tag | ✗ Not present | WARN |
| Server-side rendering | ✗ CRITICAL: Client-side only Vite/React SPA with empty shell — only title visible in HTML | FAIL |
| Cache headers | ⚠ Partial — Last-Modified and ETag present, but no Cache-Control | WARN |

## GEO Findings

**AI-answerability**: FAIL — If a user asked an AI assistant "what is marketx.intelli-verse-x.ai for?", it could NOT answer from the HTML alone. The server HTML contains only the title ("Intelli Market X") and an empty `<div id="root">`. Absolutely no content, features, or description. All content is client-side JavaScript.

**LLM-friendliness score**: 1/10

**Why**: This is a minimal client-side SPA (Vite build) with essentially zero server-rendered content. Critical deficiencies:
- ✗ Empty `<div id="root">` — all content loaded via JavaScript
- ✗ No server-side rendering (SSR) or static generation (SSG)
- ✗ robots.txt returns HTML instead of proper file (routing misconfiguration)
- ✗ No meta description
- ✗ No Open Graph or Twitter Card metadata
- ✗ No JSON-LD structured data
- ✗ No HSTS security header
- ✗ No h1 or any semantic HTML structure
- ✗ HTML file is only 466 bytes (essentially empty shell)
- ✓ Has title tag (only positive)

Search engine crawlers and AI systems that don't execute JavaScript will see an essentially blank page. Even crawlers that execute JS (Google, Bing) do so with delays and limitations. AI knowledge systems will not index this content at all.

**Top 3 fixes (ranked)**:

1. **Implement Server-Side Rendering (SSR) or Static Site Generation (SSG)** (CRITICAL) — This is the #1 blocker for SEO/GEO. Options:
   - Migrate to Next.js (React with SSR)
   - Use Remix (React with SSR)
   - Implement Vite SSR plugin
   - Pre-render with react-snap or prerender.io
   - Without server-rendered HTML, the site is invisible to AI indexing and severely weakened for search.

2. **Add comprehensive metadata to HTML shell** (HIGH) — Even before SSR migration, enhance the `<head>`:
   - Add meta description (~155 chars explaining what Market X is)
   - Add Open Graph tags for social sharing
   - Add Twitter Card tags
   - Add canonical URL
   - Add JSON-LD WebApplication/Marketplace schema with description
   - This won't solve the content visibility issue but will help with basic discovery

3. **Fix robots.txt and sitemap.xml routing + add security headers** (HIGH):
   - Create `public/robots.txt` file (Vite serves from `public/` at root)
   - Create `public/sitemap.xml`
   - Add HSTS and other security headers via nginx config
   - Configure proper cache headers

## Recommended Actions (concrete patches)

**Immediate (critical SSR migration):**

1. **Option A: Migrate to Next.js** (recommended for React SPAs):
   ```bash
   npx create-next-app@latest marketx-app --typescript --app
   ```

   Migrate components:
   ```tsx
   // app/page.tsx - Server Component by default
   export const metadata = {
     title: 'Intelli Market X | AI-Powered Marketplace',
     description: 'Discover and shop AI-curated products, compare prices, and connect with sellers in the intelligent marketplace ecosystem.',
   }
   
   export default function HomePage() {
     return (
       <main>
         <h1>Intelli Market X</h1>
         <p>Your AI-Powered Marketplace...</p>
         {/* Content here */}
       </main>
     )
   }
   ```

2. **Option B: Implement Vite SSR** (if staying with Vite):
   ```bash
   npm install vite-plugin-ssr
   ```
   
   Configure `vite.config.js`:
   ```js
   import { defineConfig } from 'vite'
   import react from '@vitejs/plugin-react'
   import ssr from 'vite-plugin-ssr/plugin'
   
   export default defineConfig({
     plugins: [react(), ssr()]
   })
   ```
   
   Follow vite-plugin-ssr documentation to set up server-side rendering.

3. **Option C: Pre-render with react-snap** (quick fix, not full SSR):
   ```bash
   npm install --save-dev react-snap
   ```
   
   Add to `package.json`:
   ```json
   {
     "scripts": {
       "postbuild": "react-snap"
     },
     "reactSnap": {
       "include": ["/"],
       "minifyHtml": {
         "collapseWhitespace": false
       }
     }
   }
   ```

**Immediate (metadata enhancement - do this regardless of SSR approach):**

4. **Enhance `index.html` metadata**:
   ```html
   <!doctype html>
   <html lang="en">
     <head>
       <meta charset="UTF-8" />
       <link rel="icon" type="image/svg+xml" href="/favicon.png" />
       <meta name="viewport" content="width=device-width, initial-scale=1.0" />
       <title>Intelli Market X | AI-Powered Marketplace Platform</title>
       <meta name="description" content="Discover AI-curated products, compare prices across sellers, and shop smarter with Intelli Market X - your intelligent marketplace ecosystem." />
       <link rel="canonical" href="https://marketx.intelli-verse-x.ai/" />
       
       <!-- Open Graph -->
       <meta property="og:title" content="Intelli Market X | AI-Powered Marketplace" />
       <meta property="og:description" content="Shop smarter with AI-curated products and intelligent price comparison." />
       <meta property="og:type" content="website" />
       <meta property="og:url" content="https://marketx.intelli-verse-x.ai/" />
       <meta property="og:image" content="https://marketx.intelli-verse-x.ai/og-image.png" />
       
       <!-- Twitter Card -->
       <meta name="twitter:card" content="summary_large_image" />
       <meta name="twitter:title" content="Intelli Market X" />
       <meta name="twitter:description" content="AI-Powered Marketplace Platform" />
       <meta name="twitter:image" content="https://marketx.intelli-verse-x.ai/og-image.png" />
       
       <!-- JSON-LD -->
       <script type="application/ld+json">
       {
         "@context": "https://schema.org",
         "@type": "WebApplication",
         "name": "Intelli Market X",
         "url": "https://marketx.intelli-verse-x.ai",
         "description": "AI-powered marketplace for discovering and purchasing products with intelligent curation and price comparison",
         "applicationCategory": "ShoppingApplication",
         "operatingSystem": "Web",
         "offers": {
           "@type": "Offer",
           "price": "0",
           "priceCurrency": "USD"
         }
       }
       </script>
       
       <script type="module" crossorigin src="/assets/index-CeHpkuZh.js"></script>
       <link rel="stylesheet" crossorigin href="/assets/index-928rbDxf.css">
     </head>
     <body>
       <div id="root"></div>
       <noscript>
         <p>Intelli Market X requires JavaScript to run. Please enable JavaScript in your browser.</p>
       </noscript>
     </body>
   </html>
   ```

5. **Create `public/robots.txt`**:
   ```
   User-agent: *
   Allow: /
   Sitemap: https://marketx.intelli-verse-x.ai/sitemap.xml
   
   User-agent: GPTBot
   Allow: /
   
   User-agent: ChatGPT-User
   Allow: /
   ```

6. **Create `public/sitemap.xml`**:
   ```xml
   <?xml version="1.0" encoding="UTF-8"?>
   <urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
     <url>
       <loc>https://marketx.intelli-verse-x.ai/</loc>
       <changefreq>daily</changefreq>
       <priority>1.0</priority>
     </url>
     <!-- Add product pages here after SSR implementation -->
   </urlset>
   ```

7. **Add security headers** (nginx configuration):
   ```nginx
   server {
       listen 443 ssl http2;
       server_name marketx.intelli-verse-x.ai;
       
       # Static file serving
       location = /robots.txt {
           root /path/to/dist;
           add_header Cache-Control "public, max-age=86400";
       }
       
       location = /sitemap.xml {
           root /path/to/dist;
           add_header Cache-Control "public, max-age=3600";
       }
       
       # Security headers
       add_header Strict-Transport-Security "max-age=63072000; includeSubDomains; preload" always;
       add_header X-Content-Type-Options "nosniff" always;
       add_header X-Frame-Options "SAMEORIGIN" always;
       add_header Referrer-Policy "strict-origin-when-cross-origin" always;
       
       # Cache headers for static assets
       location /assets/ {
           add_header Cache-Control "public, max-age=31536000, immutable";
       }
       
       # SPA fallback
       location / {
           root /path/to/dist;
           try_files $uri $uri/ /index.html;
           add_header Cache-Control "no-cache, must-revalidate";
       }
   }
   ```

**Long-term (essential for competitive SEO/GEO):**

8. **Full SSR migration to Next.js or Remix** — Client-side SPAs are fundamentally incompatible with modern SEO/GEO requirements. This is not optional if you want:
   - AI knowledge system indexing (ChatGPT, Perplexity, etc.)
   - Strong organic search presence
   - Social media preview cards
   - Fast first contentful paint (Core Web Vitals)

9. **Implement Product schema** — Once SSR is in place, add Product schema to product pages:
   ```json
   {
     "@context": "https://schema.org",
     "@type": "Product",
     "name": "Product Name",
     "description": "...",
     "image": "...",
     "offers": {
       "@type": "Offer",
       "price": "...",
       "priceCurrency": "USD",
       "availability": "https://schema.org/InStock"
     }
   }
   ```

10. **Generate dynamic sitemap** — Use next-sitemap or similar to automatically generate sitemaps for all products, categories, and seller pages.

**Expected impact**: After implementing SSR + metadata, the LLM-friendliness score should improve from 1/10 to 7-8/10. Without SSR, the site will remain nearly invisible to AI indexing regardless of metadata improvements.
