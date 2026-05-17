# products — SEO + GEO Audit

**Target**: https://products.intelli-verse-x.ai  
**Audited**: 2026-05-17T15:53:44Z  
**HTTP**: 404 Not Found

## SEO Findings
| Check | Result | Severity |
|---|---|---|
| HTTP accessibility | ✗ CRITICAL: Returns HTTP 404 with empty body — subdomain exists but serves no content | FAIL |
| title tag | ✗ N/A — no HTML document returned | FAIL |
| meta description | ✗ N/A — no HTML document returned | FAIL |
| canonical | ✗ N/A — no HTML document returned | FAIL |
| robots.txt | ✗ N/A — cannot audit | FAIL |
| sitemap.xml | ✗ N/A — cannot audit | FAIL |
| HSTS | ✗ N/A — no response headers visible | FAIL |
| Open Graph | ✗ N/A — no HTML document returned | FAIL |
| Twitter Card | ✗ N/A — no HTML document returned | FAIL |
| JSON-LD schema | ✗ N/A — no HTML document returned | FAIL |
| h1 count | ✗ N/A — no HTML document returned | FAIL |
| lang attribute | ✗ N/A — no HTML document returned | FAIL |
| CSP | ✗ N/A — no response headers visible | FAIL |

## GEO Findings

**AI-answerability**: FAIL — An AI assistant asked "what is products.intelli-verse-x.ai for?" could NOT answer. The endpoint returns HTTP 404 with an empty response body, providing zero information.

**LLM-friendliness score**: 0/10

**Why**: This subdomain is completely non-functional. The DNS resolves and TLS connects, but the web server returns 404 with no content. From an SEO/GEO perspective:

- ✗ HTTP 404 status prevents any indexing
- ✗ Empty response body — not even a custom 404 page
- ✗ No metadata, no HTML, no text content whatsoever
- ✗ Search engines will mark this as a dead link
- ✗ AI systems have zero information about this service
- ✗ Users who visit see only a blank page or browser default 404

**Status**: This subdomain appears to be either:
1. **Under construction** — not yet deployed
2. **Misconfigured** — backend not properly connected
3. **Abandoned** — previously active, now defunct

**Top 3 fixes (ranked)**:

1. **Deploy the products application** (CRITICAL) — If this subdomain is meant to be active, deploy the actual application/site to the web server. Ensure the backend is properly configured and responding.

2. **Serve a custom 404 page with context** — If the site is under construction or the specific path doesn't exist, return an informative HTML 404:
   ```html
   <!DOCTYPE html>
   <html lang="en">
   <head>
       <meta charset="UTF-8">
       <title>Products | Intelli-Verse-X</title>
       <meta name="description" content="Products catalog - coming soon">
   </head>
   <body>
       <h1>Products - Coming Soon</h1>
       <p>Our products catalog is under development.</p>
       <a href="https://intelli-verse-x.ai">Return to main site</a>
   </body>
   </html>
   ```

3. **If subdomain is not needed, remove DNS** — If products.intelli-verse-x.ai is not part of the roadmap:
   - Remove the DNS A/AAAA record to prevent 404s
   - Or redirect to the main domain: `301 → https://intelli-verse-x.ai/products`

## Recommended Actions (concrete patches)

**If site should be active:**

1. **Deploy application** — Check deployment pipeline, ensure app is built and served:
   ```bash
   # Example: verify deployment
   # Check if service is running
   # Verify nginx/apache config points to correct document root
   # Review application logs for startup errors
   ```

2. **Verify server configuration** — Ensure vhost/serverblock is properly configured:
   ```nginx
   # Example nginx config
   server {
       listen 443 ssl http2;
       server_name products.intelli-verse-x.ai;
       
       root /var/www/products-app/dist;  # Verify this path exists
       index index.html;
       
       location / {
           try_files $uri $uri/ /index.html;
       }
   }
   ```

**If site is under construction:**

3. **Serve "Coming Soon" page**:
   ```html
   <!DOCTYPE html>
   <html lang="en">
   <head>
       <meta charset="UTF-8">
       <meta name="viewport" content="width=device-width, initial-scale=1.0">
       <title>Products | Coming Soon</title>
       <meta name="description" content="Intelli-Verse-X Products catalog - launching soon">
       <meta name="robots" content="noindex, nofollow">
       <link rel="canonical" href="https://products.intelli-verse-x.ai/">
   </head>
   <body>
       <main style="text-align: center; padding: 50px;">
           <h1>Products Catalog - Coming Soon</h1>
           <p>We're building something exciting. Check back soon!</p>
           <a href="https://intelli-verse-x.ai">Visit main site</a>
       </main>
   </body>
   </html>
   ```

**If site is not needed:**

4. **Redirect to main domain**:
   ```nginx
   server {
       listen 443 ssl http2;
       server_name products.intelli-verse-x.ai;
       return 301 https://intelli-verse-x.ai/products$request_uri;
   }
   ```

5. **Or remove DNS entirely** if no products section exists on main site.

**Current Status**: Site is completely inaccessible and provides no value for SEO, GEO, or user experience. Requires immediate action to either deploy content, show construction page, or redirect/remove.
