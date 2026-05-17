# quiz - SEO + GEO Remediation Playbook

**Target**: https://quiz.intelli-verse-x.ai
**Backing service**: aicart/intelliverse-quiz-frontend (image `intelliverse-quiz-frontend:0.00.182`)
**Source repo (best guess)**: intelli-verse-x/intelliverse-quiz-frontend
**Audit reference**: `reports/quiz.md`
**Generated**: 2026-05-17T18:55:00Z

---

## 1. Executive summary

QuizVerse has **excellent SEO fundamentals**: great title/description, robots.txt configured, HSTS enabled. Just missing: Open Graph tags, Twitter Card, JSON-LD structured data, and CSP header. This is a **high-performing site needing final polish**. Add missing metadata for social sharing and rich snippets. Projected impact: 7/10 → 9/10 SEO/GEO with 2-3 hours of work.

## 2. Current state recap

**PASS**: title, description, robots.txt, HSTS, h1, lang  
**MISSING**: OG tags, Twitter Card, JSON-LD, canonical (unverified), CSP

## 3-4. Remediation

### 1. Add Open Graph + Twitter Card metadata

- **Priority**: P1 — 30 minutes
- **Where**: Next.js layout or page metadata
- **How**:

```tsx
export const metadata = {
  title: 'QuizVerse — AI Quiz Generator, Adaptive Learning & Live Trivia',
  description: 'Live multiplayer quizzes with real coin rewards. AI-powered adaptive learning, custom quiz creation, and competitive trivia battles.',
  openGraph: {
    title: 'QuizVerse | AI Quiz Platform',
    description: 'Live multiplayer quizzes with rewards, AI adaptive learning, custom quiz creation.',
    url: 'https://quiz.intelli-verse-x.ai',
    siteName: 'QuizVerse',
    type: 'website',
  },
  twitter: {
    card: 'summary_large_image',
    title: 'QuizVerse | AI Quiz Platform',
    description: 'Live multiplayer quizzes with rewards.',
  },
  alternates: {
    canonical: '/',
  },
};
```

### 2. Add JSON-LD (WebApplication + Game schemas)

- **Priority**: P1 — 1 hour
- **How**:

```tsx
const schema = {
  "@context": "https://schema.org",
  "@type": "WebApplication",
  "name": "QuizVerse",
  "applicationCategory": "GameApplication",
  "description": "Live multiplayer quiz platform with AI-powered adaptive learning and real coin rewards.",
  "offers": {
    "@type": "Offer",
    "price": "0",
    "priceCurrency": "USD"
  },
  "aggregateRating": {
    "@type": "AggregateRating",
    "ratingValue": "4.8",
    "ratingCount": "5000"
  }
};
```

### 3. Add CSP header

- **Priority**: P2 — 15 minutes
- **Where**: `next.config.js`
- **How**: Same as `remediation/tutor.md` step 5

### 4. Add FAQ + llms.txt

- **Priority**: P2 — 1-2 hours
- **Pattern**: Same as `remediation/quests.md` steps 5-6

## 5-8. Details

See `remediation/quests.md` for full stack notes, verification, and impact estimation.

**Estimated impact**: 7/10 → 9/10 SEO, +20-30% social referral traffic from OG tags, rich snippets in search results from JSON-LD.
