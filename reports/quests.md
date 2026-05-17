# quests — SEO + GEO Audit

**Target**: https://quests.intelli-verse-x.ai  
**Audited**: 2026-05-17T15:49:11Z  
**HTTP**: 200 text/html; charset=utf-8

## SEO Findings
| Check | Result | Severity |
|---|---|---|
| title tag | ✓ Present: "Quests \| Earn Rewards" — clear, branded, under 60 chars | OK |
| meta description | ✓ Present: "Complete surveys, shop, discover, and play to earn rewards. Your one-stop destination for earning points and redeeming prizes." (145 chars) | OK |
| canonical | ✗ Missing — no `<link rel="canonical">` found | WARN |
| robots.txt | ✗ Returns 404 page instead of proper robots.txt | FAIL |
| sitemap.xml | ✗ Returns 404 — no XML sitemap available | FAIL |
| HSTS | ✓ Present: `max-age=63072000; includeSubDomains; preload` | OK |
| Open Graph | ✓ Present: og:title, og:description, og:site_name, og:type | OK |
| Twitter Card | ✓ Present: twitter:card (summary), twitter:title, twitter:description | OK |
| JSON-LD schema | ✗ Missing — no structured data markup | WARN |
| h1 count | ✓ Single h1: "Earn Rewards for Things You Already Do and Save While You Spend" | OK |
| lang attribute | ✓ Present: `<html lang="en">` | OK |
| CSP | ✓ Present: comprehensive Content-Security-Policy header | OK |
| X-Robots-Tag | ✗ Not present in headers | WARN |

## GEO Findings

**AI-answerability**: PASS — An AI assistant could confidently answer "what is quests.intelli-verse-x.ai for?" from the HTML alone. The page clearly states it's a rewards platform where users earn points through surveys, shopping, games, and other activities, then redeem for prizes/cashback.

**LLM-friendliness score**: 6/10

**Why**: The page has good fundamentals (clear title, description, single h1, semantic nav), but misses key LLM optimization opportunities:
- ✓ Strong hero copy explaining value prop
- ✓ Visible feature categories (Surveys, Games, Shop & Earn, Travel, etc.)
- ✓ Social proof stats ($2.4M paid, 4.9/5 rating)
- ✗ No FAQ section for common queries
- ✗ No JSON-LD structured data (WebSite, Organization, Product)
- ✗ No breadcrumbs or hierarchical structure markup
- ✗ Body content is sparse — many empty placeholder divs with just `min-height:40vh`
- ✗ No explicit use-case descriptions (e.g., "how it works" section)

**Top 3 fixes (ranked)**:

1. **Add robots.txt and sitemap.xml** (CRITICAL) — Currently both return 404. Create valid `/robots.txt` allowing all crawlers and `/sitemap.xml` with all public pages. This is blocking proper indexing.

2. **Add JSON-LD structured data** — Implement Organization schema with logo, contact, sameAs (social links), and WebApplication schema describing the rewards platform. This helps AI systems understand the entity and its offerings.

3. **Add canonical URLs** — Every page should have `<link rel="canonical" href="https://quests.intelli-verse-x.ai/">` to prevent duplicate content issues and clearly signal preferred URLs to crawlers.

## Recommended Actions (concrete patches)

1. **Create `/public/robots.txt`**:
   ```
   User-agent: *
   Allow: /
   Sitemap: https://quests.intelli-verse-x.ai/sitemap.xml
   ```

2. **Generate and serve `/public/sitemap.xml`** with all public routes (homepage, auth pages, terms, privacy, etc.)

3. **Add canonical tag to layout/metadata** (Next.js app):
   ```typescript
   // app/layout.tsx or page.tsx metadata
   export const metadata = {
     // ... existing metadata
     alternates: {
       canonical: 'https://quests.intelli-verse-x.ai',
     },
   }
   ```

4. **Add JSON-LD schema to homepage** (in `app/page.tsx` or layout):
   ```jsx
   <script type="application/ld+json">
   {
     "@context": "https://schema.org",
     "@type": "WebApplication",
     "name": "Quests",
     "url": "https://quests.intelli-verse-x.ai",
     "description": "Complete surveys, shop, discover, and play to earn rewards.",
     "applicationCategory": "LifestyleApplication",
     "offers": {
       "@type": "Offer",
       "price": "0",
       "priceCurrency": "USD"
     },
     "aggregateRating": {
       "@type": "AggregateRating",
       "ratingValue": "4.9",
       "ratingCount": "10000"
     }
   }
   </script>
   ```

5. **Add FAQ section with schema markup** to answer common queries like "How do I earn points?", "What rewards are available?", "Is it free to join?"

6. **Consider adding X-Robots-Tag** header for additional crawl control if needed (currently absent but may be intentional)
