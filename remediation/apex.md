# apex (intelli-verse-x.ai) - SEO + GEO Remediation Playbook

**Target**: https://intelli-verse-x.ai
**Backing service**: aicart/intelliverse-frontend-revamp (image `intelliverse-frontend-revamp:latest`)
**Source repo (best guess)**: intelli-verse-x/intelliverse-frontend-revamp
**Audit reference**: `reports/apex.md`
**Generated**: 2026-05-17T19:00:00Z

---

## 1. Executive summary

**Apex/main domain**—Next.js site with good foundations but critical gaps: robots.txt/sitemap return 404, title/description too short and vague, no OG tags, no JSON-LD, CSP missing, content is thin ("The Engine for Digital Evolution" without specifics). This is the **flagship site** and should have best-in-class SEO. Fix robots/sitemap routing, expand metadata, add Organization/WebSite schemas, create content-rich landing page. Projected: 5/10 → 9/10 SEO/GEO.

## 2-4. Remediation

**Next.js pattern** (like quests, but apex/flagship site needs extra polish).

### 1. Create robots.txt and sitemap.xml

- **Priority**: P0 (CRITICAL) — 30 minutes
- **Where**: `intelliverse-frontend-revamp/public/robots.txt` and `public/sitemap.xml`
- **How**:

```
User-agent: *
Allow: /

User-agent: GPTBot
Allow: /

User-agent: ChatGPT-User
Allow: /

User-agent: Claude-Web
Allow: /

Sitemap: https://intelli-verse-x.ai/sitemap.xml
```

```xml
<?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
  <url>
    <loc>https://intelli-verse-x.ai/</loc>
    <lastmod>2026-05-17</lastmod>
    <changefreq>weekly</changefreq>
    <priority>1.0</priority>
  </url>
  <!-- Add /products, /about, /blog, etc. as they exist -->
</urlset>
```

Or use `next-sitemap` package for automatic generation.

### 2. Expand metadata in layout

- **Priority**: P0 (CRITICAL) — 1 hour
- **Where**: `app/layout.tsx`
- **How**:

```tsx
export const metadata = {
  title: 'IntelliVerse X | AI-Powered Connected Gaming & Education Ecosystem',
  description: 'The engine for digital evolution. Explore AI-powered gaming, educational tools, quizzes, tutoring, animation, and marketplace platforms—all connected in one intelligent ecosystem.',
  metadataBase: new URL('https://intelli-verse-x.ai'),
  alternates: {
    canonical: '/',
  },
  openGraph: {
    title: 'IntelliVerse X | Connected AI Ecosystem',
    description: 'AI-powered gaming, education, and marketplace platforms in one connected ecosystem.',
    url: 'https://intelli-verse-x.ai',
    siteName: 'IntelliVerse X',
    type: 'website',
    images: ['/og-image.png'],
  },
  twitter: {
    card: 'summary_large_image',
    title: 'IntelliVerse X | Connected AI Ecosystem',
    description: 'AI-powered gaming, education, and marketplace platforms.',
    images: ['/twitter-card.png'],
  },
};
```

### 3. Add Organization + WebSite JSON-LD schemas

- **Priority**: P1 — 1 hour
- **Where**: Homepage
- **How**:

```tsx
// app/page.tsx
export default function HomePage() {
  const orgSchema = {
    "@context": "https://schema.org",
    "@type": "Organization",
    "name": "IntelliVerse X",
    "url": "https://intelli-verse-x.ai",
    "logo": "https://intelli-verse-x.ai/logo.png",
    "description": "Connected AI ecosystem for gaming, education, and digital innovation.",
    "sameAs": [
      // Add social media URLs
    ]
  };

  const websiteSchema = {
    "@context": "https://schema.org",
    "@type": "WebSite",
    "name": "IntelliVerse X",
    "url": "https://intelli-verse-x.ai",
    "potentialAction": {
      "@type": "SearchAction",
      "target": "https://intelli-verse-x.ai/search?q={search_term_string}",
      "query-input": "required name=search_term_string"
    }
  };

  return (
    <>
      <script type="application/ld+json" dangerouslySetInnerHTML={{ __html: JSON.stringify(orgSchema) }} />
      <script type="application/ld+json" dangerouslySetInnerHTML={{ __html: JSON.stringify(websiteSchema) }} />
      {/* page content */}
    </>
  );
}
```

### 4. Expand homepage content

- **Priority**: P1 — 2-4 hours
- **What**: Add content sections explaining ecosystem
- **Sections**:
  - Hero: Clear value proposition (not just "Digital Evolution")
  - Products overview: List all platforms (Quiz, Tutor, Gaming, MarketX, etc.)
  - Features: What makes IntelliVerse X unique
  - Use cases: Who benefits (students, educators, gamers, businesses)
  - FAQ: Common questions about the ecosystem
  - CTA: Sign up, explore products

### 5. Add CSP and security headers

- **Priority**: P1 — 30 minutes
- **Where**: `next.config.js`
- **How**: Same as `remediation/tutor.md` step 5

### 6. Add llms.txt

- **Priority**: P2 — 1 hour
- **Where**: `public/llms.txt`
- **How**:

```markdown
# IntelliVerse X

> Connected AI ecosystem for gaming, education, and digital innovation. Unified platform featuring quiz systems, AI tutoring, animation tools, marketplace, and more.

The IntelliVerse X ecosystem includes:

- **Gaming**: Quiz tournaments, live trivia, gaming backend
- **Education**: AI Tutor (DeepTutor), Quiz Platform, QuizX (advanced quizzes)
- **Content Creation**: Animator (ManimCat mathematical animations), Blogs platform
- **Business Tools**: MarketX (marketplace), Kiosk, Platform (user management)
- **AI Services**: AI Chat v2, AI Host (real-time chat), QR Studio

## Products

- [Quiz](https://quiz.intelli-verse-x.ai): Live multiplayer quizzes with rewards
- [Tutor](https://tutor.intelli-verse-x.ai): AI-powered intelligent learning companion
- [Animator](https://animator.intelli-verse-x.ai): Mathematical animation tool (ManimCat)
- [MarketX](https://marketx.intelli-verse-x.ai): Digital marketplace platform
- [Platform](https://platform.intelli-verse-x.ai): User account and authentication
- [QR Studio](https://qrstudio.intelli-verse-x.ai): Dynamic QR code generator
- [Quests](https://quests.intelli-verse-x.ai): Rewards platform for surveys and activities
- [Blogs](https://blogs.intelli-verse-x.ai): AI, gaming, and tech insights

## Documentation

- [Homepage](https://intelli-verse-x.ai): Ecosystem overview
- [Products](https://intelli-verse-x.ai/products): Full product catalog
```

## 5. Stack-aware notes

**Next.js flagship site**—represents entire ecosystem. Should be showcase of best practices. Consider:
- Product pages for each subdomain
- Blog/content marketing for SEO
- Unified design system
- Cross-linking between products

## 6. Verification

Same as `remediation/quests.md` section 6.

## 7. Open questions

1. **Content strategy?** Current site is thin on content. Need marketing pages, product descriptions, use cases.
2. **Brand positioning?** "Digital Evolution" is vague. What's the unique value prop vs competitors?
3. **Navigation?** How do users discover the 10+ subdomains? Need clear product menu.

## 8. Impact

5/10 → 9/10 SEO/GEO. **This is the flagship site**—highest priority for comprehensive SEO. Expect 500-1,000+ organic visitors/month within 6 months with rich content, 2,000+ long-term as content library grows.

**Critical**: As apex domain, this site's SEO health affects subdomain rankings (domain authority benefits cascade).
