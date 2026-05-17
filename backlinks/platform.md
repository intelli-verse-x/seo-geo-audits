# Backlink Strategy Playbook — platform (platform.intelli-verse-x.ai)

**Cross-reference**: [On-page remediation playbook](../remediation/platform.md) | [Existing PR #788](https://github.com/intelli-verse-x/Intelliverse-X-User-Webfrontend/pull/788)

---

## 1. Project snapshot

- **Hostname:** https://platform.intelli-verse-x.ai
- **GitHub repo:** intelli-verse-x/Intelliverse-X-User-Webfrontend
- **Existing PR (SEO/GEO baseline):** [PR #788](https://github.com/intelli-verse-x/Intelliverse-X-User-Webfrontend/pull/788) — SEO + GEO remediation baseline
- **Stack:** React/Vite (CSR SPA with minimal SSR)
- **Primary persona:** End users discovering and managing their IntelliVerse X account, dashboard access point for cross-platform features (quests, rewards, learning, gaming), prospective users evaluating the platform before signup
- **Primary intent keywords (3-5):**
  - `"AI platform dashboard"`
  - `"connected learning platform"`
  - `"gamified education platform"`
  - `"cross-platform user account management"`
  - `"AI-powered personal learning hub"`

**Context:** This is the **primary user-facing dashboard** and account management interface for the entire IntelliVerse X ecosystem. While the apex domain (intelli-verse-x.ai) serves as the flagship marketing site, platform.intelli-verse-x.ai is where users actually land post-signup and manage their cross-product experience. This makes it critical for **SaaS directory listings** (G2, Capterra, AlternativeTo, GetApp) where users search for "alternatives to [competitor]" and "best [category] platforms." The backlink strategy must emphasize user discovery paths and comparison/review sites.

---

## 2. Current backlink profile

### Research methodology

Using firecrawl search + manual scraping (May 2026):
- `firecrawl scrape https://platform.intelli-verse-x.ai` — site structure analysis
- `firecrawl search "platform.intelli-verse-x.ai" mentions reviews` — off-site mentions
- `firecrawl search "intelli-verse-x platform dashboard"` — branded platform searches
- Manual checks: SaaS directory listings, comparison sites, Reddit mentions

### Current state

- **Estimated referring domains:** 1-3 (critically low for a user-facing platform)
- **Example domains found:**
  - intelli-verse-x.ai (main apex domain — internal link)
  - Possible subdomain cross-links from quiz/tutor/quests (if implemented)
  - No external directory listings found (G2, Capterra, AlternativeTo, GetApp, Slashdot, SaaSHub)
  - No comparison site inclusions ("alternatives to X" roundups)
  - No review coverage or user testimonials on third-party sites

- **Quality flags:** 
  - No toxic/PBN links detected
  - Internal linking foundation exists but minimal external validation
  - Zero presence in SaaS/platform discovery channels
  - CSR SPA architecture (per remediation playbook) currently blocks search crawlers from dashboard features — limits what can be showcased in directories until SSR migration (Phase 2)

- **Anchor text distribution today:** 
  - 100% branded or generic ("platform", "dashboard", "user portal")
  - No semantic/partial-match anchors
  - No diversity — needs immediate expansion with user-intent keywords

- **Gap analysis — competitors:**
  
  **1. Notion (notion.so) — productivity/workspace platform:**
  - Estimated 200,000+ referring domains
  - Coverage: TechCrunch, The Verge, educational institutions, productivity blogs, YouTube tutorials
  - Directory presence: G2 (4.7 stars, 5000+ reviews), Capterra (4.8 stars), AlternativeTo (#1 in workspace category), Product Hunt (Product of the Year 2019)
  - Gap: 199,997+ domains
  
  **2. Miro (miro.com) — collaborative workspace platform:**
  - Estimated 80,000+ referring domains
  - Coverage: Forbes, Fast Company, education/enterprise case studies, design communities
  - Directory presence: G2 (4.8 stars), Capterra (4.5 stars), AlternativeTo, TrustRadius, GetApp
  - Gap: 79,997+ domains
  
  **3. Kahoot (kahoot.com) — gamified learning platform:**
  - Estimated 60,000+ referring domains
  - Coverage: EdWeek, EdSurge, teacher resource sites, education technology blogs
  - Directory presence: G2 (4.6 stars), Capterra, AlternativeTo, EdTech directories, Common Sense Media
  - Gap: 59,997+ domains

**Realistic 90-day target:** Move from 1-3 to 25-35 high-quality referring domains. Heavy focus on SaaS directories (G2, Capterra, AlternativeTo, GetApp, SaaSHub, SourceForge, Slashdot), internal cross-linking from all ecosystem properties, and one community launch (Product Hunt or Show HN). Long-term (12-month): 100-150 domains with consistent directory presence and user reviews.

---

## 3. Target referring domains (the prospect list)

### Priority P0 (weeks 1-4) — 9 targets

| # | Domain | URL | Why it ranks | Target page/section | Contact path | Anchor plan | Effort | Priority |
|---|--------|-----|--------------|---------------------|--------------|-------------|--------|----------|
| 1 | **G2** | g2.com | DA 90, #1 B2B software review site, drives 40%+ of SaaS discovery traffic | Productivity Platforms OR Learning Management Systems category | Self-submit + claim profile (free tier) | "IntelliVerse X Platform" (branded) | 6 hrs (profile setup + 5 review solicitations) | P0 |
| 2 | **Capterra** | capterra.com | DA 94, Gartner-owned, trusted by enterprise buyers | Learning Experience Platforms OR Collaboration Software | Submit software listing form | "IntelliVerse X User Platform" | 5 hrs (detailed submission + screenshots) | P0 |
| 3 | **AlternativeTo** | alternativeto.net | User-driven directory, ranks #1 for "[platform] alternative" long-tail queries | Productivity Software / Learning Platforms | Self-submit via "Add application" | "IntelliVerse X Platform" + semantic from user reviews | 2 hrs | P0 |
| 4 | **GetApp** | getapp.com | Gartner subsidiary, 1M+ monthly searches, category leader badges | Learning Management OR Productivity category | Submit listing via GetApp form | "IntelliVerse X Dashboard Platform" | 3 hrs | P0 |
| 5 | **Internal: apex (intelli-verse-x.ai)** | intelli-verse-x.ai | Flagship domain — MUST link to platform from homepage hero CTA | Homepage hero CTA + navigation menu | Internal — PR to Intelliverse-x-frontend-revamp repo | "Access Your Dashboard" → platform.intelli-verse-x.ai | 1 hr | P0 |
| 6 | **Internal: quiz.intelli-verse-x.ai** | quiz.intelli-verse-x.ai | High-traffic consumer product, needs "View in Dashboard" link | Post-quiz results page + profile menu | Internal — PR to Quizverse-web-frontend repo | "View your progress in Dashboard" | 1 hr | P0 |
| 7 | **Internal: tutor.intelli-verse-x.ai** | tutor.intelli-verse-x.ai | EdTech subdomain, natural "track learning" use case | Learning session summary + navigation | Internal — PR to DeepTutor repo | "Track all learning in your platform dashboard" | 1 hr | P0 |
| 8 | **Internal: quests.intelli-verse-x.ai** | quests.intelli-verse-x.ai | Gamification subdomain, rewards/progress tracking lives on platform | Quest completion modal + rewards page | Internal — PR to quests-economy repo | "Manage rewards in Platform Dashboard" | 1 hr | P0 |
| 9 | **Internal: products.intelli-verse-x.ai** | products.intelli-verse-x.ai | Catalog hub, needs account integration link | Product catalog navigation | Internal — PR to Intelliverse-X-Products repo | "Access purchased products via Platform" | 1 hr | P0 |

### Priority P1 (weeks 5-8) — 11 targets

| # | Domain | URL | Why it ranks | Target page/section | Contact path | Anchor plan | Effort | Priority |
|---|--------|-----|--------------|---------------------|--------------|-------------|--------|----------|
| 10 | **SaaSHub** | saashub.com | SaaS discovery platform, 50K+ products, strong SEO | Productivity / Learning categories | Self-submit via "Add Product" | "IntelliVerse X Platform — AI-powered learning hub" | 2 hrs | P1 |
| 11 | **SourceForge** | sourceforge.net | DA 92, legacy but still 30M+ monthly visitors, software directory | Business Software / Education | Create project listing | "IntelliVerse X Platform" | 3 hrs (legacy UI, detailed submission) | P1 |
| 12 | **Slashdot** | slashdot.org | Tech news aggregator, DA 91, user submissions | Firehose submission OR sponsored post | Submit story via Firehose | Generic ("this platform") in story body | 2 hrs + budget for sponsored | P1 |
| 13 | **Product Hunt** | producthunt.com | DA 92, Productivity category gets 300K+ monthly views | /topics/productivity OR /topics/education | Self-submit + hunter outreach | "IntelliVerse X Platform — Your Connected Learning Hub" | 8 hrs (gallery prep, launch strategy) | P1 |
| 14 | **Software Suggest** | softwaresuggest.com | India-focused SaaS directory, growing SEO presence | Learning Management / Collaboration | Submit software listing | "IntelliVerse X Platform Dashboard" | 2 hrs | P1 |
| 15 | **Crozdesk** | crozdesk.com | Business software marketplace, comparison engine | Productivity Tools / LMS | Self-submit listing | "IntelliVerse X Platform" | 2 hrs | P1 |
| 16 | **Internal: marketx.intelli-verse-x.ai** | marketx.intelli-verse-x.ai | Marketplace subdomain, needs account/wallet link | User account dropdown + checkout flow | Internal — PR to IntelliMarketX-frontend repo | "Manage account via Platform Dashboard" | 1 hr | P1 |
| 17 | **Internal: gaming.intelli-verse-x.ai** | gaming.intelli-verse-x.ai | Gaming subdomain, player stats/progress link | Player profile page + achievements | Internal — PR to Gaming_backend repo | "View full stats on Platform Dashboard" | 1 hr | P1 |
| 18 | **Internal: animator.intelli-verse-x.ai** | animator.intelli-verse-x.ai | ManimCat subdomain, project management link | Project library + settings | Internal — PR to ManimCat repo | "Access all projects via Platform Dashboard" | 1 hr | P1 |
| 19 | **Internal: ai-host.intelli-verse-x.ai** | ai-host.intelli-verse-x.ai | AI vertical subdomain, needs usage/billing link | AI usage dashboard + account settings | Internal — PR to Intelliverse-X-AI repo | "Manage AI usage in Platform Dashboard" | 1 hr | P1 |
| 20 | **Internal: ai-chat-v2.intelli-verse-x.ai** | ai-chat-v2.intelli-verse-x.ai | AI chat subdomain, conversation history link | Chat history + preferences | Internal — PR to AI-chat-assistance repo | "View chat history in Platform Dashboard" | 1 hr | P1 |

### Priority P2 (weeks 9-12) — 9 targets

| # | Domain | URL | Why it ranks | Target page/section | Contact path | Anchor plan | Effort | Priority |
|---|--------|-----|--------------|---------------------|--------------|-------------|--------|----------|
| 21 | **TrustRadius** | trustradius.com | Enterprise B2B review site, high buyer intent | Productivity / Learning Management | Claim vendor profile (free) | "IntelliVerse X Platform" | 4 hrs (profile + review outreach) | P2 |
| 22 | **SoftwareAdvice** | softwareadvice.com | Gartner subsidiary, comparison/advisory focus | Learning Management Systems | Submit software listing | "IntelliVerse X User Dashboard Platform" | 3 hrs | P2 |
| 23 | **Featured Customers** | featuredcustomers.com | Customer review aggregator, vendor showcase | Productivity / LMS categories | Submit vendor profile | "IntelliVerse X Platform" | 2 hrs | P2 |
| 24 | **FinancesOnline** | financesonline.com | B2B software reviews, 50K+ products | Collaboration / Learning categories | Submit product listing | "IntelliVerse X Platform Dashboard" | 2 hrs | P2 |
| 25 | **SaaSGenius** | saasgenius.com | SaaS comparison and review platform | Productivity Tools category | Self-submit product | "IntelliVerse X — AI learning platform" | 2 hrs | P2 |
| 26 | **AlternativeTo: "Notion alternatives"** | alternativeto.net (resource page) | Existing roundup page with 200+ alternatives listed | Suggest as alternative to Notion | Comment on listing OR contact AlternativeTo editors | "IntelliVerse X Platform — productivity meets learning" | 1 hr | P2 |
| 27 | **AlternativeTo: "Kahoot alternatives"** | alternativeto.net (resource page) | Existing roundup for gamified learning platforms | Suggest as alternative to Kahoot | Comment on listing OR contact editors | "IntelliVerse X Platform — gamified learning dashboard" | 1 hr | P2 |
| 28 | **Reddit: r/productivity** | reddit.com/r/productivity | 2M+ members, tool discovery community | Monthly "Tools" thread or standalone post | Reddit account (substantive post, not promo) | "our platform dashboard" (generic) + URL in context | 3 hrs (write value-driven post about workflow) | P2 |
| 29 | **Reddit: r/EdTech** | reddit.com/r/edtech | 30K+ members, education technology focus | Monthly showcase or tool discussion | Reddit account | "this learning platform" (generic) + URL | 2 hrs | P2 |

### Tactic coverage validation

✅ **Industry directories (SaaS/Platform focus)** (14 primary targets):
   - Tier 1 (must-have): G2, Capterra, AlternativeTo, GetApp — P0
   - Tier 2 (strong ROI): SaaSHub, SourceForge, Product Hunt, TrustRadius, SoftwareAdvice — P1/P2
   - Tier 3 (long-tail): Slashdot, Software Suggest, Crozdesk, Featured Customers, FinancesOnline, SaaSGenius — P1/P2

✅ **Internal cross-linking** (11 internal targets):
   - Apex domain (hero CTA) — CRITICAL
   - Product subdomains with natural dashboard links: quiz, tutor, quests, products, marketx, gaming, animator, ai-host, ai-chat-v2
   - Each link provides functional value (track progress, manage account, view stats) — not just SEO

✅ **Niche communities** (2): r/productivity, r/EdTech — P2 (deferred to avoid early spam; requires substantive contribution)

✅ **Resource page / link-insert** (2): AlternativeTo existing comparison pages for Notion/Kahoot alternatives — P2

⏸️ **Awesome-lists on GitHub**: Skipped — platform dashboards don't fit GitHub awesome-list format (those focus on developer tools/libraries, not end-user dashboards). Alternative: target Product Hunt and SaaS directories instead.

⏸️ **Editorial / digital PR**: Deferred to Campaign 5 (see §5) — requires user testimonials and case studies first. Target publications: TechCrunch (SaaS launches), EdSurge (EdTech vertical), The Verge (platform/productivity beat).

⏸️ **Podcast / interview**: Deferred to §10 Open Questions — requires founder/product lead availability and existing user base to demonstrate traction.

---

## 4. Anchor text plan

Target distribution across four anchor classes, informed by 2026 SEO best practices and SaaS platform anchor patterns:

### Branded (target 45% — 15-16 of 35 links in 90 days)

**Examples (7+):**
1. "IntelliVerse X Platform"
2. "platform.intelli-verse-x.ai"
3. "IntelliVerse X Dashboard"
4. "IntelliVerse X User Platform"
5. "IntelliVerse X"
6. "Visit IntelliVerse X Platform"
7. "IntelliVerse Platform Dashboard"
8. "Access IntelliVerse X"

**Use cases:** All directory listings (G2, Capterra, AlternativeTo, GetApp, SaaSHub, etc.), footer credits in internal cross-links, Product Hunt listing, branded mentions in editorial coverage.

### Generic (target 15% — 5-6 of 35 links)

**Examples (7+):**
1. "learn more"
2. "access dashboard"
3. "view your platform"
4. "manage account"
5. "this platform"
6. "our dashboard"
7. "check it out"
8. "visit platform"

**Use cases:** Reddit posts (avoid promotional anchors), internal cross-links from product pages (CTA buttons), blog guest posts, community forum mentions, natural editorial inclusions.

### Exact-match (target 10% CEILING — 3-4 of 35 links MAX)

**Examples (5):**
1. "AI platform dashboard" ← use sparingly, 1-2 times only
2. "connected learning platform" ← limit to Product Hunt tagline or one editorial placement
3. "gamified education platform" ← editorial only
4. "cross-platform user account management" ← avoid (too long, unnatural)
5. "AI-powered personal learning hub" ← avoid (over-optimized)

**CRITICAL WARNING:** Exact-match anchors for SaaS platforms are high-risk. Google's Penguin 4.0 specifically targets over-optimized SaaS directory submissions. Use ONLY in these scenarios:
- One Product Hunt tagline/description (not repeated across other directories)
- Editorial placement where journalist naturally uses the phrase
- User-generated review where the reviewer writes it organically (cannot be controlled)

**NEVER use exact-match for:**
- Internal cross-links (use branded or generic CTAs instead)
- Directory submissions where both listing title AND anchor are exact-match
- Paid directory placements (instant red flag)
- Comment sections, forum signatures, or user-generated spam contexts

### Partial-match / Semantic (target 30% — 10-11 of 35 links)

**Examples (12+):**
1. "AI-powered learning platform"
2. "connected platform dashboard"
3. "cross-product user dashboard"
4. "gamified learning hub"
5. "AI learning platform with unified dashboard"
6. "platform for managing learning progress"
7. "user dashboard for education and gaming"
8. "centralized account management platform"
9. "productivity platform with AI features"
10. "learning management dashboard"
11. "unified dashboard for cross-platform experiences"
12. "intelligent platform hub"
13. "education technology dashboard"

**Use cases:** Product Hunt description, AlternativeTo user reviews (encourage organic language via review solicitation emails), G2/Capterra extended descriptions, editorial pitches (use in pitch email but let journalist rewrite), resource page outreach (value proposition language), internal cross-link supporting copy.

### Forbidden anchors (NEVER use — Penguin triggers)

❌ "best learning platform"  
❌ "top AI dashboard"  
❌ "free platform dashboard"  
❌ "#1 education platform"  
❌ "cheap learning management system"  
❌ "AI platform online"  
❌ "best dashboard software"  
❌ Any money keyword + "free/cheap/best/top/#1"  
❌ "click here" (low-quality generic, different from natural "learn more")

---

## 5. Five tactical campaigns (with deliverables)

### C1 — SaaS Directory Sweep (Weeks 1-4)

**Goal:** Get listed in 8 major SaaS directories (G2, Capterra, AlternativeTo, GetApp, SaaSHub, SourceForge, Slashdot, Software Suggest) with complete profiles and 5+ user reviews solicited for G2/Capterra.

**Execution steps:**

1. **Profile creation assets (Week 1):**
   - Logo: 512x512px PNG (transparent background)
   - Screenshots (5):
     - Dashboard homepage (after login)
     - Cross-product navigation menu
     - Progress tracking/analytics view
     - Account settings/profile page
     - Rewards/achievements overview (if applicable)
   - Demo video: 90-second platform walkthrough (YouTube hosted)
   - Boilerplate description (150-word + 300-word versions):
     
     **150-word version (for short-form directories):**
     ```
     IntelliVerse X Platform is a unified dashboard connecting AI-powered learning, gamification, and productivity tools in one ecosystem. Users access quiz platforms, deep tutoring, quest-based learning, animation tools, and gaming experiences through a single account with cross-product progress tracking. The platform leverages AI to personalize learning paths, track achievements across products, and provide actionable insights into user growth. Designed for students, educators, lifelong learners, and productivity enthusiasts, IntelliVerse X Platform eliminates the friction of managing multiple accounts and fragmented progress. With seamless integrations across 10+ connected products, users earn rewards in one tool and apply them ecosystem-wide. Modern web stack (React/Vite) ensures fast, responsive experiences. Ideal for individuals and organizations seeking an integrated approach to learning, productivity, and engagement.
     ```
     
     **300-word version (for long-form directories like G2, Capterra):**
     ```
     IntelliVerse X Platform is the central dashboard for a connected ecosystem of AI-powered learning, gamification, and productivity applications. Rather than forcing users into a single monolithic product, IntelliVerse X Platform connects specialized tools—quiz platforms, deep tutoring systems, quest-based learning, animation creation, gaming experiences, marketplace transactions—through a unified account and intelligent coordination layer.

     Users access their entire learning journey, progress tracking, achievements, and cross-product rewards from one central hub. The platform's AI layer learns user behavior across all connected products, personalizing recommendations, adjusting difficulty in learning modules, and surfacing insights about growth patterns.

     Key features:
     - Unified account management across 10+ connected products
     - Cross-product progress tracking and analytics
     - Rewards/achievements that work ecosystem-wide (earn in Quiz, spend in Gaming)
     - AI-powered learning path recommendations
     - Seamless navigation between specialized tools without re-authentication
     - Real-time synchronization of user data, preferences, and progress
     - Mobile-responsive dashboard (React/Vite stack)

     Ideal for:
     - Students managing coursework, practice quizzes, and tutoring in one place
     - Lifelong learners exploring gamified education across multiple subjects
     - Educators tracking student engagement across connected learning tools
     - Organizations needing centralized LMS with flexible product integrations

     Unlike traditional LMS platforms that lock users into rigid structures, IntelliVerse X Platform offers flexibility—each product operates independently but benefits from ecosystem connections. Users choose which tools to use; the platform handles the rest.
     ```

2. **Directory submission schedule (Weeks 1-2):**
   - **Day 1:** G2 (Productivity Platforms category) + Capterra (Learning Experience Platforms)
   - **Day 2:** AlternativeTo (Productivity Software) + GetApp (Learning Management)
   - **Day 3:** SaaSHub (Productivity / Learning) + SourceForge (Business Software / Education)
   - **Day 4:** Slashdot Firehose submission (story pitch) + Software Suggest (LMS category)
   - **Day 5:** Review submissions for any errors, respond to directory admin questions

3. **Review solicitation (Weeks 2-4):**
   - Identify 10-15 active users (check user analytics for 30-day active + cross-product usage)
   - Email template:
     ```
     Subject: Quick favor — help us showcase IntelliVerse X on G2

     Hi [Name],

     We noticed you've been using IntelliVerse X Platform to [specific usage pattern, e.g., "track your quiz progress and manage learning across Tutor and Quests"]. Thank you for being part of our ecosystem!

     We'd love your help: we're building our profile on G2 (a trusted software review site) to help other learners discover the platform. If you have 5 minutes, would you share your experience?

     → Leave a review: [G2 review link]

     As a thank-you, we'll add 100 ecosystem rewards to your account (redeemable across Quiz, Gaming, Quests). No pressure if you're busy—we appreciate you either way!

     Thanks,
     [Your name]
     IntelliVerse X Team
     ```
   - Target: 5+ reviews on G2, 3+ on Capterra (establishes credibility threshold)

4. **Expected links:**
   - 8 dofollow links from directory profiles (G2, Capterra, AlternativeTo, GetApp, SaaSHub, SourceForge, Software Suggest, possibly Slashdot if story approved)
   - 5-10 secondary/aggregator links from sites that scrape major directories

---

### C2 — Internal Cross-Link Cascade (Weeks 2-3)

**Goal:** Add contextual dashboard links from 10 internal subdomains, driving both SEO value and actual user traffic to platform.intelli-verse-x.ai.

**Execution steps:**

1. **Audit existing internal link structure (Day 1):**
   - Check each subdomain (quiz, tutor, quests, products, marketx, gaming, animator, ai-host, ai-chat-v2, kiosk) for existing platform links
   - Map user journeys: where do users naturally need dashboard access?
   - Document missing links and propose placements

2. **Create internal link copy templates (Day 2):**
   
   **Template A — Post-action CTA (for quiz, tutor, quests):**
   ```
   [Action completed! e.g., "Quiz complete!" or "Lesson finished!"]
   
   → View your progress and achievements in your [Dashboard](https://platform.intelli-verse-x.ai)
   ```
   
   **Template B — Navigation menu item (all subdomains):**
   ```
   [User dropdown menu]
   - Profile
   - Settings
   → Dashboard (links to platform.intelli-verse-x.ai)
   - Logout
   ```
   
   **Template C — Feature discovery (products, marketx):**
   ```
   "Manage all your purchases and subscriptions in one place via your [Platform Dashboard](https://platform.intelli-verse-x.ai)."
   ```
   
   **Template D — Footer link (all subdomains):**
   ```
   [Footer section: "IntelliVerse X Ecosystem"]
   - About
   → Platform Dashboard
   - Products
   - Support
   ```

3. **PR creation for each subdomain (Days 3-5):**
   - Priority order (based on traffic/SEO value):
     1. **apex (intelli-verse-x.ai)** — Homepage hero CTA "Access Your Dashboard" → platform.intelli-verse-x.ai (CRITICAL)
     2. **quiz.intelli-verse-x.ai** — Post-quiz results page + navigation menu
     3. **tutor.intelli-verse-x.ai** — Learning session summary + navigation menu
     4. **quests.intelli-verse-x.ai** — Quest completion modal + rewards page + navigation
     5. **products.intelli-verse-x.ai** — Product catalog navigation + footer
     6. **marketx.intelli-verse-x.ai** — User account dropdown + checkout flow
     7. **gaming.intelli-verse-x.ai** — Player profile page + achievements + navigation
     8. **animator.intelli-verse-x.ai** — Project library + settings + navigation
     9. **ai-host.intelli-verse-x.ai** — AI usage dashboard + account settings + navigation
     10. **ai-chat-v2.intelli-verse-x.ai** — Chat history + preferences + navigation

   - Each PR includes:
     - Link placement (specific file + line)
     - Anchor text (from templates above)
     - Screenshot of proposed UI change
     - SEO justification (brief, 2 sentences)

4. **Expected links:**
   - 10-11 high-authority internal dofollow links (DA transfer from each subdomain to platform)
   - Functional benefit: users discover dashboard, increasing engagement + reducing churn

---

### C3 — Product Hunt Launch (Week 5)

**Goal:** 150+ upvotes, featured in Productivity OR Education category, trigger secondary directory listings from PH aggregators.

**Pre-launch (T-14 to T-0):**

1. **Hunter identification (T-14):**
   - Target: Active hunters in Productivity or Education categories with 300+ followers
   - Candidates: Search PH for recent productivity/learning tool launches, message 3-5 hunters
   - **Ask copy template:**
     ```
     Subject: Hunter collaboration — IntelliVerse X Platform (AI learning dashboard)
     
     Hi [Name],
     
     I saw you hunted [Recent Product] — love your eye for productivity tools!
     
     We're launching IntelliVerse X Platform next week: a unified dashboard that connects AI-powered learning, gamification, and productivity apps. Think Notion meets Kahoot, but for an entire ecosystem of specialized tools (quiz, tutoring, quests, gaming, animation).
     
     Would you be interested in hunting it? We have:
     - Full gallery ready (screenshots, demo video)
     - Founder available for launch-day comments/questions
     - Unique angle: cross-product progress tracking with AI personalization
     
     Happy to share early access + detailed launch plan.
     
     Best,
     [Your name]
     IntelliVerse X Team
     ```

2. **Gallery assets (T-7):**
   - Thumbnail: 1270x760px hero image (platform dashboard overview)
   - Gallery images (5):
     - Dashboard homepage (clean UI, progress overview)
     - Cross-product navigation (showing quiz, tutor, quests, gaming icons)
     - Progress tracking / analytics view (charts, achievements)
     - Rewards system (earn in one product, spend in another)
     - AI personalization layer (recommended learning paths)
   - Demo video: 75-second walkthrough (YouTube hosted, embed link)

3. **FAQ answers (T-3, draft full text):**
   
   **Q: "How is this different from Notion or other productivity platforms?"**  
   A: Notion is a blank canvas—you build your own system. IntelliVerse X Platform is an intelligent dashboard that automatically connects specialized tools (quiz, tutoring, quests, gaming, animation) you're already using. Progress, achievements, and AI insights flow between products without manual setup. Think of it as an operating system for learning and productivity, not a note-taking tool.
   
   **Q: "What's the AI layer do?"**  
   A: The AI learns your behavior across all connected products—quiz performance, tutoring sessions, quest completions, gaming patterns—and surfaces personalized recommendations. It adjusts difficulty in learning modules, suggests next steps, and shows insights about your growth. It's not a chatbot; it's an invisible coordinator making your ecosystem smarter.
   
   **Q: "Can I use it standalone, or do I need to use all your products?"**  
   A: You choose which products to use. The platform works with one tool or ten—the more you connect, the more powerful the cross-product features (rewards, progress tracking, AI insights). No lock-in.
   
   **Q: "Is this an LMS?"**  
   A: It's broader than a traditional LMS. LMS platforms are built for courses/classes. IntelliVerse X Platform manages learning, productivity, gaming, and creativity tools in one hub. Great for lifelong learners, students, educators, and anyone juggling multiple apps.
   
   **Q: "Pricing?"**  
   A: Free tier available with core features. Premium unlocks advanced AI insights, unlimited cross-product rewards, and priority support. [Link to pricing page if available; otherwise: "Pricing details on our site."]

**Launch day (T-0):**

1. **Maker comment (post immediately after hunter publishes):**
   ```
   Hi Product Hunt!
   
   I'm [Name], creator of IntelliVerse X Platform.
   
   We built this because modern learning and productivity are fragmented. You use one app for quizzes, another for tutoring, another for projects, another for tracking progress. Each works in isolation. You lose context when switching. Progress doesn't carry over.
   
   IntelliVerse X Platform solves this: it's a unified dashboard connecting specialized tools with an intelligent coordination layer.
   
   **How it works:**
   - You access quiz platforms, deep tutoring, quest-based learning, gaming, and animation tools through one account
   - Progress, achievements, and data sync automatically across products
   - AI learns your behavior ecosystem-wide and personalizes recommendations
   - Earn rewards in one tool, spend them in another (e.g., complete quizzes → unlock gaming features)
   
   **What makes it unique:**
   ✅ Not a monolithic platform—each product is specialized and excellent at one thing  
   ✅ Cross-product intelligence—AI sees your full journey, not siloed activity  
   ✅ Unified rewards/achievements—motivation spans the ecosystem  
   ✅ Modern web stack (React/Vite)—fast, responsive, extensible  
   
   We've already connected 10+ products: Quiz, Tutor, Animator, Quests, Gaming, MarketX, AI Chat, and more. All accessible from this dashboard.
   
   Try it: https://platform.intelli-verse-x.ai
   
   Ask me anything—I'll be here all day!
   ```

2. **Prepared replies to anticipated questions:**
   
   **If asked "How do you make money?":**
   ```
   Great question! Revenue comes from premium subscriptions (advanced AI features, unlimited rewards, priority support) and ecosystem-wide monetization (e.g., marketplace transactions, in-app purchases in gaming products). The platform itself is free; premium unlocks intelligence layer.
   ```
   
   **If asked "What's your tech stack?":**
   ```
   Platform: React + Vite (CSR, migrating to Next.js SSR for better SEO). Backend: Node.js microservices, Postgres + Redis. AI layer: LLM integrations for personalization. Each product has its own stack—Quiz is Next.js, Tutor is Next.js, Gaming is Node + React. Platform coordinates them.
   ```
   
   **If asked "Why not just use [Competitor]?":**
   ```
   [Competitor] is great for [specific use case], but it's designed for [narrow focus, e.g., "course management" or "note-taking"]. IntelliVerse X Platform is built for people who use multiple tools and want them to work together intelligently. It's the connective tissue, not a replacement for specialized tools.
   ```

3. **Social amplification (launch day schedule):**
   - T+0 (launch moment): Post to Twitter/X, LinkedIn, Discord communities
   - T+2 hrs: Reply to first 5 comments on PH with substantive answers
   - T+4 hrs: Share user testimonial or screenshot of dashboard in PH comments
   - T+8 hrs: Update maker comment with "Thank you" note + milestone (e.g., "200 upvotes!")
   - T+12 hrs: Final engagement push—ask friends/team to upvote + comment with questions (genuine, not fake)

4. **Expected links:**
   - 1 strong dofollow from Product Hunt listing
   - 5-10 secondary links from PH aggregators (e.g., "Top Product Hunt launches this week" roundups, BetaList, Launching Next)
   - Possible editorial pickup if launch goes viral (TechCrunch, The Verge, Hacker News organic submission by community)

---

### C4 — AlternativeTo Seeding + Comparison Page Outreach (Weeks 6-7)

**Goal:** Establish presence on AlternativeTo as an alternative to Notion, Kahoot, Miro, and related platforms; get included in existing "alternatives to X" roundup pages.

**Execution steps:**

1. **AlternativeTo listing creation (Week 6, Day 1):**
   - Submit to: alternativeto.net/software/intelliverse-x-platform/
   - Categories to select: Productivity Software, Learning Management, Collaboration Tools
   - Mark as alternative to: Notion, Kahoot, Miro, ClickUp, Asana (user-selectable on platform)
   - Description: Use 300-word boilerplate from C1
   - License: Freemium
   - Platforms: Web, Mobile Web (if applicable)

2. **User review solicitation (Week 6, Days 2-5):**
   - AlternativeTo is user-driven—reviews determine ranking in "alternatives to X" lists
   - Identify 8-10 power users (cross-product usage, high engagement)
   - Email template:
     ```
     Subject: Help us get discovered on AlternativeTo
     
     Hi [Name],
     
     Quick favor: we just listed IntelliVerse X Platform on AlternativeTo (a popular site where people search for alternatives to tools like Notion, Kahoot, etc.).
     
     If you have 3 minutes, would you leave a short review? Your honest feedback helps others discover the platform.
     
     → Leave review: [AlternativeTo link]
     
     What to mention (if it resonates with your experience):
     - How you use the dashboard to connect products (Quiz, Tutor, Quests, etc.)
     - What you like about cross-product progress tracking
     - How it compares to other tools you've tried (if applicable)
     
     Thanks for being part of our community!
     
     [Your name]
     IntelliVerse X Team
     ```
   - Target: 5+ reviews with 4-5 star average (establishes credibility)

3. **Comparison page targeting (Week 7):**
   - Research existing AlternativeTo comparison pages:
     - "Alternatives to Notion" (200+ listings)
     - "Alternatives to Kahoot" (50+ listings)
     - "Alternatives to Miro" (100+ listings)
   - Strategy: If IntelliVerse X Platform has 5+ reviews, it will automatically appear in search results and comparison lists. No direct outreach needed—AlternativeTo's algorithm surfaces well-reviewed products.

4. **External roundup outreach (Week 7):**
   - Find "best productivity platforms" and "best learning platforms" roundup articles via Google:
     - Query: `"best productivity platforms" OR "best learning management systems" 2025 2026`
     - Target: Blog posts with 10-20 tools listed, published in last 12 months
   - Identify 5 high-authority roundup pages (DA 50+)
   - Outreach email template:
     ```
     Subject: Suggestion for your "[Topic]" roundup
     
     Hi [Author],
     
     I came across your article "[Article Title]" and found it really helpful—great breakdown of [category, e.g., "productivity platforms"].
     
     I wanted to suggest adding IntelliVerse X Platform to your list. It's a unified dashboard that connects AI-powered learning, gamification, and productivity tools—users track progress across specialized products (quiz, tutoring, quests, gaming) in one hub.
     
     What makes it unique:
     - Cross-product progress tracking and AI personalization
     - Rewards that work ecosystem-wide (earn in one tool, spend in another)
     - Modern web stack (React/Vite, Next.js coming)
     
     It's listed on G2, Capterra, and AlternativeTo with positive reviews. I think your readers evaluating platforms like Notion or Kahoot would find it interesting.
     
     If you'd like more info, happy to provide:
     - Demo video or screenshots
     - Case studies or user testimonials
     - Direct product access for testing
     
     No worries if it's not a fit—appreciate the great content either way!
     
     Best,
     [Your name]
     IntelliVerse X Team
     ```
   - Expected response rate: 20-30% (1-2 of 5 will add to roundup or respond with questions)

5. **Expected links:**
   - 1 dofollow from AlternativeTo listing
   - 3-5 links from user-generated reviews on AlternativeTo (nofollow but high referral traffic)
   - 1-2 links from external roundup pages (if outreach succeeds)

---

### C5 — Editorial Outreach + Digital PR (Weeks 8-12)

**Goal:** Secure 2-3 editorial mentions in EdTech, SaaS, or productivity publications (TechCrunch, EdSurge, The Verge, Fast Company, Productivity blogs).

**Preparation (Week 8):**

1. **Build outreach assets:**
   - Press kit: Logo, screenshots, demo video, boilerplate description, founder bio
   - Case study (if available): "How [User/Organization] uses IntelliVerse X Platform to [achieve result]"
   - Pitch angles:
     
     **Angle 1 — "The unbundling of productivity platforms":**
     ```
     Hook: While Notion tries to be everything for everyone, a new wave of platforms is connecting specialized tools intelligently.
     
     Pitch: IntelliVerse X Platform represents a shift from monolithic productivity apps to "ecosystem dashboards"—tools that coordinate best-in-class specialized products rather than replacing them. Cover the trend + profile IntelliVerse X as case study.
     ```
     
     **Angle 2 — "AI that learns across products, not just within them":**
     ```
     Hook: Most AI features are siloed—ChatGPT learns from your chats, Notion AI learns from your docs. What if AI learned from your entire digital behavior?
     
     Pitch: IntelliVerse X Platform's AI layer tracks user behavior across quiz platforms, tutoring systems, gaming, and productivity tools—creating a holistic intelligence layer. Explore what cross-product AI unlocks (personalized learning paths, adaptive difficulty, pattern insights).
     ```
     
     **Angle 3 — "Gamification meets productivity: the rise of learn-to-earn ecosystems":**
     ```
     Hook: Gamification has been stuck in badges and leaderboards. The next generation ties real rewards to real progress across multiple tools.
     
     Pitch: IntelliVerse X Platform lets users earn rewards in one tool (e.g., complete quizzes) and spend them in another (e.g., unlock gaming features). Profile the psychology of cross-product motivation + interview founder about building ecosystem-wide incentives.
     ```

2. **Journalist research (Week 8):**
   - Target 10 journalists who cover SaaS, EdTech, productivity, or AI:
     
     | Publication | Journalist | Beat | Contact |
     |-------------|------------|------|---------|
     | TechCrunch | [SaaS/AI reporter] | SaaS launches, AI tools | Email via TechCrunch contact form |
     | EdSurge | [EdTech reporter] | Learning platforms, EdTech trends | Email or Twitter DM |
     | The Verge | [Productivity reporter] | Productivity tools, platform reviews | Email (find on author bylines) |
     | Fast Company | [Innovation reporter] | Workplace innovation, productivity | Email or LinkedIn |
     | Productivity blog (e.g., Zapier, Doist) | Staff writer | Tool roundups, workflows | Email via site contact |
     
   - Check recent articles by each journalist to tailor pitch angle

**Outreach (Weeks 9-10):**

1. **Email template (personalized for each journalist):**
   ```
   Subject: Story idea — [Angle hook, e.g., "The unbundling of productivity platforms"]
   
   Hi [Name],
   
   I saw your recent piece on [Recent Article]—really enjoyed your take on [specific insight].
   
   I have a story idea that might fit your beat: [Angle hook from above, 1-2 sentences].
   
   I'm building IntelliVerse X Platform, a dashboard that connects AI-powered learning, gamification, and productivity tools. Rather than replacing specialized tools (like Notion tries to do), it coordinates them—think of it as an operating system for your app ecosystem.
   
   What makes it newsworthy:
   - [Unique angle tied to pitch, e.g., "Cross-product AI learns from quiz performance, tutoring sessions, gaming patterns—creating personalized learning paths that span tools"]
   - We've connected 10+ products with [X,XXX] users so far
   - [Optional: Traction metric, e.g., "Featured on Product Hunt with 200+ upvotes" or "5-star reviews on G2"]
   
   I'd love to chat if this resonates with your coverage. Happy to provide:
   - Demo/product access
   - Founder interview (technical deep-dive or user psychology angle)
   - User case studies or testimonials
   
   Let me know if you'd like more info!
   
   Best,
   [Your name]
   [Title], IntelliVerse X
   [Email, Twitter/X handle]
   ```

2. **Follow-up cadence:**
   - Send initial pitch
   - Wait 5 business days
   - Send one follow-up (short, 2-3 sentences): "Hi [Name], following up on my pitch below—still interested if you think it fits your coverage. Let me know!"
   - If no response after follow-up, mark as "dead" and move to next journalist

3. **Expected response rate:**
   - 10-20% positive response (1-2 of 10 journalists will engage)
   - 1-2 published articles over 90 days (if timing aligns with editorial calendar)

**Expected links:**
- 1-2 dofollow editorial links from tier-1 publications (DA 85+)
- Referral traffic spike (500-2,000 visits per article, depending on publication)
- Secondary pickup: Other sites may reference the original article, creating 2-3 additional links

---

## 6. Outreach tracker (CSV-shaped)

| # | Target | URL | Tactic | Contact | Anchor | Status | Sent_at | Landed_url | Notes |
|---|--------|-----|--------|---------|--------|--------|---------|------------|-------|
| 1 | G2 | g2.com | Directory | Self-submit (free profile) | IntelliVerse X Platform | prospect | — | — | Submit in Week 1; solicit 5 reviews |
| 2 | Capterra | capterra.com | Directory | Self-submit form | IntelliVerse X User Platform | prospect | — | — | Submit in Week 1; solicit 3 reviews |
| 3 | AlternativeTo | alternativeto.net | Directory | Self-submit | IntelliVerse X Platform | prospect | — | — | Submit in Week 1; critical for comparison SEO |
| 4 | GetApp | getapp.com | Directory | Self-submit form | IntelliVerse X Dashboard Platform | prospect | — | — | Submit in Week 1; Gartner subsidiary |
| 5 | apex (intelli-verse-x.ai) | intelli-verse-x.ai | Internal link | PR to frontend-revamp repo | Access Your Dashboard | prospect | — | — | CRITICAL: homepage hero CTA |
| 6 | quiz.intelli-verse-x.ai | quiz.intelli-verse-x.ai | Internal link | PR to Quizverse repo | View your progress in Dashboard | prospect | — | — | Post-quiz results page |
| 7 | tutor.intelli-verse-x.ai | tutor.intelli-verse-x.ai | Internal link | PR to DeepTutor repo | Track all learning in platform dashboard | prospect | — | — | Learning session summary |
| 8 | quests.intelli-verse-x.ai | quests.intelli-verse-x.ai | Internal link | PR to quests-economy repo | Manage rewards in Platform Dashboard | prospect | — | — | Quest completion modal |
| 9 | products.intelli-verse-x.ai | products.intelli-verse-x.ai | Internal link | PR to Products repo | Access purchased products via Platform | prospect | — | — | Catalog navigation |
| 10 | SaaSHub | saashub.com | Directory | Self-submit | IntelliVerse X Platform — AI-powered learning hub | prospect | — | — | Submit in Week 2 |
| 11 | SourceForge | sourceforge.net | Directory | Create project listing | IntelliVerse X Platform | prospect | — | — | Submit in Week 2; legacy UI |
| 12 | Slashdot | slashdot.org | Directory/Community | Firehose submission | (generic in story) | prospect | — | — | Submit story pitch; may need sponsorship |
| 13 | Product Hunt | producthunt.com | Community | Self-submit + hunter | IntelliVerse X Platform — Your Connected Learning Hub | prospect | — | — | Week 5 launch; prep gallery + hunter outreach |
| 14 | Software Suggest | softwaresuggest.com | Directory | Self-submit form | IntelliVerse X Platform Dashboard | prospect | — | — | Submit in Week 2 |
| 15 | Crozdesk | crozdesk.com | Directory | Self-submit listing | IntelliVerse X Platform | prospect | — | — | Submit in Week 2 |
| 16 | marketx.intelli-verse-x.ai | marketx.intelli-verse-x.ai | Internal link | PR to IntelliMarketX repo | Manage account via Platform Dashboard | prospect | — | — | User account dropdown |
| 17 | gaming.intelli-verse-x.ai | gaming.intelli-verse-x.ai | Internal link | PR to Gaming_backend repo | View full stats on Platform Dashboard | prospect | — | — | Player profile page |
| 18 | animator.intelli-verse-x.ai | animator.intelli-verse-x.ai | Internal link | PR to ManimCat repo | Access all projects via Platform Dashboard | prospect | — | — | Project library |
| 19 | ai-host.intelli-verse-x.ai | ai-host.intelli-verse-x.ai | Internal link | PR to Intelliverse-X-AI repo | Manage AI usage in Platform Dashboard | prospect | — | — | AI usage dashboard |
| 20 | ai-chat-v2.intelli-verse-x.ai | ai-chat-v2.intelli-verse-x.ai | Internal link | PR to AI-chat-assistance repo | View chat history in Platform Dashboard | prospect | — | — | Chat history view |
| 21 | TrustRadius | trustradius.com | Directory | Claim vendor profile | IntelliVerse X Platform | prospect | — | — | Week 3; solicit reviews |
| 22 | SoftwareAdvice | softwareadvice.com | Directory | Self-submit listing | IntelliVerse X User Dashboard Platform | prospect | — | — | Week 3 |
| 23 | Featured Customers | featuredcustomers.com | Directory | Submit vendor profile | IntelliVerse X Platform | prospect | — | — | Week 3 |
| 24 | FinancesOnline | financesonline.com | Directory | Submit product listing | IntelliVerse X Platform Dashboard | prospect | — | — | Week 3 |
| 25 | SaaSGenius | saasgenius.com | Directory | Self-submit product | IntelliVerse X — AI learning platform | prospect | — | — | Week 3 |
| 26 | AlternativeTo: Notion alternatives | alternativeto.net | Resource page | Comment/editor contact | IntelliVerse X Platform — productivity meets learning | prospect | — | — | Week 4; requires 5+ reviews first |
| 27 | AlternativeTo: Kahoot alternatives | alternativeto.net | Resource page | Comment/editor contact | IntelliVerse X Platform — gamified learning dashboard | prospect | — | — | Week 4; requires 5+ reviews first |
| 28 | r/productivity | reddit.com/r/productivity | Community | Reddit post (substantive) | our platform dashboard | prospect | — | — | Week 5; Tools thread or standalone (value-driven) |
| 29 | r/EdTech | reddit.com/r/edtech | Community | Reddit post | this learning platform | prospect | — | — | Week 5; tool discussion thread |
| 30 | TechCrunch | techcrunch.com | Editorial | Email to SaaS/AI reporter | (journalist writes naturally) | prospect | — | — | Week 6 pitch; "unbundling productivity" angle |
| 31 | EdSurge | edsurge.com | Editorial | Email to EdTech reporter | (journalist writes naturally) | prospect | — | — | Week 6 pitch; "cross-product AI" angle |
| 32 | The Verge | theverge.com | Editorial | Email to productivity reporter | (journalist writes naturally) | prospect | — | — | Week 6 pitch; "gamification meets productivity" angle |
| 33 | Productivity blog (Zapier/Doist) | zapier.com or doist.com | Resource page | Email to staff writer | IntelliVerse X Platform — unified dashboard | prospect | — | — | Week 7 outreach; tool roundup pitch |
| 34 | Roundup page 1 | [TBD during research] | Resource page | Email to author | IntelliVerse X Platform | prospect | — | — | Week 7; find via Google search |
| 35 | Roundup page 2 | [TBD during research] | Resource page | Email to author | IntelliVerse X Platform | prospect | — | — | Week 7; find via Google search |

**Status key:**
- `prospect` — identified but not contacted
- `sent` — outreach sent, awaiting response
- `landed` — link is live (record URL in `landed_url` column)
- `dead` — no response or declined

---

## 7. Measurement

### Tools

**Free tools (minimum viable tracking):**
- **Google Search Console** — monitor organic clicks, impressions, CTR, and keyword rankings for platform.intelli-verse-x.ai
  - Primary metrics: Total clicks, average position for target keywords (§1), referring domains (Links report)
- **Google Analytics 4** — track referral traffic from backlinks
  - Primary metrics: Referral traffic by source, session duration, conversion rate (signups from referral traffic)
- **Ahrefs Webmaster Tools (free tier)** — backlink monitoring
  - Primary metrics: Referring domains, DR (Domain Rating), backlink growth over time
- **Manual checks** — weekly spot-checks of directory listings (G2, Capterra, AlternativeTo) for reviews and ranking

**Paid tools (if budget allows):**
- **Ahrefs or Semrush (full)** — comprehensive backlink analysis, competitor comparison, keyword tracking
- **BuzzSumo** — monitor brand mentions and content performance

### Baseline numbers (as of 2026-05-17)

- **Referring domains:** 1-3 (estimated; precise count pending Ahrefs/Search Console data)
- **Top-3-keyword positions:** Not ranked (site is CSR SPA, minimal indexing until SSR migration per remediation playbook)
- **Organic clicks (30-day):** 0-10/month (estimated; Search Console data pending)
- **Organic CTR:** N/A (no ranking data)
- **G2 reviews:** 0
- **Capterra reviews:** 0
- **AlternativeTo reviews:** 0

**Baseline flag:** These are estimates based on limited external presence. Actual baseline will be recorded in Week 1 after Search Console and GA4 access confirmed.

### KPIs (90-day targets)

**Backlink targets:**
- **Referring domains:** 25-35 new referring domains (from current 1-3 to 28-38 total)
  - Breakdown: 14 SaaS directories, 11 internal cross-links, 2-3 editorial, 1 Product Hunt, 2-3 community/resource pages
- **Domain authority improvement:** +5-10 DA points (pending baseline; Ahrefs DR or Moz DA)

**Organic search targets:**
- **Top-10 rankings:** Achieve top-10 position for at least 2 of 5 primary intent keywords (§1) by Day 90
  - Priority keywords: "AI platform dashboard", "connected learning platform"
  - Note: Dependent on SSR migration (remediation Phase 2); if SSR not shipped, ranking improvement will be limited
- **Organic clicks:** 200-500/month by Day 90 (from current ~10/month)
- **Organic CTR:** 3-5% average across all queries

**Directory/review targets:**
- **G2 reviews:** 5+ reviews, 4.5+ star average
- **Capterra reviews:** 3+ reviews, 4.5+ star average
- **AlternativeTo reviews:** 5+ reviews, 4+ star average
- **Product Hunt upvotes:** 150+ on launch day

**Referral traffic targets:**
- **Total referral traffic:** 1,000-2,000 sessions over 90 days (from directory listings, Product Hunt, editorial)
- **Top referral sources:** G2, Capterra, AlternativeTo, Product Hunt, apex (intelli-verse-x.ai internal link)

### Review cadence

- **Weekly (Weeks 1-8):** Active outreach phase
  - Check: Directory submission status, internal link PR merge status, outreach email responses
  - Update: Outreach tracker (§6) with `sent` → `landed` status changes
  - Record: New referring domains in Ahrefs/Search Console, referral traffic in GA4
  
- **Bi-weekly (Weeks 9-12):** Monitoring phase
  - Check: Keyword ranking changes (Search Console), backlink growth (Ahrefs)
  - Analyze: Which tactics drove the most links and referral traffic
  - Adjust: If certain tactics underperform (e.g., Reddit posts get downvoted), deprioritize and reallocate effort

- **Monthly (post-90-day):** Maintenance phase
  - Check: New reviews on G2/Capterra/AlternativeTo (respond to all reviews)
  - Monitor: Backlink health (disavow toxic links if any appear)
  - Plan: Next 90-day cycle based on what worked

---

## 8. 90-day execution timeline

### Week 1: Foundation + Directory Blitz
- **Day 1-2:** Set up tracking (Search Console, GA4, Ahrefs Webmaster Tools); record baseline metrics
- **Day 3:** Submit to G2, Capterra (P0 directories)
- **Day 4:** Submit to AlternativeTo, GetApp (P0 directories)
- **Day 5:** Submit to SaaSHub, SourceForge, Software Suggest, Crozdesk (P1 directories)
- **Day 6:** Submit Slashdot Firehose story pitch
- **Day 7:** Review all directory submissions for errors; respond to admin questions

### Week 2: Internal Links + Review Solicitation (Phase 1)
- **Day 1:** Audit internal link structure across all subdomains
- **Day 2:** Create internal link copy templates (§5 C2)
- **Day 3:** Open PRs for apex (CRITICAL) + quiz + tutor + quests (P0 internal links)
- **Day 4:** Open PRs for products + marketx + gaming (P1 internal links)
- **Day 5:** Open PRs for animator + ai-host + ai-chat-v2 (P1 internal links)
- **Day 6-7:** Solicit reviews for G2 (5 users) and Capterra (3 users); send emails with incentive

### Week 3: Directory Expansion + Review Solicitation (Phase 2)
- **Day 1:** Submit to TrustRadius, SoftwareAdvice (P2 directories)
- **Day 2:** Submit to Featured Customers, FinancesOnline, SaaSGenius (P2 directories)
- **Day 3-5:** Follow up with users who haven't left reviews; send reminder emails
- **Day 6:** Check status of internal link PRs; merge if approved
- **Day 7:** Update outreach tracker with `landed` links

### Week 4: AlternativeTo Seeding
- **Day 1:** Verify AlternativeTo listing is live
- **Day 2-4:** Solicit 5+ user reviews for AlternativeTo (email campaign)
- **Day 5:** Once 5+ reviews live, comment on "Notion alternatives" and "Kahoot alternatives" pages suggesting IntelliVerse X Platform
- **Day 6-7:** Research external roundup pages (Google search for "best productivity platforms 2026")

### Week 5: Product Hunt Launch
- **Day 1 (T-14):** Hunter outreach (contact 3-5 hunters in Productivity/Education categories)
- **Day 3 (T-10):** Finalize gallery assets (5 screenshots, demo video, thumbnail)
- **Day 5 (T-7):** Draft maker comment, FAQ answers, social amplification plan
- **Day 8 (T-0):** **Launch on Product Hunt**
  - Post maker comment immediately
  - Monitor comments all day; reply within 30 minutes
  - Social amplification (Twitter/X, LinkedIn, Discord)
- **Day 9:** Post-launch follow-up; thank community; record upvote count and secondary links
- **Day 10-14:** Monitor Product Hunt aggregators for secondary listings

### Week 6: Editorial Outreach (Phase 1)
- **Day 1-2:** Build press kit (logo, screenshots, demo video, boilerplate, case study)
- **Day 3:** Research 10 journalists (TechCrunch, EdSurge, The Verge, Fast Company, productivity blogs)
- **Day 4-5:** Draft 3 pitch angles (§5 C5: unbundling productivity, cross-product AI, learn-to-earn)
- **Day 6-7:** Send pitches to 5 journalists (personalized emails)

### Week 7: Resource Page Outreach
- **Day 1-2:** Identify 5 external roundup pages ("best learning platforms", "best productivity tools")
- **Day 3-4:** Draft outreach emails (§5 C4: value-driven pitch, not "please link")
- **Day 5-6:** Send outreach emails to 5 roundup authors
- **Day 7:** Update outreach tracker; record responses

### Week 8: Editorial Outreach (Phase 2)
- **Day 1-3:** Follow up with journalists who didn't respond (one short follow-up email)
- **Day 4-5:** Send pitches to remaining 5 journalists (second batch)
- **Day 6-7:** Respond to any journalist replies; schedule interviews or provide demo access

### Week 9-10: Community Engagement (Reddit, Forums)
- **Day 1:** Draft substantive Reddit post for r/productivity (not promotional; focus on workflow/productivity insights with platform as example)
- **Day 2:** Post to r/productivity (Tools thread or standalone)
- **Day 3:** Monitor Reddit post; reply to comments with genuine engagement
- **Day 5:** Draft post for r/EdTech (tool discussion or education technology trends)
- **Day 6:** Post to r/EdTech
- **Day 7-10:** Monitor both posts; engage with community

### Week 11-12: Monitoring + Optimization
- **Day 1-3:** Review all campaigns: which tactics landed the most links? Which drove referral traffic?
- **Day 4-5:** Check Search Console for keyword ranking changes; analyze which keywords are moving
- **Day 6:** Respond to all G2/Capterra/AlternativeTo reviews (thank users, address feedback)
- **Day 7-10:** Plan next 90-day cycle: double down on what worked, cut what didn't
- **Day 11-14:** Final outreach tracker update; record all landed links; calculate final KPIs

**Note on sequencing:**
- Product Hunt (Week 5) runs mid-cycle to avoid collision with directory setup (Weeks 1-3) and editorial outreach (Weeks 6-8)
- Reddit posts (Weeks 9-10) run late to avoid appearing promotional before Product Hunt launch
- Editorial outreach (Weeks 6-8) runs after directories are live, so journalists can see third-party validation

---

## 9. Risks and counter-indicators

### Over-optimization warning signs

**Anchor text distribution red flags:**
- **Risk:** If >20% of anchors are exact-match ("AI platform dashboard", "connected learning platform"), Google may flag as manipulative link building
- **Prevention:** Strict adherence to §4 anchor plan (max 10% exact-match); use branded and partial-match anchors for majority of links
- **Monitor:** Monthly audit of anchor text distribution in Ahrefs; if exact-match exceeds 15%, pause new exact-match link building

**Directory spam patterns:**
- **Risk:** Submitting to 50+ low-quality directories (sites with DA <30, spammy UI, no editorial oversight) triggers Penguin-style penalties
- **Prevention:** Only target reputable directories (§3 list is curated for DA 50+ and legitimate user bases)
- **Counter-indicator:** If a directory requires payment for "dofollow" links, skip it (link selling is against Google guidelines)

**Internal link over-optimization:**
- **Risk:** Adding 20+ internal links with exact-match anchors from subdomains could appear manipulative
- **Prevention:** Use branded and generic anchors for internal links (§5 C2 templates); ensure links provide functional value to users (not just SEO)
- **Counter-indicator:** If internal links don't serve a user journey purpose (e.g., "View Dashboard" from a page where dashboard access makes no sense), skip the link

### PBN/low-quality links to refuse

**Never accept links from:**
- **Private Blog Networks (PBNs):** Sites that exist solely to sell links; often hosted on expired domains with unrelated content
  - **Detection:** Check domain history (Wayback Machine); if content drastically changed recently and now links to random sites, it's a PBN
- **Link farms:** Sites with 100+ outbound links per page, no editorial process, spammy UI
  - **Example:** "Submit your site for $5" directories with no quality control
- **Irrelevant directories:** General business directories where platform software doesn't fit (e.g., local business directories, B2C product marketplaces)
- **Foreign-language directories (unless targeting that market):** Links from non-English directories won't drive relevant traffic and may confuse Google about target audience
- **"Guest post" offers that require payment:** If someone emails "Pay $100 for a guest post with dofollow link on my DA 60 site," it's a link scheme

**If offered a low-quality link:**
- Decline politely: "Thanks, but we're focusing on organic link building through product quality and community engagement."
- Do NOT disavow preemptively (Google ignores most low-quality links automatically)
- Only disavow if: (a) you accidentally built spammy links, or (b) negative SEO attack (someone deliberately builds toxic links to your site)

### When to walk away from a campaign (acceptance criteria)

**Product Hunt (C3):**
- **Walk away if:** Launch gets <50 upvotes by end of Day 1 (indicates poor timing or weak value proposition)
- **Action:** Don't repeat Product Hunt launches (only get one shot every 6 months); pivot to Show HN or Reddit instead

**Editorial outreach (C5):**
- **Walk away if:** 0 of 10 journalists respond after follow-up (indicates pitch angle is off or product isn't newsworthy yet)
- **Action:** Wait until product has stronger traction (1,000+ users, case studies, revenue milestones) before re-attempting editorial outreach

**AlternativeTo seeding (C4):**
- **Walk away if:** Can't get 5 user reviews after 3 weeks of solicitation (indicates low user engagement or satisfaction)
- **Action:** Focus on improving product and user experience before pushing for external validation

**Reddit posts (Weeks 9-10):**
- **Walk away if:** First post gets downvoted to 0 or flagged as spam (indicates community sees it as promotional)
- **Action:** Do NOT double down with more posts; pivot to value-driven content (write blog posts, create tools/resources for the community, engage without self-promotion for 3-6 months)

**General acceptance criteria:**
- **Success threshold:** Campaign should yield at least 2 links OR 200+ referral visits OR 1 editorial mention to be considered worthwhile
- **Failure threshold:** If a tactic costs >10 hours and yields 0 links + 0 traffic after 30 days, deprioritize and reallocate effort to higher-ROI tactics

---

## 10. Open questions and assumptions

### Assumptions (unverified; require owner input)

1. **User base size:**
   - **Assumption:** Platform has 100+ active users (30-day active) who can be solicited for reviews
   - **If false:** Directory review targets (5+ reviews on G2/Capterra) may be unrealistic; adjust to 2-3 reviews or delay directory submissions until user base grows

2. **Product maturity:**
   - **Assumption:** Platform dashboard is feature-complete enough for public Product Hunt launch (no major bugs, onboarding works, cross-product navigation functions)
   - **If false:** Delay Product Hunt to Week 8-10; use Weeks 5-7 to stabilize product based on internal testing

3. **SSR migration timeline (from remediation playbook):**
   - **Assumption:** SSR migration (remediation Phase 2) will NOT complete within 90 days
   - **Impact:** Keyword ranking improvements will be limited; backlinks will provide domain authority but not immediate organic traffic until SSR ships
   - **If SSR ships early:** Accelerate keyword ranking KPIs; re-measure after SSR launch

4. **Founder/product lead availability:**
   - **Assumption:** Founder or product lead is available for:
     - Product Hunt launch day (reply to comments in real-time)
     - Journalist interviews (if editorial outreach succeeds)
     - User testimonial/case study development
   - **If false:** Delegate to marketing lead or community manager; adjust editorial outreach timeline to match availability

5. **Budget for paid directory listings:**
   - **Assumption:** Budget is $0 for paid directory placements (using only free tiers)
   - **If budget available:** Prioritize paid G2/Capterra listings (higher placement in category, review widgets, comparison pages) — ROI is strong if targeting enterprise buyers

6. **Brand guidelines for anchor text:**
   - **Assumption:** "IntelliVerse X Platform" is the preferred branded anchor (not "Intelliverse Platform" or "Intelliverse-X")
   - **Verification needed:** Confirm with marketing/brand team; update §4 anchor plan if different capitalization or spacing required

7. **Competitive positioning:**
   - **Assumption:** Positioning as "alternative to Notion + Kahoot hybrid" is accurate and non-controversial
   - **If sensitive:** Some competitors (especially larger ones like Notion) may take issue with direct comparison in outreach; adjust language to "complementary to" rather than "alternative to"

### Open questions (require owner input)

1. **Which public pages should be indexed?**
   - **Question:** Is the platform dashboard post-login, or are there public-facing pages (landing page, features, pricing) that should rank?
   - **Impact on backlinks:** If dashboard is auth-gated, backlinks should point to public landing page (if it exists) rather than platform.intelli-verse-x.ai/dashboard
   - **Recommendation:** Clarify with development team; update remediation playbook with robots.txt rules (noindex for /dashboard, /account, /settings)

2. **Review solicitation incentives:**
   - **Question:** Is it acceptable to offer ecosystem rewards (100 points, premium trial, etc.) in exchange for reviews?
   - **Compliance note:** G2 and Capterra allow incentivized reviews IF disclosed ("We offered a reward for this review") but prohibit cash payments
   - **Recommendation:** Confirm legal/compliance approval before sending review solicitation emails with incentives

3. **User testimonials/case studies:**
   - **Question:** Are there any users willing to be named in case studies or testimonials for press kit?
   - **Impact:** Editorial outreach (C5) is much stronger with real user stories ("How [Student Name] improved learning efficiency by 40% with IntelliVerse X Platform")
   - **Action:** Identify 2-3 power users and request permission to profile them

4. **Product Hunt hunter availability:**
   - **Question:** Do we have an existing relationship with a Product Hunt hunter, or should we cold-outreach?
   - **Alternative:** Self-hunting is allowed but gets lower visibility; partnering with an active hunter (300+ followers) increases chances of featured placement
   - **Recommendation:** Allocate 2-3 days for hunter outreach in Week 5 (T-14)

5. **Podcast/interview interest:**
   - **Question:** Is founder/product lead interested in podcast appearances? (Deferred tactic in §3; not in 90-day plan)
   - **Potential targets:** EdTech podcasts (Teaching in Higher Ed, EdSurge Podcast), SaaS podcasts (SaaS Revolution Show, The SaaS Podcast), productivity podcasts (Cortex, Focused)
   - **ROI:** Podcasts provide 1 link + long-tail brand awareness but require 3-5 hours prep + recording time
   - **Recommendation:** Deprioritize until post-90-day if bandwidth is limited; focus on written editorial first

6. **Internal cross-link implementation:**
   - **Question:** Who reviews/approves PRs for internal link additions across subdomains? (10 PRs required in §5 C2)
   - **Timeline concern:** If PR review is slow (>1 week per repo), internal link campaign may extend beyond Week 3
   - **Recommendation:** Assign one reviewer across all repos to expedite; batch PRs for same-day review

7. **Geographic targeting:**
   - **Question:** Is platform targeting global users or specific regions (e.g., US, India, Europe)?
   - **Impact on directories:** Some directories are region-specific (Software Suggest = India-focused, FinancesOnline = Europe-focused)
   - **Recommendation:** If global, keep all directories; if US-only, deprioritize region-specific directories

---

## End of playbook

**Next steps for implementation:**

1. **Resolve open questions (§10):** Schedule 30-minute sync with founder/product lead to answer unverified assumptions and open questions
2. **Set up tracking (Week 1, Day 1-2):** Verify Search Console, GA4, and Ahrefs Webmaster Tools access; record baseline metrics
3. **Begin execution (Week 1, Day 3):** Start directory submissions (G2, Capterra, AlternativeTo, GetApp)
4. **Update outreach tracker (ongoing):** Maintain §6 CSV in Google Sheets or Notion; update weekly with `sent`/`landed` status
5. **Weekly review:** Every Friday, review progress against timeline (§8); adjust if campaigns fall behind

**Commit this playbook to repo:**
- File: `/gt/audits/crew/auditor/backlinks/platform.md` (already at this path)
- Cross-link: Reference from `remediation/platform.md` and `pr-results.json`
- Bead update: Attach playbook path to bead metadata, mark `in_progress` → `complete` when execution begins

**Target for Draft PR (Week 1):**
- Add to repo: intelli-verse-x/Intelliverse-X-User-Webfrontend
- Files: `docs/seo/backlinks.md` (this playbook), `docs/seo/outreach.csv` (§6 tracker)
- PR title: `seo: backlink strategy & outreach tracker for platform dashboard`
- Link PR in bead metadata

---

**Playbook complete. Ready for execution.**
