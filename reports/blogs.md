# blogs — SEO + GEO Audit

**Target**: https://blogs.intelli-verse-x.ai  
**Audited**: 2026-05-17T17:38:40Z  
**HTTP**: 200 text/html; charset=UTF-8

## SEO Findings
| Check | Result | Severity |
|---|---|---|
| title tag | ✗ Empty — `<title></title>` with no content (WordPress site not configured) | FAIL |
| meta description | ✗ Missing — no meta description tag | FAIL |
| canonical | ✗ Missing — no `<link rel="canonical">` | WARN |
| robots.txt | ✓ Present and properly configured — disallows /wp-admin/, allows admin-ajax.php, points to wp-sitemap.xml | OK |
| sitemap.xml | ✓ Present — WordPress sitemap at /wp-sitemap.xml | OK |
| HSTS | ✗ Missing — no Strict-Transport-Security header | FAIL |
| Open Graph | ✗ Missing — no og:* meta tags | FAIL |
| Twitter Card | ✗ Missing — no twitter:* meta tags | FAIL |
| JSON-LD schema | ✗ Missing — no structured data (should have Blog, BlogPosting schemas) | FAIL |
| h1 count | ⚠ Cannot assess in homepage — WordPress theme uses dynamic rendering | WARN |
| lang attribute | ✓ Present: `<html lang="en-US">` | OK |
| CSP | ✗ Missing — no Content-Security-Policy header | WARN |
| X-Robots-Tag | ✗ Not present | WARN |
| Server-side rendering | ✓ GOOD: WordPress with server-side rendering — full content visible in HTML | OK |
| Cache headers | ✗ Missing — no Cache-Control headers (default WordPress, not optimized) | WARN |
| RSS feeds | ✓ Present — /feed/ and /comments/feed/ properly configured | OK |

## GEO Findings

**AI-answerability**: PARTIAL — If a user asked an AI assistant "what is blogs.intelli-verse-x.ai for?", it could partially answer from the HTML alone. The page content shows it's a blog with AI/business articles (titles like "AI-Powered Content Repurposing", "Generative AI Lead Generation", "AI for Business Resilience"), but there's NO site title or description in the meta tags. An AI would have to infer the purpose from article titles and content rather than from explicit metadata.

**LLM-friendliness score**: 4/10

**Why**: This is a WordPress blog with server-rendered content, which is good for crawlability. However, it has major SEO/metadata deficiencies:

✓ **Strengths**:
- Server-side rendering (full WordPress HTML)
- Multiple blog posts with substantial content
- Proper robots.txt and sitemap.xml
- RSS feeds configured
- Articles have dates and clear titles
- Content is AI/business-focused and substantial

✗ **Weaknesses**:
- CRITICAL: Empty `<title>` tag (WordPress not fully configured)
- No meta description
- No Open Graph or Twitter Card metadata
- No JSON-LD structured data (Blog, BlogPosting schemas)
- No canonical URLs
- No HSTS security header
- No cache headers
- No site identity/branding in HTML head
- Missing WordPress SEO plugin (Yoast, Rank Math, etc.)

The site is technically crawlable but lacks all the metadata that makes content discoverable and shareable. Search engines and AI systems will see the content but won't have proper context about the site itself.

**Top 3 fixes (ranked)**:

1. **Configure WordPress site identity and install SEO plugin** (CRITICAL) — The empty title tag indicates WordPress isn't fully set up:
   - Set Site Title in Settings → General
   - Set Tagline (meta description baseline)
   - Install Yoast SEO or Rank Math SEO plugin
   - This will automatically add titles, meta descriptions, Open Graph, Twitter Cards, and JSON-LD to all pages

2. **Add comprehensive metadata via SEO plugin** (HIGH) — Once plugin is installed:
   - Configure homepage title: "IntelliverseX Blog | AI & Business Automation Insights"
   - Write homepage meta description (~155 chars)
   - Enable Open Graph and Twitter Card metadata
   - Enable JSON-LD schema (Blog, Organization, BlogPosting)
   - Set canonical URLs
   - Configure article metadata templates

3. **Add security headers and performance optimization** (MEDIUM):
   - Add HSTS header via .htaccess or WordPress Security plugin
   - Install caching plugin (WP Super Cache, W3 Total Cache)
   - Add Content-Security-Policy header
   - Consider CDN integration for static assets

## Recommended Actions (concrete patches)

**Immediate (WordPress configuration):**

1. **Set Site Identity** (WordPress admin → Settings → General):
   ```
   Site Title: IntelliverseX Blog
   Tagline: AI-Powered Business Automation & Digital Transformation Insights
   ```

2. **Install Yoast SEO plugin** (most popular WordPress SEO plugin):
   ```bash
   # Via WP-CLI if available:
   wp plugin install wordpress-seo --activate
   
   # Or via WordPress admin:
   # Plugins → Add New → Search "Yoast SEO" → Install Now → Activate
   ```

3. **Configure Yoast SEO**:
   - Go to SEO → General → Enable all features
   - SEO → Search Appearance → Homepage:
     - Title: `IntelliverseX Blog | AI & Business Automation Insights`
     - Meta description: `Discover cutting-edge AI strategies, business automation guides, and digital transformation insights. Expert articles on generative AI, hyperautomation, and future-proofing your business.`
   - SEO → Social:
     - Enable Open Graph and Twitter Card metadata
     - Upload social share images (og-image: 1200x630px)
   - SEO → Schema → Enable Organization and Blog schemas:
     ```json
     {
       "@context": "https://schema.org",
       "@type": "Blog",
       "name": "IntelliverseX Blog",
       "url": "https://blogs.intelli-verse-x.ai",
       "description": "AI-Powered Business Automation & Digital Transformation Insights",
       "publisher": {
         "@type": "Organization",
         "name": "IntelliverseX",
         "url": "https://intelli-verse-x.ai"
       }
     }
     ```

4. **Alternative: Rank Math SEO** (lighter, more features):
   ```bash
   wp plugin install seo-by-rank-math --activate
   ```
   
   Configure similarly with Setup Wizard.

5. **Add security headers** (via .htaccess or Really Simple SSL plugin):
   
   **Option A: .htaccess** (in WordPress root directory):
   ```apache
   # Add to .htaccess
   <IfModule mod_headers.c>
       Header always set Strict-Transport-Security "max-age=63072000; includeSubDomains; preload"
       Header always set X-Content-Type-Options "nosniff"
       Header always set X-Frame-Options "SAMEORIGIN"
       Header always set X-XSS-Protection "1; mode=block"
       Header always set Referrer-Policy "strict-origin-when-cross-origin"
   </IfModule>
   ```

   **Option B: Plugin**:
   ```bash
   wp plugin install really-simple-ssl --activate
   # Enable HSTS in plugin settings
   ```

6. **Install caching plugin**:
   ```bash
   wp plugin install wp-super-cache --activate
   ```
   
   Configure: Settings → WP Super Cache → Caching On, Recommended settings.

7. **Optimize blog post templates** — Ensure theme or custom template includes:
   - Article schema markup (Yoast handles this automatically)
   - Author information with rel="author"
   - Published/modified dates
   - Breadcrumb navigation
   - Related posts for internal linking

**Long-term (content optimization):**

8. **Audit existing posts** — Go through each blog post and:
   - Add focus keyword (Yoast provides optimization suggestions)
   - Write compelling meta descriptions (145-155 chars each)
   - Add internal links between related articles
   - Optimize images (alt text, compression, WebP format)
   - Add FAQ schema to articles with Q&A content

9. **Create cornerstone content** — Identify 3-5 main topic pillars:
   - AI Automation
   - Business Transformation
   - Content Marketing
   - Lead Generation
   
   Create comprehensive guides (2000+ words) for each, then link related articles to these cornerstones.

10. **Add FAQ page with FAQPage schema** — Create a dedicated FAQ page answering:
    - "What is IntelliverseX?"
    - "What topics does the blog cover?"
    - "How can AI help my business?"
    - etc.

11. **Enable WordPress REST API enhancements** for better AI/LLM discoverability:
    ```bash
    wp plugin install wp-rest-api-controller --activate
    ```

12. **Consider migrating to headless WordPress + Next.js** (long-term, optional):
    - Keep WordPress as CMS (backend only)
    - Build frontend with Next.js for better performance, SSR control
    - Significantly improves SEO/GEO scores and page speed

**Quick wins (can do today):**

- Set Site Title and Tagline (5 minutes)
- Install and configure Yoast SEO (15 minutes)
- Add .htaccess security headers (5 minutes)
- Install caching plugin (10 minutes)
- Update 3-5 top posts with proper meta descriptions (30 minutes)

**Expected impact**: After implementing these fixes, the LLM-friendliness score should improve from 4/10 to 8/10, with proper site identity, full metadata, structured data, and security headers in place.
