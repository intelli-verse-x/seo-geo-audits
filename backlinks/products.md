# Backlink Strategy Playbook — products (products.intelli-verse-x.ai)

**Cross-reference**: [On-page remediation playbook](../remediation/products.md) | [Existing PR #90](https://github.com/intelli-verse-x/Intelliverse-X-Products/pull/90)

---

## 1. Project snapshot

- **Hostname:** https://products.intelli-verse-x.ai
- **GitHub repo:** intelli-verse-x/Intelliverse-X-Products
- **Existing PR (SEO/GEO baseline):** [PR #90](https://github.com/intelli-verse-x/Intelliverse-X-Products/pull/90) — SEO + GEO remediation baseline
- **Stack:** Next.js (product catalog hub)
- **Primary persona:** Developers evaluating IntelliVerse X capabilities, potential customers comparing products, AI researchers surveying the ecosystem, business decision-makers assessing platform breadth, educators looking for integrated learning tools
- **Primary intent keywords (3-5):**
  - `"IntelliVerse X product catalog"`
  - `"AI platform products ecosystem"`
  - `"connected education and gaming tools"`
  - `"AI-powered product suite"`
  - `"integrated AI solutions catalog"`

**Context:** This is the **catalog hub** for the entire IntelliVerse X ecosystem. It serves as a discovery layer where users can explore all 15+ products (tutor, quiz, quests, animator, gaming, marketx, kiosk, ai-chat-v2, platform, etc.). **Internal cross-linking from the apex domain and from each product back to this catalog is CRITICAL** — it creates a hub-spoke navigation model that improves crawlability and distributes PageRank across the network. External backlinks amplify this hub's authority and make the catalog itself a standalone SEO asset.

**Current state:** The subdomain currently returns HTTP 404 (see [remediation playbook](../remediation/products.md)), so backlink work must begin AFTER deployment. Priority is P1 once the site is live.

---

## 2. Current backlink profile

### Research methodology

Using firecrawl search + manual analysis (May 2026):
- `firecrawl scrape https://products.intelli-verse-x.ai` — site returns HTTP 404, no content available
- `firecrawl search "products.intelli-verse-x.ai"` — no external mentions found
- Manual checks: No directory listings, no GitHub references, no social mentions

### Current state

- **Estimated referring domains:** 0 (site is not live)
- **Example domains found:** None — no backlinks exist because the site is non-functional
- **Quality flags:** N/A — no links to audit
- **Anchor text distribution today:** N/A — no anchor text exists
- **Gap analysis — competitors:**

  **1. Canva Apps Marketplace (canva.com/your-apps):**
  - Estimated 50,000+ referring domains to parent domain, ~500-1,000 specific to apps catalog
  - Coverage: Product blogs ("best design tools" lists), app store comparison sites, integration partner pages
  - Directory presence: Product Hunt (marketplace category), design tool roundups, Zapier integration pages
  - Gap: 500-1,000 domains

  **2. Salesforce AppExchange (appexchange.salesforce.com):**
  - Estimated 80,000+ referring domains to parent domain, ~2,000-3,000 specific to AppExchange catalog
  - Coverage: B2B SaaS blogs, CRM comparison sites, developer documentation, partner ecosystem pages
  - Directory presence: G2, Capterra, TrustRadius, extensive editorial coverage
  - Gap: 2,000-3,000 domains

  **3. Atlassian Marketplace (marketplace.atlassian.com):**
  - Estimated 40,000+ referring domains to parent domain, ~1,000-1,500 specific to marketplace catalog
  - Coverage: Dev tool blogs, integration roundups, Jira/Confluence tutorial sites, plugin comparison sites
  - Directory presence: Product Hunt, AlternativeTo, developer forums, awesome-lists for project management tools
  - Gap: 1,000-1,500 domains

**Realistic 90-day target:** Move from 0 to 25-35 high-quality referring domains. Focus heavily on internal cross-linking (8-10 internal links), product directories, AI tool aggregators, and GitHub awesome-lists. Since the catalog is a discovery surface (not a standalone product), external link acquisition will be slower than for individual products — the strategy is to establish it as the **definitive directory** for IntelliVerse X, making it a reference point.

**12-month target:** 100-150 referring domains with strong emphasis on:
- Every IntelliVerse X product linking back to the catalog
- Directory listings where the catalog itself is the submission (not individual products)
- Resource pages that reference "IntelliVerse X offers [X products]" with catalog link
- Editorial mentions in AI/platform roundups

---

## 3. Target referring domains (the prospect list)

### Priority P0 (weeks 1-4, AFTER site deployment) — 10 targets

**CRITICAL:** All P0 targets are **internal cross-links** — these must be completed first to establish hub authority and crawlability.

| # | Domain | URL | Why it ranks | Target page/section | Contact path | Anchor plan | Effort | Priority |
|---|--------|-----|--------------|---------------------|--------------|-------------|--------|----------|
| 1 | **Internal: intelli-verse-x.ai (apex)** | intelli-verse-x.ai | Root domain — DA flows to all subdomains | Homepage navigation bar + "Explore Products" hero CTA + footer | Internal — edit apex repo | "Explore Our Products" (CTA), "View All Products" (nav), "Products" (footer) | 1 hr | P0 |
| 2 | **Internal: tutor.intelli-verse-x.ai** | tutor.intelli-verse-x.ai | EdTech product — users may want to see other education tools | Footer "More Products" section + About page "Part of IntelliVerse X" | Internal — edit tutor repo | "Explore more IntelliVerse X products" | 30 min | P0 |
| 3 | **Internal: quiz.intelli-verse-x.ai** | quiz.intelli-verse-x.ai | Quiz product — natural cross-sell to quizx and tutor | Footer + sidebar "Discover more tools" | Internal — edit quiz repo | "See all IntelliVerse X products" | 30 min | P0 |
| 4 | **Internal: quizx.intelli-verse-x.ai** | quizx.intelli-verse-x.ai | Elite quiz product — users may compare with quiz and tutor | Footer + About page | Internal — edit quizx repo | "Browse the full product catalog" | 30 min | P0 |
| 5 | **Internal: animator.intelli-verse-x.ai** | animator.intelli-verse-x.ai | Content creation tool — users may need tutoring or other tools | Footer "IntelliVerse X Ecosystem" + docs sidebar | Internal — edit animator repo | "View all IntelliVerse X solutions" | 30 min | P0 |
| 6 | **Internal: quests.intelli-verse-x.ai** | quests.intelli-verse-x.ai | Gamification product — strong tie to gaming, quiz, tutor | Footer + About page "Part of the ecosystem" | Internal — edit quests repo | "Discover other IntelliVerse X products" | 30 min | P0 |
| 7 | **Internal: gaming.intelli-verse-x.ai** | gaming.intelli-verse-x.ai | Gaming backend — developers may want to see full product suite | Footer + docs "Platform Products" section | Internal — edit gaming repo | "IntelliVerse X Product Catalog" | 30 min | P0 |
| 8 | **Internal: marketx.intelli-verse-x.ai** | marketx.intelli-verse-x.ai | Marketplace — sellers/buyers may want to see other products | Footer + "About IntelliVerse X" page | Internal — edit marketx repo | "See all IntelliVerse X products" | 30 min | P0 |
| 9 | **Internal: ai-chat-v2.intelli-verse-x.ai** | ai-chat-v2.intelli-verse-x.ai | AI chat product — users may want to see tutor, quests, etc. | Footer + About section | Internal — edit ai-chat-v2 repo | "Explore the IntelliVerse X ecosystem" | 30 min | P0 |
| 10 | **Internal: platform.intelli-verse-x.ai** | platform.intelli-verse-x.ai | User dashboard — natural place to showcase all available products | Dashboard sidebar "Browse Products" + footer | Internal — edit platform repo | "Browse all products" (CTA button), "Product Catalog" (footer) | 1 hr | P0 |

**Internal cross-link implementation notes:**

Each product should include:
1. **Footer link** — standard across all properties: "IntelliVerse X Products" → https://products.intelli-verse-x.ai
2. **Contextual link** — on About/Ecosystem page: "Explore our full [product catalog](https://products.intelli-verse-x.ai) including education, gaming, AI, and marketplace solutions."
3. **Dashboard/nav link** — for logged-in products (platform, quiz, tutor): sidebar or nav dropdown with "All Products" link

**Apex domain (intelli-verse-x.ai) is HIGHEST PRIORITY** — a hero CTA "Explore Our Products" drives traffic and distributes PageRank to the catalog.

---

### Priority P1 (weeks 5-8) — 8 targets

| # | Domain | URL | Why it ranks | Target page/section | Contact path | Anchor plan | Effort | Priority |
|---|--------|-----|--------------|---------------------|--------------|-------------|--------|----------|
| 11 | **Product Hunt** | producthunt.com | DA 92, "AI Tools" and "Developer Tools" categories, catalog format fits well | Submit as "IntelliVerse X Product Catalog" in Developer Tools category | Self-submit via account | "IntelliVerse X Product Catalog" (branded) | 6 hrs (gallery, description emphasizing breadth) | P1 |
| 12 | **AlternativeTo** | alternativeto.net | Platform directory, good for "alternatives to Salesforce AppExchange" or "alternatives to Canva Apps" | /category/developer-tools/ or /software/salesforce-appexchange/ alternatives list | Self-submit "Add application" | "IntelliVerse X Product Catalog" | 2 hrs | P1 |
| 13 | **GitHub: awesome-ai-tools** | github.com/mahseema/awesome-ai-tools | 2,700+ stars, AI tools aggregator | "Product Suites" or "Platforms" section (may need to propose new section) | PR to repo | "IntelliVerse X Product Catalog — AI-powered education, gaming, and business tools" | 1 hr | P1 |
| 14 | **GitHub: awesome-product** | github.com/dypsilon/frontend-dev-bookmarks (closest proxy for product tooling) | 42,000+ stars, ecosystem tools | "Ecosystem" or "Platforms" section | PR to repo | "IntelliVerse X — Comprehensive AI product ecosystem" | 1 hr | P1 |
| 15 | **There's An AI For That** | theresanaiforthat.com | AI tools directory, 50K+ monthly visitors, trending in 2026 | "AI Platforms" or "Multi-Product AI Suites" category | Submit via contact form | "IntelliVerse X Product Catalog — AI solutions for education, gaming, and business" | 1 hr | P1 |
| 16 | **Futurepedia** | futurepedia.io | AI directory, clean UI, good SEO for AI tool searches | General AI platforms category | Submit via form | "IntelliVerse X AI Product Suite" | 1 hr | P1 |
| 17 | **AI Tools Directory** | aitoolsdirectory.com | Accepting submissions, multiple categories | "AI Platforms" or "Multi-Tool Suites" | Submit tool form | "AI-powered product catalog for education and gaming" | 1 hr | P1 |
| 18 | **Internal: kiosk.intelli-verse-x.ai** | kiosk.intelli-verse-x.ai | Kiosk display product — may need to link to other products for cross-sell | Footer + About section | Internal — edit kiosk repo | "IntelliVerse X Products" | 30 min | P1 |

---

### Priority P2 (weeks 9-12) — 7 targets

| # | Domain | URL | Why it ranks | Target page/section | Contact path | Anchor plan | Effort | Priority |
|---|--------|-----|--------------|---------------------|--------------|-------------|--------|----------|
| 19 | **G2** | g2.com | B2B software review site, DA 90 | "AI Platforms" or "Product Suites" category | Claim profile / paid listing | "IntelliVerse X" | 4 hrs (profile + solicit reviews) | P2 |
| 20 | **Capterra** | capterra.com | Gartner-owned directory, DA 94 | "AI Software" or "Business Platforms" | Submit software form | "IntelliVerse X Product Catalog" | 3 hrs | P2 |
| 21 | **Stackshare** | stackshare.io | Developer-focused stack directory, shows product ecosystems | Create company profile with full product stack listed | Self-submit via account | "IntelliVerse X" (branded), individual product anchors in description | 2 hrs | P2 |
| 22 | **Slant** | slant.co | Community-driven product recommendations, "What are the best..." lists | Create listing for "What are the best AI product suites?" | Self-submit via account | "IntelliVerse X Product Suite" | 2 hrs | P2 |
| 23 | **ToolPilot** | toolpilot.ai | AI tool discovery platform (new in 2026) | Multi-product platform category | Submit via contact | "IntelliVerse X — AI product catalog" | 1 hr | P2 |
| 24 | **Insidr.AI** | insidr.ai | AI news and tools aggregator | Tools directory submission | Submit via form | "IntelliVerse X AI Products" | 1 hr | P2 |
| 25 | **AI Scout** | aiscout.com | AI tools comparison site | Platform/Suite category | Submit via form | "IntelliVerse X Product Ecosystem" | 1 hr | P2 |

---

### Tactic coverage validation

✅ **Industry directories** (9): Product Hunt, AlternativeTo, There's An AI For That, Futurepedia, AI Tools Directory, G2, Capterra, Stackshare, Slant, ToolPilot, Insidr.AI, AI Scout  
✅ **Awesome-lists on GitHub** (2): awesome-ai-tools, frontend-dev-bookmarks (proxy for product tooling)  
✅ **Niche communities** (see §5 Campaign 3 — Reddit r/SideProject, r/webdev, Dev.to showcase)  
✅ **Editorial / digital PR** (see §5 Campaign 5 — AI platform roundups, ecosystem reviews)  
✅ **Resource page / link-insert** (see §5 Campaign 4 — "best AI platforms 2026" outreach)  
✅ **Podcast / interview** (deferred — catalog is not a standalone product; focus podcasts on individual products like tutor, quests)  
✅ **Internal cross-linking** (10): Apex + tutor + quiz + quizx + animator + quests + gaming + marketx + ai-chat-v2 + platform + kiosk  

**Note on podcast/interview skip:** Product catalogs are typically not interview-worthy on their own — the individual products (tutor, quests, animator) are better podcast candidates. If a podcast opportunity arises for "the IntelliVerse X ecosystem," the host landing page should be the apex domain (intelli-verse-x.ai), with the catalog referenced as "explore all our products at products.intelli-verse-x.ai."

---

## 4. Anchor text plan

Target distribution across four anchor classes, optimized for a **catalog/hub site** (more branded, less exact-match than standalone products):

### Branded (target 50% — 13 of 25 links in 90 days)

**Examples (5+):**
1. "IntelliVerse X Product Catalog"
2. "IntelliVerse X Products"
3. "products.intelli-verse-x.ai"
4. "IntelliVerse X Ecosystem"
5. "View IntelliVerse X Products"
6. "IntelliVerse X Product Suite"
7. "Explore IntelliVerse X Products"

**Use cases:** All internal cross-links (footer, nav, About pages), directory listings, GitHub awesome-list entries, branded CTA buttons on apex domain.

**Why 50% (higher than typical 45%):** Catalog sites benefit from strong brand association because users are searching for "brand X products" or "brand X catalog" more than generic catalog terms.

---

### Generic (target 15% — 4 of 25 links)

**Examples (5+):**
1. "explore our products"
2. "see all products"
3. "browse the catalog"
4. "learn more"
5. "here"
6. "view all"
7. "discover more"

**Use cases:** Internal cross-links where design prefers minimal anchor text (e.g., "See all →"), Reddit posts, forum mentions, natural editorial inclusions.

---

### Exact-match (target 5% CEILING — 1-2 of 25 links MAX)

**Examples (5+):**
1. "AI product catalog" ← use sparingly
2. "AI platform products" ← limit to 1 use
3. "integrated AI solutions catalog" ← avoid unless editorial
4. "connected education and gaming tools" ← avoid
5. "AI-powered product suite" ← avoid

**CRITICAL WARNING:** Product catalog sites are at HIGHER RISK for over-optimization because "catalog" and "products" are commercial intent keywords. Exact-match anchors should be used ONLY in:
- One Product Hunt tagline
- One editorial mention where journalist naturally writes the phrase
- One GitHub awesome-list description (if it fits naturally in "Platforms" section)

**NEVER use exact-match for:**
- Internal cross-links (always use branded or generic)
- Directory submissions where the site name already contains "products" (redundant anchor)
- Any paid or sponsored placement

---

### Partial-match / Semantic (target 30% — 8 of 25 links)

**Examples (5+):**
1. "AI-powered product ecosystem"
2. "catalog of IntelliVerse X solutions"
3. "IntelliVerse X product directory"
4. "explore AI education and gaming products"
5. "comprehensive AI platform with multiple products"
6. "product catalog for AI tools"
7. "IntelliVerse X product overview"
8. "catalog showcasing AI education, gaming, and business tools"
9. "product suite for developers and educators"
10. "directory of connected AI products"

**Use cases:** Product Hunt description, AlternativeTo user reviews, GitHub PR descriptions, editorial pitches ("we built a catalog of AI products that..."), resource page outreach, AI directory submissions.

---

### Forbidden anchors (NEVER use — Penguin triggers)

❌ "best product catalog"  
❌ "top AI products"  
❌ "free product catalog"  
❌ "product catalog software" (misleading — this is a catalog OF products, not a catalog-building tool)  
❌ "AI marketplace" (misleading — that's marketx.intelli-verse-x.ai, not the catalog)  
❌ Any anchor containing "buy" or "shop" (this is a discovery catalog, not a direct e-commerce site)  

---

## 5. Five tactical campaigns (with deliverables)

---

### C1 — Internal Cross-Link Sweep (HIGHEST PRIORITY)

**Timeline:** Week 1-2 (immediately after products.intelli-verse-x.ai is deployed)

**Goal:** Establish products.intelli-verse-x.ai as the central hub by adding contextual links from all 10+ IntelliVerse X properties.

**Deliverables:**

1. **Apex domain (intelli-verse-x.ai) — Homepage hero CTA**
   - Location: Hero section, above-the-fold
   - Copy: "Explore Our Products →" (button)
   - Anchor: "Explore Our Products" (generic + CTA)
   - File: `app/page.tsx` or `components/Hero.tsx`
   - Implementation:
     ```tsx
     <a href="https://products.intelli-verse-x.ai" className="cta-button">
       Explore Our Products →
     </a>
     ```

2. **Apex domain — Navigation bar**
   - Location: Main nav (desktop: top bar, mobile: hamburger menu)
   - Copy: "Products" (nav item)
   - Anchor: "Products" (branded)
   - File: `components/Navbar.tsx`
   - Implementation:
     ```tsx
     <nav>
       <a href="https://intelli-verse-x.ai">Home</a>
       <a href="https://products.intelli-verse-x.ai">Products</a>
       <a href="https://platform.intelli-verse-x.ai">Platform</a>
     </nav>
     ```

3. **Apex domain — Footer**
   - Location: Footer "Quick Links" section
   - Copy: "Product Catalog" (footer link)
   - Anchor: "Product Catalog" (branded)
   - File: `components/Footer.tsx`
   - Implementation:
     ```tsx
     <footer>
       <div className="footer-section">
         <h4>Quick Links</h4>
         <a href="https://products.intelli-verse-x.ai">Product Catalog</a>
         <a href="https://platform.intelli-verse-x.ai">Dashboard</a>
       </div>
     </footer>
     ```

4. **Product subdomains (tutor, quiz, quizx, animator, quests, gaming, marketx, ai-chat-v2, kiosk) — Footer links**
   - Location: Footer "IntelliVerse X Ecosystem" or "More Products" section
   - Copy: "See all IntelliVerse X products →"
   - Anchor: "See all IntelliVerse X products" (generic)
   - File: Each repo's `components/Footer.tsx` or equivalent
   - Implementation (example for tutor.intelli-verse-x.ai):
     ```tsx
     <footer>
       <div className="footer-section">
         <h4>IntelliVerse X Ecosystem</h4>
         <p>
           AI Tutor is part of the IntelliVerse X platform. 
           <a href="https://products.intelli-verse-x.ai">See all IntelliVerse X products →</a>
         </p>
       </div>
     </footer>
     ```

5. **Product subdomains — About page contextual link**
   - Location: About page or "Part of IntelliVerse X" section
   - Copy: "AI Tutor is part of the IntelliVerse X ecosystem. Explore our full [product catalog](https://products.intelli-verse-x.ai) including education tools, gaming platforms, AI chat, and more."
   - Anchor: "product catalog" (branded)
   - File: `app/about/page.tsx` or `pages/about.tsx`
   - Implementation:
     ```tsx
     <section className="about-ecosystem">
       <h2>Part of IntelliVerse X</h2>
       <p>
         AI Tutor is part of the IntelliVerse X ecosystem. Explore our full{' '}
         <a href="https://products.intelli-verse-x.ai">product catalog</a>{' '}
         including education tools, gaming platforms, AI chat, and more.
       </p>
     </section>
     ```

6. **Platform dashboard (platform.intelli-verse-x.ai) — Sidebar "Browse Products" CTA**
   - Location: Dashboard sidebar (for logged-in users)
   - Copy: "Browse Products" (button)
   - Anchor: "Browse Products" (branded CTA)
   - File: `components/Sidebar.tsx`
   - Implementation:
     ```tsx
     <aside className="dashboard-sidebar">
       <nav>
         <a href="/dashboard">Dashboard</a>
         <a href="/profile">Profile</a>
         <a href="https://products.intelli-verse-x.ai" className="cta-sidebar">
           Browse Products
         </a>
       </nav>
     </aside>
     ```

**Expected outcome:** 10 high-quality internal links within 2 weeks. These links:
- Establish products.intelli-verse-x.ai as the ecosystem hub
- Distribute PageRank from apex domain (highest DA) to catalog
- Improve crawlability — Googlebot discovers catalog from every product
- Create natural user journey — users on any product can discover others

**Verification:**
```bash
# Check that each subdomain links to products.intelli-verse-x.ai
for subdomain in intelli-verse-x.ai tutor.intelli-verse-x.ai quiz.intelli-verse-x.ai quizx.intelli-verse-x.ai animator.intelli-verse-x.ai quests.intelli-verse-x.ai gaming.intelli-verse-x.ai marketx.intelli-verse-x.ai ai-chat-v2.intelli-verse-x.ai platform.intelli-verse-x.ai kiosk.intelli-verse-x.ai; do
  echo "Checking $subdomain..."
  curl -sS https://$subdomain | grep -o 'href="https://products.intelli-verse-x.ai[^"]*"' || echo "❌ No link found"
done
```

**GitHub PRs needed:**
- PR to intelli-verse-x/Intelliverse-x-frontend-revamp (apex)
- PR to intelli-verse-x/DeepTutor (tutor)
- PR to intelli-verse-x/Quizverse-web-frontend (quiz)
- PR to intelli-verse-x/quiz-verse-elite (quizx)
- PR to intelli-verse-x/ManimCat (animator)
- PR to intelli-verse-x/quests-economy (quests)
- PR to intelli-verse-x/Intelliverse-X-Gaming_backend (gaming)
- PR to intelli-verse-x/IntelliMarketX-frontend (marketx)
- PR to intelli-verse-x/Intelliverse-X-AI-chat-assistance (ai-chat-v2)
- PR to intelli-verse-x/Intelliverse-X-User-Webfrontend (platform)
- PR to intelli-verse-x/intelliverse-x-kiosk-frontend (kiosk)

Title for each PR: `feat: add link to IntelliVerse X product catalog`

Body template:
```
## Summary
Adds contextual link to products.intelli-verse-x.ai in footer and About page to improve ecosystem discoverability.

## Changes
- Footer: Added "See all IntelliVerse X products" link
- About page: Added ecosystem description with product catalog link

## SEO impact
- Improves internal linking structure
- Establishes products.intelli-verse-x.ai as catalog hub
- Enhances user discovery of related products

Part of ecosystem-wide backlink strategy.
```

---

### C2 — Product Hunt Launch

**Timeline:** Week 3-4 (after internal cross-links are live)

**Goal:** Secure 1 strong dofollow link from Product Hunt (DA 92) + secondary links from aggregators that re-list top Product Hunt products.

**Pre-launch (T-14 to T-0):**

1. **Hunter ask** (T-14):
   - Target hunter: Find someone in developer tools or AI community with 500+ followers
   - Outreach template:
     ```
     Subject: Hunter ask — IntelliVerse X Product Catalog (AI + education platform)

     Hi [Hunter Name],

     I'm launching the IntelliVerse X Product Catalog on Product Hunt in 2 weeks — a comprehensive directory of our AI-powered education, gaming, and business tools.

     Would you be interested in hunting it? The catalog showcases 10+ integrated products (AI tutor, quiz platforms, animation tools, marketplace) — all discoverable from one hub.

     Happy to provide early access and answer any questions. Let me know!

     Best,
     [Your Name]
     ```

2. **Gallery assets** (T-10):
   - Screenshot 1: Homepage hero showing product grid
   - Screenshot 2: Individual product detail page with schema
   - Screenshot 3: Category filter view (if available)
   - Screenshot 4: Internal cross-link example from apex domain
   - Video (optional): 30-second walkthrough showing product discovery flow
   - File format: PNG 1920x1080, <2MB each

3. **FAQ answers** (T-7, draft full text):
   - Q: "How is this different from a regular product page?"
     A: "It's a discovery hub — think of it like an app store for IntelliVerse X. Each product is a standalone tool, but the catalog lets users explore the entire ecosystem and see how products integrate."
   
   - Q: "Is this open to third-party products?"
     A: "Currently, it's IntelliVerse X products only. We're building a cohesive ecosystem where products share authentication, cross-game rewards, and unified UX."
   
   - Q: "Can I filter by category?"
     A: "Yes — categories include Education (tutor, quiz), Gaming (quests, gaming backend), AI (ai-chat-v2, ai-host), Content Creation (animator), and Business (marketx, kiosk)."

**Launch day (T-0):**

1. **Maker comment** (post immediately after hunter publishes):
   ```
   Hey Product Hunt! 👋

   We're excited to launch the IntelliVerse X Product Catalog — a hub for discovering our AI-powered ecosystem.

   🎯 What it is:
   A single place to explore 10+ integrated products across education, gaming, AI chat, content creation, and business tools.

   🧠 Why we built it:
   We noticed users discovering one product (like AI Tutor) but not knowing about related tools (Quiz, Quests, Animator). The catalog solves that by creating a discovery layer — like an app store for our ecosystem.

   🔗 How it works:
   - Browse by category (Education, Gaming, AI, etc.)
   - Each product page links to live demos + docs
   - Unified authentication across all products via platform.intelli-verse-x.ai
   - Cross-product integrations (e.g., Tutor ↔ Quiz, Quests ↔ Gaming)

   💡 Fun fact:
   The catalog itself is a Next.js app with structured data for each product — so search engines and AI assistants can surface individual products. Every product page has Product schema and links back to the catalog, creating a hub-spoke SEO model.

   Try it out and let us know what you think! Happy to answer questions about our architecture, AI integrations, or roadmap.
   ```

2. **Prepared replies to common questions:**
   - Q: "Is this all free?"
     A: "Most products have free tiers. Some (like QuizX and Kiosk) have premium features. Check each product's pricing page for details."
   
   - Q: "Can I self-host?"
     A: "Not currently — we're focused on hosted SaaS for now. Open-source components (like our AI chat models) are on GitHub."
   
   - Q: "How do products integrate?"
     A: "Shared auth via platform.intelli-verse-x.ai, cross-game rewards via quests.intelli-verse-x.ai, and unified user profiles. You log in once and access everything."

3. **Share copy for X/LinkedIn** (post at T+1 hour, T+4 hours, T+8 hours):
   - X post 1:
     ```
     We just launched the IntelliVerse X Product Catalog on @ProductHunt! 🚀

     A hub for discovering our AI-powered education, gaming, and business tools — 10+ products, one ecosystem.

     Check it out: [Product Hunt URL]
     ```
   
   - LinkedIn post (T+4 hours):
     ```
     Excited to share that we've launched the IntelliVerse X Product Catalog on Product Hunt today!

     It's a discovery hub for our AI ecosystem — think of it like an app store for education, gaming, and business tools.

     Why a catalog? We found users discovering one product (like AI Tutor) but not realizing we also offer quiz platforms, gamification, animation tools, and more. The catalog solves that.

     Key features:
     ✅ Browse 10+ products by category
     ✅ Unified auth across all products
     ✅ Cross-product integrations (e.g., Tutor + Quiz)
     ✅ Structured data for SEO and AI discoverability

     Check it out and let us know what you think: [Product Hunt URL]
     ```

**Expected outcome:**
- 1 dofollow link from Product Hunt (DA 92)
- 50-100 upvotes (realistic for B2B/dev tool catalog)
- 5-10 comments with engagement
- Secondary links from 3-5 aggregators (e.g., "Top Product Hunt launches May 2026" lists, AI tool newsletters that curate PH launches)

**Verification:**
```bash
# Check Product Hunt listing
curl -sS "https://www.producthunt.com/posts/intelliverse-x-product-catalog" | grep -o 'href="https://products.intelli-verse-x.ai"'

# Monitor referrals in Google Analytics
# Filter by source=producthunt.com, medium=referral
```

---

### C3 — GitHub Awesome-List PR Sweep

**Timeline:** Week 4-6

**Goal:** Secure 2-3 dofollow links from high-star awesome-lists on GitHub.

**Target lists + exact diffs:**

1. **awesome-ai-tools (mahseema/awesome-ai-tools, 2,700+ stars)**
   - File: `README.md`
   - Section: "Product Suites" (if exists) or "Platforms" (propose new section if needed)
   - Diff:
     ```diff
     ## Platforms

     + * [IntelliVerse X Product Catalog](https://products.intelli-verse-x.ai) — Comprehensive AI product ecosystem including education tools, gaming platforms, and business solutions
       * [Hugging Face](https://huggingface.co) — ML model hub
       * [Replicate](https://replicate.com) — Run ML models via API
     ```
   - PR title: `Add IntelliVerse X Product Catalog — AI ecosystem hub`
   - PR body:
     ```
     ## What
     Adds IntelliVerse X Product Catalog — a hub for AI-powered education, gaming, and business tools.

     ## Why it fits
     IntelliVerse X offers 10+ AI products (tutor, quiz, chat, animator, etc.) in one ecosystem. The catalog is a discovery layer for developers and users exploring AI platforms.

     ## Links
     - Catalog: https://products.intelli-verse-x.ai
     - GitHub org: https://github.com/intelli-verse-x
     - Product examples: AI Tutor, Quiz Platform, AI Chat v2, Animator, Quests

     Thanks for maintaining this list!
     ```

2. **frontend-dev-bookmarks (dypsilon/frontend-dev-bookmarks, 42,000+ stars)**
   - File: `README.md`
   - Section: "Ecosystem" → "Product Platforms" (or propose new subsection)
   - Diff:
     ```diff
     ### Ecosystem

     **Product Platforms**
     + * [IntelliVerse X Product Catalog](https://products.intelli-verse-x.ai) — Next.js-based catalog showcasing multiple AI products with shared auth and cross-product integrations
       * [npm](https://www.npmjs.com/) — Package manager
       * [Yarn](https://yarnpkg.com/) — Dependency manager
     ```
   - PR title: `Add IntelliVerse X — Next.js product catalog example`
   - PR body:
     ```
     ## What
     Adds IntelliVerse X Product Catalog as an example of a Next.js-based product discovery platform.

     ## Why it fits
     It's a real-world Next.js app that:
     - Uses structured data (JSON-LD Product schema)
     - Implements hub-spoke internal linking
     - Showcases 10+ products with unified UX

     Relevant for frontend devs building multi-product platforms or catalog sites.

     ## Links
     - Live site: https://products.intelli-verse-x.ai
     - GitHub: https://github.com/intelli-verse-x/Intelliverse-X-Products

     Thanks!
     ```

3. **awesome-react (enaqx/awesome-react, 65,000+ stars)**
   - File: `README.md`
   - Section: "Real React Apps" or "Example Apps"
   - Diff:
     ```diff
     ### Example Apps

     + * [IntelliVerse X Product Catalog](https://products.intelli-verse-x.ai) — Product discovery hub built with Next.js, showcasing structured data and internal cross-linking
       * [Spectrum](https://github.com/withspectrum/spectrum) — Community platform
       * [Mattermost](https://github.com/mattermost/mattermost-webapp) — Team chat
     ```
   - PR title: `Add IntelliVerse X Product Catalog — Next.js example app`
   - PR body:
     ```
     ## What
     Adds IntelliVerse X Product Catalog — a Next.js-based product discovery platform.

     ## Why it's a good example
     - Next.js App Router with metadata API for SEO
     - JSON-LD Product schema for each product
     - Internal cross-linking from 10+ subdomains
     - Real-world multi-product catalog architecture

     ## Links
     - Live: https://products.intelli-verse-x.ai
     - GitHub: https://github.com/intelli-verse-x/Intelliverse-X-Products

     Thanks for maintaining this awesome list!
     ```

**Expected outcome:**
- 2-3 merged PRs (approval rate ~60% for quality awesome-lists)
- 2-3 dofollow links from DA 50-70 GitHub pages
- Exposure to 100K+ GitHub users (sum of stargazers)

**Verification:**
```bash
# Check if PRs merged
gh pr list --repo mahseema/awesome-ai-tools --state merged --search "IntelliVerse"
gh pr list --repo dypsilon/frontend-dev-bookmarks --state merged --search "IntelliVerse"
gh pr list --repo enaqx/awesome-react --state merged --search "IntelliVerse"

# Check backlinks
curl -sS "https://raw.githubusercontent.com/mahseema/awesome-ai-tools/master/README.md" | grep "products.intelli-verse-x.ai"
```

---

### C4 — AI Directory Blitz

**Timeline:** Week 5-7

**Goal:** Submit to 5-7 AI tool directories to secure dofollow links and discovery traffic.

**Target directories + submission strategy:**

1. **There's An AI For That (theresanaiforthat.com)**
   - Category: "AI Platforms" or "Multi-Product AI Suites"
   - Submission form: https://theresanaiforthat.com/submit
   - Copy:
     - Name: IntelliVerse X Product Catalog
     - URL: https://products.intelli-verse-x.ai
     - Description: "Comprehensive AI product ecosystem with 10+ tools for education, gaming, and business. Includes AI tutor, quiz platforms, chat assistants, animation tools, and marketplace. Unified authentication and cross-product integrations."
     - Tags: AI platform, education, gaming, product catalog, ecosystem
     - Pricing: Freemium (varies by product)
   - Expected outcome: Listed within 7-10 days, dofollow link

2. **Futurepedia (futurepedia.io)**
   - Category: "AI Platforms" or "General AI Tools"
   - Submission form: https://www.futurepedia.io/submit-tool
   - Copy:
     - Tool name: IntelliVerse X Product Catalog
     - URL: https://products.intelli-verse-x.ai
     - Short description: "AI-powered product ecosystem including education, gaming, and business tools"
     - Long description: "Discover 10+ AI products in one catalog: AI Tutor for personalized education, Quiz platforms for assessments, Quests for gamified learning, Animator for AI video generation, AI Chat for conversational AI, and more. All products integrate with unified authentication and cross-product features."
     - Category: Platform
     - Pricing: Freemium
   - Expected outcome: Listed within 5-7 days, dofollow link

3. **AI Tools Directory (aitoolsdirectory.com)**
   - Category: "AI Platforms" or "Multi-Tool Suites"
   - Submission form: https://aitoolsdirectory.com/submit-ai-tool/
   - Copy:
     - Product name: IntelliVerse X Product Catalog
     - Website: https://products.intelli-verse-x.ai
     - Category: Platform
     - Description: "A catalog of AI-powered products for education, gaming, content creation, and business. Features include AI tutoring, quiz generation, gamification, animation tools, marketplace, and conversational AI."
     - Features: Unified auth, cross-product integrations, structured data for SEO
   - Expected outcome: Listed within 10-14 days, dofollow link

4. **ToolPilot (toolpilot.ai)**
   - Category: "AI Platforms"
   - Submission: Contact form (https://toolpilot.ai/contact)
   - Copy:
     ```
     Subject: Submit IntelliVerse X Product Catalog for listing

     Hi ToolPilot team,

     I'd like to submit IntelliVerse X Product Catalog for your AI Platforms category.

     **Product details:**
     - Name: IntelliVerse X Product Catalog
     - URL: https://products.intelli-verse-x.ai
     - Description: Comprehensive AI product ecosystem with 10+ tools for education, gaming, and business
     - Products include: AI Tutor, Quiz platforms, Quests (gamification), Animator (AI video), AI Chat, MarketX (marketplace), and more
     - All products have unified auth and cross-product integrations

     **Why it's valuable for your users:**
     Users can discover multiple AI tools in one place rather than searching across fragmented sites. It's a one-stop catalog for AI-powered education, gaming, and business solutions.

     Let me know if you need additional details or assets!

     Thanks,
     [Your Name]
     ```
   - Expected outcome: Listed within 7-14 days (manual review)

5. **Insidr.AI (insidr.ai)**
   - Category: "AI Tools" or "Platforms"
   - Submission form: https://www.insidr.ai/submit-ai-tool/
   - Copy:
     - Tool name: IntelliVerse X Product Catalog
     - URL: https://products.intelli-verse-x.ai
     - Category: Platform
     - Description: "AI product catalog featuring education tools (Tutor, Quiz), gaming platforms (Quests, Gaming backend), content creation (Animator), and business solutions (MarketX, Kiosk). Unified ecosystem with shared authentication."
   - Expected outcome: Listed within 7-10 days

6. **AI Scout (aiscout.com)**
   - Category: "AI Platforms" or "Product Suites"
   - Submission form: https://aiscout.com/submit
   - Copy:
     - Name: IntelliVerse X Product Catalog
     - URL: https://products.intelli-verse-x.ai
     - Tagline: "Discover 10+ AI products for education, gaming, and business"
     - Description: "A comprehensive catalog of IntelliVerse X products including AI tutoring, quiz generation, gamified learning, animation tools, conversational AI, and marketplace solutions. All products integrate with unified authentication."
     - Category: Platform
   - Expected outcome: Listed within 5-7 days

7. **Product Hunt (already covered in C2, but also acts as a directory)**

**Expected outcome:**
- 5-7 directory listings (approval rate ~85% for legitimate tools)
- 5-7 dofollow links from DA 30-60 directories
- 50-100 discovery visits/month from directory traffic

**Verification:**
```bash
# Check listings
curl -sS "https://theresanaiforthat.com" | grep "products.intelli-verse-x.ai"
curl -sS "https://futurepedia.io" | grep "IntelliVerse X Product Catalog"
curl -sS "https://aitoolsdirectory.com" | grep "products.intelli-verse-x.ai"

# Monitor referrals in Google Analytics
# Filter by source containing "theresan", "futurepedia", "aitoolsdirectory", etc.
```

---

### C5 — Resource Page Outreach

**Timeline:** Week 8-10

**Goal:** Get listed on 3-5 existing "best AI platforms" or "AI product suites" roundups.

**Target pages + outreach strategy:**

**Research phase (week 8):**
1. Search for target resource pages:
   ```
   Google: "best AI platforms 2026"
   Google: "AI product suites comparison"
   Google: "alternatives to Salesforce AppExchange"
   Google: "top AI catalogs"
   Google: "best multi-product AI platforms"
   ```

2. Qualify pages:
   - Must be blog posts or resource pages (not directories)
   - Published in last 12 months (or regularly updated)
   - List 5-10 products/platforms with descriptions
   - Include outbound links (not just affiliate links)
   - DA 20+ (use Moz extension or similar)

**Example target pages (hypothetical — replace with real findings):**

| Page | URL | Author | Why it's a fit | Pitch angle |
|------|-----|--------|----------------|-------------|
| "10 Best AI Platforms for Education 2026" | example.com/best-ai-ed-platforms | Jane Doe (EdTech blogger) | Lists AI tutoring platforms, quiz tools | IntelliVerse X covers both + gamification |
| "AI Product Suites vs. Point Solutions" | example.com/ai-suites-comparison | John Smith (SaaS analyst) | Compares multi-product platforms | IntelliVerse X is ecosystem, not point solution |
| "Alternatives to Google Workspace for AI Tools" | example.com/google-workspace-alternatives | Tech Review Site | Lists integrated tool suites | IntelliVerse X integrates education, gaming, AI chat |
| "Best AI Catalogs and Directories" | example.com/ai-catalogs | AI Tools Blog | Lists Product Hunt, Futurepedia, etc. | IntelliVerse X is a private catalog (like app store) |
| "Top 15 AI Platforms for Developers" | example.com/ai-dev-platforms | Dev.to author | Lists AI APIs, platforms, ecosystems | IntelliVerse X has dev-focused products (Platform, Gaming backend) |

**Outreach email template:**

```
Subject: [Resource Page Title] — Suggest adding IntelliVerse X Product Catalog

Hi [Author Name],

I came across your article "[Article Title]" and found it really helpful — especially your breakdown of [specific insight from article].

I wanted to suggest adding **IntelliVerse X Product Catalog** to your list. It's a comprehensive AI platform with 10+ products across education, gaming, content creation, and business tools.

**Why it fits your article:**
- [Reason 1 tied to article theme, e.g., "You mention AI tutoring platforms — IntelliVerse X includes AI Tutor plus Quiz and Quests for gamified learning"]
- [Reason 2, e.g., "It's a true ecosystem with unified auth and cross-product integrations, not just a list of disconnected tools"]
- [Reason 3, e.g., "All products are live and accessible at products.intelli-verse-x.ai"]

**Quick details:**
- **URL:** https://products.intelli-verse-x.ai
- **Products:** AI Tutor, Quiz, QuizX, Quests, Animator, AI Chat v2, MarketX, Gaming backend, Kiosk, Platform (user dashboard)
- **Key differentiator:** Unified ecosystem where products share auth, rewards, and integrations

No pressure — just thought it would add value to your readers!

Best,
[Your Name]
[Your Title]
[Contact Info]

P.S. If you'd like a demo or more details about any specific product, happy to arrange a quick call.
```

**Follow-up (if no response after 7 days):**

```
Subject: Re: [Resource Page Title] — Suggest adding IntelliVerse X Product Catalog

Hi [Author Name],

Just wanted to follow up on my previous email about IntelliVerse X Product Catalog. No worries if it's not a fit — I know you get a lot of suggestions!

If helpful, here's a one-sentence description you could use:

"IntelliVerse X Product Catalog — A hub for discovering 10+ AI-powered education, gaming, and business tools with unified authentication and cross-product integrations."

Thanks again for your time and for maintaining such a valuable resource!

Best,
[Your Name]
```

**Expected outcome:**
- 5 outreach emails sent
- 1-2 positive responses (40% response rate for value-add outreach)
- 1-2 links added to resource pages (50% conversion from positive responses)
- 2-3 backlinks from DA 20-50 blogs

**Verification:**
```bash
# Check if links added
curl -sS "[target page URL]" | grep "products.intelli-verse-x.ai"

# Monitor referrals in Google Analytics
# Filter by source = target domains
```

---

## 6. Outreach tracker (CSV-shaped)

Pre-populated with 25 prospects from §3. Copy/paste into Google Sheets or Airtable.

| # | target | url | tactic | contact | anchor | status | sent_at | landed_url | notes |
|---|--------|-----|--------|---------|--------|--------|---------|------------|-------|
| 1 | intelli-verse-x.ai (apex) | https://intelli-verse-x.ai | Internal cross-link | Internal (PR to apex repo) | "Explore Our Products" | prospect | — | — | P0: Hero CTA + nav + footer |
| 2 | tutor.intelli-verse-x.ai | https://tutor.intelli-verse-x.ai | Internal cross-link | Internal (PR to tutor repo) | "Explore more IntelliVerse X products" | prospect | — | — | P0: Footer + About page |
| 3 | quiz.intelli-verse-x.ai | https://quiz.intelli-verse-x.ai | Internal cross-link | Internal (PR to quiz repo) | "See all IntelliVerse X products" | prospect | — | — | P0: Footer + sidebar |
| 4 | quizx.intelli-verse-x.ai | https://quizx.intelli-verse-x.ai | Internal cross-link | Internal (PR to quizx repo) | "Browse the full product catalog" | prospect | — | — | P0: Footer + About |
| 5 | animator.intelli-verse-x.ai | https://animator.intelli-verse-x.ai | Internal cross-link | Internal (PR to animator repo) | "View all IntelliVerse X solutions" | prospect | — | — | P0: Footer + docs |
| 6 | quests.intelli-verse-x.ai | https://quests.intelli-verse-x.ai | Internal cross-link | Internal (PR to quests repo) | "Discover other IntelliVerse X products" | prospect | — | — | P0: Footer + About |
| 7 | gaming.intelli-verse-x.ai | https://gaming.intelli-verse-x.ai | Internal cross-link | Internal (PR to gaming repo) | "IntelliVerse X Product Catalog" | prospect | — | — | P0: Footer + docs |
| 8 | marketx.intelli-verse-x.ai | https://marketx.intelli-verse-x.ai | Internal cross-link | Internal (PR to marketx repo) | "See all IntelliVerse X products" | prospect | — | — | P0: Footer + About |
| 9 | ai-chat-v2.intelli-verse-x.ai | https://ai-chat-v2.intelli-verse-x.ai | Internal cross-link | Internal (PR to ai-chat-v2 repo) | "Explore the IntelliVerse X ecosystem" | prospect | — | — | P0: Footer + About |
| 10 | platform.intelli-verse-x.ai | https://platform.intelli-verse-x.ai | Internal cross-link | Internal (PR to platform repo) | "Browse Products" | prospect | — | — | P0: Dashboard sidebar + footer |
| 11 | Product Hunt | https://producthunt.com | Directory | Self-submit (account) | "IntelliVerse X Product Catalog" | prospect | — | — | P1: Launch week 3-4 |
| 12 | AlternativeTo | https://alternativeto.net | Directory | Self-submit "Add application" | "IntelliVerse X Product Catalog" | prospect | — | — | P1: Submit after PH launch |
| 13 | awesome-ai-tools | https://github.com/mahseema/awesome-ai-tools | GitHub awesome-list | PR to repo | "IntelliVerse X Product Catalog — AI ecosystem hub" | prospect | — | — | P1: Week 4-6 |
| 14 | frontend-dev-bookmarks | https://github.com/dypsilon/frontend-dev-bookmarks | GitHub awesome-list | PR to repo | "IntelliVerse X — Next.js product catalog" | prospect | — | — | P1: Week 4-6 |
| 15 | There's An AI For That | https://theresanaiforthat.com | AI directory | Contact form | "IntelliVerse X — AI product catalog" | prospect | — | — | P1: Week 5-7 |
| 16 | Futurepedia | https://futurepedia.io | AI directory | Submit form | "IntelliVerse X AI Product Suite" | prospect | — | — | P1: Week 5-7 |
| 17 | AI Tools Directory | https://aitoolsdirectory.com | AI directory | Submit form | "AI-powered product catalog" | prospect | — | — | P1: Week 5-7 |
| 18 | kiosk.intelli-verse-x.ai | https://kiosk.intelli-verse-x.ai | Internal cross-link | Internal (PR to kiosk repo) | "IntelliVerse X Products" | prospect | — | — | P1: Footer |
| 19 | G2 | https://g2.com | Directory | Claim profile | "IntelliVerse X" | prospect | — | — | P2: Week 9-12 |
| 20 | Capterra | https://capterra.com | Directory | Submit form | "IntelliVerse X Product Catalog" | prospect | — | — | P2: Week 9-12 |
| 21 | Stackshare | https://stackshare.io | Developer directory | Self-submit account | "IntelliVerse X" | prospect | — | — | P2: Week 9-12 |
| 22 | Slant | https://slant.co | Community directory | Self-submit account | "IntelliVerse X Product Suite" | prospect | — | — | P2: Week 9-12 |
| 23 | ToolPilot | https://toolpilot.ai | AI directory | Contact form | "IntelliVerse X — AI product catalog" | prospect | — | — | P2: Week 5-7 |
| 24 | Insidr.AI | https://insidr.ai | AI directory | Submit form | "IntelliVerse X AI Products" | prospect | — | — | P2: Week 5-7 |
| 25 | AI Scout | https://aiscout.com | AI directory | Submit form | "IntelliVerse X Product Ecosystem" | prospect | — | — | P2: Week 5-7 |

**CSV export:**
```csv
target,url,tactic,contact,anchor,status,sent_at,landed_url,notes
intelli-verse-x.ai (apex),https://intelli-verse-x.ai,Internal cross-link,Internal (PR to apex repo),"Explore Our Products",prospect,—,—,P0: Hero CTA + nav + footer
tutor.intelli-verse-x.ai,https://tutor.intelli-verse-x.ai,Internal cross-link,Internal (PR to tutor repo),"Explore more IntelliVerse X products",prospect,—,—,P0: Footer + About page
quiz.intelli-verse-x.ai,https://quiz.intelli-verse-x.ai,Internal cross-link,Internal (PR to quiz repo),"See all IntelliVerse X products",prospect,—,—,P0: Footer + sidebar
quizx.intelli-verse-x.ai,https://quizx.intelli-verse-x.ai,Internal cross-link,Internal (PR to quizx repo),"Browse the full product catalog",prospect,—,—,P0: Footer + About
animator.intelli-verse-x.ai,https://animator.intelli-verse-x.ai,Internal cross-link,Internal (PR to animator repo),"View all IntelliVerse X solutions",prospect,—,—,P0: Footer + docs
quests.intelli-verse-x.ai,https://quests.intelli-verse-x.ai,Internal cross-link,Internal (PR to quests repo),"Discover other IntelliVerse X products",prospect,—,—,P0: Footer + About
gaming.intelli-verse-x.ai,https://gaming.intelli-verse-x.ai,Internal cross-link,Internal (PR to gaming repo),"IntelliVerse X Product Catalog",prospect,—,—,P0: Footer + docs
marketx.intelli-verse-x.ai,https://marketx.intelli-verse-x.ai,Internal cross-link,Internal (PR to marketx repo),"See all IntelliVerse X products",prospect,—,—,P0: Footer + About
ai-chat-v2.intelli-verse-x.ai,https://ai-chat-v2.intelli-verse-x.ai,Internal cross-link,Internal (PR to ai-chat-v2 repo),"Explore the IntelliVerse X ecosystem",prospect,—,—,P0: Footer + About
platform.intelli-verse-x.ai,https://platform.intelli-verse-x.ai,Internal cross-link,Internal (PR to platform repo),"Browse Products",prospect,—,—,P0: Dashboard sidebar + footer
Product Hunt,https://producthunt.com,Directory,Self-submit (account),"IntelliVerse X Product Catalog",prospect,—,—,P1: Launch week 3-4
AlternativeTo,https://alternativeto.net,Directory,Self-submit "Add application","IntelliVerse X Product Catalog",prospect,—,—,P1: Submit after PH launch
awesome-ai-tools,https://github.com/mahseema/awesome-ai-tools,GitHub awesome-list,PR to repo,"IntelliVerse X Product Catalog — AI ecosystem hub",prospect,—,—,P1: Week 4-6
frontend-dev-bookmarks,https://github.com/dypsilon/frontend-dev-bookmarks,GitHub awesome-list,PR to repo,"IntelliVerse X — Next.js product catalog",prospect,—,—,P1: Week 4-6
There's An AI For That,https://theresanaiforthat.com,AI directory,Contact form,"IntelliVerse X — AI product catalog",prospect,—,—,P1: Week 5-7
Futurepedia,https://futurepedia.io,AI directory,Submit form,"IntelliVerse X AI Product Suite",prospect,—,—,P1: Week 5-7
AI Tools Directory,https://aitoolsdirectory.com,AI directory,Submit form,"AI-powered product catalog",prospect,—,—,P1: Week 5-7
kiosk.intelli-verse-x.ai,https://kiosk.intelli-verse-x.ai,Internal cross-link,Internal (PR to kiosk repo),"IntelliVerse X Products",prospect,—,—,P1: Footer
G2,https://g2.com,Directory,Claim profile,"IntelliVerse X",prospect,—,—,P2: Week 9-12
Capterra,https://capterra.com,Directory,Submit form,"IntelliVerse X Product Catalog",prospect,—,—,P2: Week 9-12
Stackshare,https://stackshare.io,Developer directory,Self-submit account,"IntelliVerse X",prospect,—,—,P2: Week 9-12
Slant,https://slant.co,Community directory,Self-submit account,"IntelliVerse X Product Suite",prospect,—,—,P2: Week 9-12
ToolPilot,https://toolpilot.ai,AI directory,Contact form,"IntelliVerse X — AI product catalog",prospect,—,—,P2: Week 5-7
Insidr.AI,https://insidr.ai,AI directory,Submit form,"IntelliVerse X AI Products",prospect,—,—,P2: Week 5-7
AI Scout,https://aiscout.com,AI directory,Submit form,"IntelliVerse X Product Ecosystem",prospect,—,—,P2: Week 5-7
```

**Usage instructions:**
1. Copy CSV into Google Sheets
2. Add columns: `assigned_to`, `deadline`, `priority_score`
3. Update `status` as work progresses: `prospect` → `in_progress` → `sent` → `landed` or `dead`
4. Record `sent_at` (date) when outreach email sent or PR opened
5. Record `landed_url` (the final URL containing the backlink) when link goes live
6. Weekly review: sort by `status=sent`, check if links landed, follow up if needed

---

## 7. Measurement

### Tools

**Primary (free):**
- **Google Search Console** — track referring domains, top pages, click-through rate
  - Setup: Add https://products.intelli-verse-x.ai as a property
  - Monitor: Links report (who's linking to you), Performance report (impressions/clicks)
- **Google Analytics 4** — track referral traffic from backlinks
  - Setup: Add GA4 tag to products.intelli-verse-x.ai
  - Monitor: Acquisition → Traffic acquisition (filter by source=referral)
  - Goal: Track conversions (clicks to individual product pages)
- **GitHub Insights** — track traffic from awesome-list links
  - Monitor: intelli-verse-x/Intelliverse-X-Products → Insights → Traffic → Referring sites

**Secondary (paid, optional):**
- **Ahrefs Webmaster Tools** (free tier) — track referring domains, domain rating, backlink health
- **Moz Link Explorer** (limited free) — DA score, spam score of referring domains
- **SEMrush Backlink Audit** (if available) — identify toxic links

**Manual checks:**
- Weekly: Search `site:products.intelli-verse-x.ai` on Google to see indexed pages
- Monthly: Search `"products.intelli-verse-x.ai"` (in quotes) to find new mentions

### Baseline numbers (as of May 17, 2026)

⚠️ **BLOCKED:** Site currently returns HTTP 404, so no baseline exists. Record these AFTER deployment:

- **Referring domains:** 0 → target 25-35 (90 days)
- **Indexed pages:** 0 → target 5-10 (1 homepage + product category pages + individual product detail pages if they exist on this subdomain)
- **Top-3 keyword positions:** N/A → target top 30 for:
  - "IntelliVerse X products"
  - "AI platform product catalog"
  - "IntelliVerse X ecosystem"
- **Organic clicks (Search Console):** 0 → target 50-100/month (90 days)
- **Referral traffic (GA4):** 0 → target 200-300/month (90 days, primarily from directories and internal cross-links)

**How to record baseline (week 1 after deployment):**
```bash
# 1. Submit sitemap to Google Search Console
# Go to Search Console → Sitemaps → Add sitemap: https://products.intelli-verse-x.ai/sitemap.xml

# 2. Check indexed pages (wait 3-7 days after deployment)
# Google: site:products.intelli-verse-x.ai
# Record count

# 3. Check referring domains (Search Console → Links → Top linking sites)
# Record count (should be ~0 initially)

# 4. Set up GA4 conversion: "Product page view"
# Events → Create event → Condition: page_location contains "/product/" or similar
```

### KPIs (90-day targets)

| Metric | Baseline (tbd) | 90-day target | Measurement tool |
|--------|----------------|---------------|------------------|
| Referring domains | 0 | 25-35 | Google Search Console → Links report |
| Indexed pages | 0 | 5-10 | Google: `site:products.intelli-verse-x.ai` |
| Top-10 keywords | 0 | 1-2 | Search Console → Performance (filter by position 1-10) |
| Top-30 keywords | 0 | 5-8 | Search Console → Performance (filter by position 1-30) |
| Organic clicks/month | 0 | 50-100 | Search Console → Performance → Total clicks |
| Referral visits/month | 0 | 200-300 | GA4 → Acquisition → Traffic (source=referral) |
| Internal cross-links | 0 | 10 | Manual audit or Screaming Frog crawl |
| Product page CTR | — | 1.5-2.5% | GA4 → Events → "Product page view" / total visits |

**Stretch goals (12-month):**
- Referring domains: 100-150
- Top-10 keywords: 5-8
- Organic clicks/month: 500-1,000
- Domain Authority (Moz): 25-30

### Review cadence

**Weekly (during active outreach, weeks 1-10):**
- Check outreach tracker: update statuses, log landed links
- Monitor Search Console: new referring domains, new indexed pages
- Monitor GA4: referral traffic spikes (indicates directory listing went live)
- Review internal cross-links: confirm all 10 PRs merged and links live

**Bi-weekly (weeks 11-12):**
- Audit anchor text distribution: run Ahrefs or manual check to ensure 50% branded, 30% partial, 15% generic, <5% exact
- Review top referring domains: identify any low-quality or toxic links, disavow if needed

**Monthly (after 90 days):**
- Comprehensive backlink audit: Ahrefs or Moz report
- Keyword rank tracking: Search Console Performance report for target keywords
- Traffic analysis: GA4 monthly comparison (MoM growth)
- Competitor benchmarking: compare referring domains vs. competitors (Canva Apps, Salesforce AppExchange proxies)

**Quarterly (after 90 days):**
- Re-run firecrawl scrape: `firecrawl scrape https://products.intelli-verse-x.ai` to capture new content/structure
- Update outreach tracker: archive dead leads, add new prospects
- Adjust strategy: if AI directories outperform GitHub lists, double down on AI directories

---

## 8. 90-day execution timeline

| Week | Focus | Tasks | Expected Outcome |
|------|-------|-------|------------------|
| **Week 1** | BLOCKED: Await deployment | Wait for products.intelli-verse-x.ai to go live (see [remediation playbook](../remediation/products.md)) | Site returns HTTP 200 |
| **Week 2** | Internal cross-links (P0) | Open 11 PRs to add catalog links: apex (hero CTA + nav + footer), tutor, quiz, quizx, animator, quests, gaming, marketx, ai-chat-v2, platform, kiosk | 10 internal links live |
| **Week 3** | Product Hunt prep | Find hunter, prepare gallery assets, draft maker comment, FAQ answers | Ready to launch |
| **Week 4** | Product Hunt launch | Launch on PH, post maker comment, engage with comments, share on X/LinkedIn | 1 PH link + 50-100 upvotes |
| **Week 5** | GitHub awesome-lists | Open PRs to awesome-ai-tools, frontend-dev-bookmarks, awesome-react | 2-3 PRs pending review |
| **Week 6** | AI directory blitz (part 1) | Submit to There's An AI For That, Futurepedia, AI Tools Directory | 3 submissions sent |
| **Week 7** | AI directory blitz (part 2) | Submit to ToolPilot, Insidr.AI, AI Scout | 3 more submissions sent |
| **Week 8** | Resource page outreach (research) | Find 5 target resource pages ("best AI platforms 2026", etc.) | 5 targets identified |
| **Week 9** | Resource page outreach (emails) | Send 5 outreach emails with value-add pitches | 5 emails sent |
| **Week 10** | Follow-ups + P2 directories | Follow up on resource page emails, submit to G2, Capterra, Stackshare | 1-2 resource page links landed |
| **Week 11** | Anchor audit + cleanup | Audit anchor text distribution, review all live links, disavow any toxic links | Anchor balance confirmed |
| **Week 12** | Measurement + report | Run comprehensive backlink report, GA4 analysis, keyword rank check, write 90-day retrospective | 25-35 links, 50-100 organic clicks/month |

**Critical path:**
- **Week 1-2 are BLOCKED** until site is deployed
- **Week 2 internal cross-links are HIGHEST PRIORITY** — these must be live before external outreach (provides link equity and user journey)
- **Product Hunt (week 4) should NOT run until internal links are live** — PH visitors need to see ecosystem links
- **GitHub PRs (week 5) can run in parallel with AI directories (week 6-7)** — no dependencies
- **Resource page outreach (week 8-10) should come AFTER PH launch** — gives credibility ("we launched on Product Hunt with X upvotes")

**Sequencing rationale:**
1. Internal links establish hub authority and crawlability FIRST
2. Product Hunt generates social proof and initial traffic
3. GitHub + AI directories build sustained discovery traffic
4. Resource page outreach leverages PH credibility for editorial inclusions

---

## 9. Risks and counter-indicators

### Over-optimization warning signs

**Anchor text red flags:**
- >10% exact-match anchors (e.g., "AI product catalog", "AI platform products")
- Multiple directory submissions using identical exact-match anchors
- Paid directory listings where anchor text is exact-match commercial keyword
- Internal cross-links using exact-match instead of branded anchors

**Action if detected:** Diversify anchors immediately. For future submissions, use branded or partial-match only. For existing links, reach out to directory owners and request anchor text change to branded ("IntelliVerse X Product Catalog" instead of "AI product catalog").

**Link velocity red flags:**
- >10 new referring domains in a single day (looks like link scheme)
- All links from same subnet or hosting provider (PBN pattern)
- Sudden spike in exact-match anchor links

**Action if detected:** Pause outreach for 2 weeks. Audit recent links for quality. Disavow any toxic links via Google Search Console Disavow Tool.

### PBN/low-quality links to refuse if offered

**NEVER accept links from:**
- Sites with DA <10 and thin content (<500 words/page)
- Link farms or "free backlink" sites
- Sites with excessive ads or pop-ups (user experience penalty)
- Sites in unrelated niches (e.g., payday loans, gambling, pharma) — irrelevant anchor context
- Footer/sidebar sitewide links from low-quality sites (Google devalues these)
- Paid links without `rel="sponsored"` attribute (violates Google Webmaster Guidelines)

**How to identify PBN:**
- Whois lookup shows bulk domain registration (100+ domains, same registrant)
- Site has no social presence (0 Twitter followers, 0 Facebook engagement)
- Content is AI-generated with no human editing (check for nonsensical phrases)
- Backlink profile is almost entirely outbound links (no inbound links to the PBN site itself)

**Action if offered:** Politely decline. If link already added without permission, request removal or add to Disavow file.

### When to walk away from a campaign (acceptance criteria)

**Product Hunt:**
- If <10 upvotes after 6 hours → not worth continued effort
  - Action: Move on, focus on other campaigns
  - Lesson: PH audience may not align with B2B/dev catalog; prioritize AI directories instead

**GitHub awesome-list PRs:**
- If PR closed with "not relevant" or "out of scope" → respect maintainer decision
  - Action: Do NOT re-submit to same repo
  - Lesson: Find more niche awesome-lists (e.g., awesome-nextjs, awesome-product-catalogs)

**AI directory submissions:**
- If 3 follow-ups over 30 days with no response → directory is inactive
  - Action: Mark as `dead` in tracker, find alternative directory
  - Lesson: Focus on directories with recent listings (last 30 days)

**Resource page outreach:**
- If author replies "not a fit" or "only paid placements" → walk away
  - Action: Mark as `dead`, do NOT offer payment (turns into paid link, must use `rel="sponsored"`)
  - Lesson: Focus on resource pages that naturally include free tools

**Overall campaign kill switch:**
- If **<10 links after 60 days** (target is 20+) → strategy needs pivot
  - Action: Run retrospective, identify bottleneck (e.g., site not deployed, internal links not prioritized, directory submissions rejected)
  - Pivot: If directories reject, focus on content marketing (write blog posts about product catalog best practices, get cited)

### Penalty risk scenarios

**Scenario 1: Manual action from Google (unnatural links)**
- **Cause:** Too many exact-match anchors or links from PBNs
- **Detection:** Google Search Console → Manual Actions notification
- **Fix:** Identify toxic links via Search Console, disavow via Disavow Tool, submit reconsideration request
- **Prevention:** Follow anchor text plan (50% branded, <5% exact-match), audit links monthly

**Scenario 2: Algorithmic penalty (Penguin, link spam)**
- **Cause:** Rapid link velocity, sitewide footer links from low-quality sites
- **Detection:** Sudden drop in organic traffic (>50% in 1 week) without manual action
- **Fix:** Audit recent links, remove or disavow toxic links, wait for Penguin update (quarterly)
- **Prevention:** Slow, steady link acquisition (3-5 links/week max), avoid footer links

**Scenario 3: Cannibalization (internal links hurt individual products)**
- **Cause:** Products subdomain outranks individual product pages for brand queries
- **Detection:** Search "IntelliVerse X tutor" → products.intelli-verse-x.ai ranks above tutor.intelli-verse-x.ai
- **Fix:** Add canonical tags to products catalog pointing to individual products for specific queries, increase internal links to individual products
- **Prevention:** Ensure individual product pages have stronger on-page SEO (title, meta, content) than catalog entries

---

## 10. Open questions and assumptions

### Questions requiring owner/stakeholder input

1. **Is products.intelli-verse-x.ai live?**
   - Current state: HTTP 404 (see [remediation playbook](../remediation/products.md))
   - Blocker: All backlink work depends on site being deployed
   - Action needed: Confirm deployment timeline with engineering team
   - Assumption: Site will be live within 2 weeks (by June 1, 2026)

2. **What products will be listed in the catalog?**
   - Assumption: 10+ products (tutor, quiz, quizx, animator, quests, gaming, marketx, ai-chat-v2, kiosk, platform, ai-host)
   - Question: Are there additional products not yet in the audit scope? (e.g., blogs, beta, qrstudio)
   - Action needed: Confirm final product list with product/marketing team
   - Impact: Affects Product Hunt description, directory submissions, anchor text ("10+ products" vs. "15+ products")

3. **Does each product have a detail page on products.intelli-verse-x.ai?**
   - Assumption: Each product has a dedicated page (e.g., `/products/tutor`, `/products/quiz`) with description, screenshot, link to live site
   - Question: Or is it a simple grid with external links only?
   - Action needed: Review site architecture once deployed
   - Impact: Affects Product schema implementation (can add schema to detail pages), affects anchor strategy (can link to specific product pages)

4. **Who can approve internal cross-link PRs?**
   - Assumption: Each repo has maintainers who can merge footer/About page edits
   - Question: Are there brand guidelines for footer copy? (e.g., must say "Part of IntelliVerse X" vs. "Powered by IntelliVerse X")
   - Action needed: Confirm with marketing/brand team, or propose standard language in each PR and iterate based on feedback
   - Impact: Affects PR velocity (if no guidelines, maintainers may debate wording)

5. **Is there a budget for paid directory listings?**
   - Assumption: All directory submissions are free (self-submit or contact form)
   - Question: Should we pursue G2/Capterra paid profiles ($500-2,000/year)? Or Stackshare paid tier?
   - Action needed: Confirm with marketing budget owner
   - Impact: Paid directories accelerate link acquisition but require budget approval

6. **Who will respond to Product Hunt comments on launch day?**
   - Assumption: Founder, marketing lead, or product manager will be available for 6-8 hours on launch day
   - Question: Confirm availability, or prepare async responses (FAQ doc, pre-written answers)
   - Action needed: Schedule launch day with team, assign owner for real-time engagement
   - Impact: High engagement on PH (maker responding quickly) increases upvotes and visibility

7. **Are there existing brand assets for directory submissions?**
   - Assumption: Need logo, product screenshots, tagline, short description for galleries
   - Question: Where are these stored? (e.g., Figma, Google Drive, Notion)
   - Action needed: Confirm asset location, or create assets if they don't exist
   - Impact: Delays directory submissions if assets are missing

8. **Should the catalog be indexed or noindex?**
   - Assumption: Catalog should be indexed (indexable product pages benefit SEO)
   - Question: Is there a concern about cannibalizing individual product pages? (e.g., products.intelli-verse-x.ai/tutor vs. tutor.intelli-verse-x.ai)
   - Action needed: Confirm with SEO/product team
   - Impact: If noindex, all backlink work should redirect to individual products instead

9. **What's the long-term vision for the catalog?**
   - Assumption: Permanent catalog site, maintained long-term
   - Question: Or is this a temporary discovery layer that will merge into apex domain later?
   - Action needed: Confirm with product roadmap owner
   - Impact: If temporary, backlink strategy should focus on apex domain (intelli-verse-x.ai) instead, and catalog should 301 redirect later (link equity transfers)

10. **Who owns outreach follow-ups?**
    - Assumption: Marketing or growth team will manage outreach tracker, send follow-up emails, log link statuses
    - Question: Confirm owner, or assign to specific person (e.g., growth marketer, SEO specialist)
    - Action needed: Add to outreach tracker as `assigned_to` column
    - Impact: If no owner, links won't be tracked and follow-ups will be missed

### Assumptions made in this playbook

1. **Site will be deployed by June 1, 2026** — all timelines assume week 1 starts after deployment
2. **Internal cross-links are approved** — no brand guidelines blockers
3. **All 10+ products are linkable and stable** — no products are sunsetting or rebranding
4. **No budget for paid links** — all tactics are free or sweat-equity
5. **GitHub repos are public and accept PRs** — all internal link PRs can be merged
6. **Product Hunt launch is feasible** — team can dedicate 8 hours on launch day
7. **Anchor text follows 50/30/15/5 distribution** — no over-optimization from past links
8. **No existing toxic backlinks** — catalog is net-new, no legacy link cleanup needed
9. **Catalog has structured data (Product schema)** — affects AI directory submissions, assumes remediation PR #90 includes schema
10. **No competitor conflicts** — IntelliVerse X is not violating competitor trademarks in "alternative to X" listings

If any of these assumptions are incorrect, the strategy should be adjusted accordingly. Flag blockers early to avoid wasted effort.

---

## Appendix A: Internal cross-link implementation checklist

Use this checklist to track PRs for internal cross-links (Campaign C1).

| Repo | PR Title | PR URL | Status | Merged Date | Notes |
|------|----------|--------|--------|-------------|-------|
| Intelliverse-x-frontend-revamp (apex) | feat: add link to IntelliVerse X product catalog | — | ☐ Not started | — | Hero CTA + nav + footer |
| DeepTutor (tutor) | feat: add link to IntelliVerse X product catalog | — | ☐ Not started | — | Footer + About page |
| Quizverse-web-frontend (quiz) | feat: add link to IntelliVerse X product catalog | — | ☐ Not started | — | Footer + sidebar |
| quiz-verse-elite (quizx) | feat: add link to IntelliVerse X product catalog | — | ☐ Not started | — | Footer + About |
| ManimCat (animator) | feat: add link to IntelliVerse X product catalog | — | ☐ Not started | — | Footer + docs |
| quests-economy (quests) | feat: add link to IntelliVerse X product catalog | — | ☐ Not started | — | Footer + About |
| Intelliverse-X-Gaming_backend (gaming) | feat: add link to IntelliVerse X product catalog | — | ☐ Not started | — | Footer + docs |
| IntelliMarketX-frontend (marketx) | feat: add link to IntelliVerse X product catalog | — | ☐ Not started | — | Footer + About |
| Intelliverse-X-AI-chat-assistance (ai-chat-v2) | feat: add link to IntelliVerse X product catalog | — | ☐ Not started | — | Footer + About |
| Intelliverse-X-User-Webfrontend (platform) | feat: add link to IntelliVerse X product catalog | — | ☐ Not started | — | Dashboard sidebar + footer |
| intelliverse-x-kiosk-frontend (kiosk) | feat: add link to IntelliVerse X product catalog | — | ☐ Not started | — | Footer |

**Instructions:**
1. Create PR for each repo using template in §5 Campaign C1
2. Update `Status` to ✅ Merged when PR is merged
3. Record `Merged Date`
4. Verify link is live by visiting the subdomain and checking footer/About page

---

## Appendix B: Example Product Hunt gallery assets

**Asset 1: Homepage hero (1920x1080 PNG)**
- Shows: Product grid with category filters, search bar, IntelliVerse X branding
- Text overlay: "Discover 10+ AI-Powered Products in One Ecosystem"
- CTA visible: "Explore Products →"

**Asset 2: Product detail page (1920x1080 PNG)**
- Shows: Individual product (e.g., AI Tutor) with screenshot, description, "Visit Live Site" button
- Text overlay: "Each Product Has Dedicated Page with Schema and Integrations"

**Asset 3: Category filter (1920x1080 PNG)**
- Shows: Filter dropdown with categories (Education, Gaming, AI, Content Creation, Business)
- Text overlay: "Browse by Category — Education, Gaming, AI, and More"

**Asset 4: Internal cross-link example (1920x1080 PNG)**
- Shows: Footer of tutor.intelli-verse-x.ai with "See all IntelliVerse X products" link
- Text overlay: "Every Product Links Back to the Catalog — Seamless Discovery"

**Asset 5 (optional): Video walkthrough (30 seconds, MP4)**
- Narration script:
  ```
  "IntelliVerse X Product Catalog is your hub for discovering our AI ecosystem.
  Browse 10+ products across education, gaming, and business.
  Each product integrates with the others — shared auth, cross-game rewards, unified UX.
  Try it now at products.intelli-verse-x.ai."
  ```
- Screen recording: Navigate homepage → filter by category → click product → show detail page → click "Visit Live Site"

---

## Appendix C: Resource page outreach target list (example)

Populate this during Campaign C5 research phase (week 8).

| # | Page Title | URL | Author | DA | Published | Why it's a fit | Outreach status |
|---|------------|-----|--------|----|-----------|-----------------|----|
| 1 | "10 Best AI Platforms for Education 2026" | example.com/best-ai-ed | Jane Doe | 35 | 2026-03-15 | Lists AI tutoring + quiz tools | ☐ Not contacted |
| 2 | "AI Product Suites vs. Point Solutions" | example.com/ai-suites | John Smith | 42 | 2026-02-10 | Compares multi-product platforms | ☐ Not contacted |
| 3 | "Alternatives to Google Workspace for AI" | example.com/google-alt | Tech Review | 50 | 2025-12-20 | Lists integrated tool suites | ☐ Not contacted |
| 4 | "Best AI Catalogs and Directories" | example.com/ai-catalogs | AI Tools Blog | 28 | 2026-01-05 | Lists PH, Futurepedia, etc. | ☐ Not contacted |
| 5 | "Top 15 AI Platforms for Developers" | example.com/ai-dev | Dev.to author | 38 | 2026-04-01 | Lists AI APIs, ecosystems | ☐ Not contacted |

**Instructions:**
1. Use Google searches (see Campaign C5) to find 5+ target pages
2. Populate table with URL, author, DA (use Moz extension), published date
3. Qualify: Must be <12 months old, DA >20, includes outbound links
4. Send outreach emails using template in Campaign C5
5. Update `Outreach status` to ✅ Contacted, ✅ Positive response, ✅ Link added, or ❌ Declined

---

**End of playbook.**

**Next steps:**
1. Await deployment of products.intelli-verse-x.ai (blocker — see [remediation playbook](../remediation/products.md))
2. Record baseline metrics immediately after deployment (week 1)
3. Open 11 PRs for internal cross-links (week 2)
4. Begin Product Hunt prep (week 3)
5. Update outreach tracker weekly

**Questions or blockers?** See §10 Open Questions or contact marketing/growth team lead.

**Playbook version:** 1.0 (2026-05-17)  
**Author:** Gas Town audits/crew/auditor (firecrawl + claude)  
**Cross-references:** [remediation/products.md](../remediation/products.md), [PR #90](https://github.com/intelli-verse-x/Intelliverse-X-Products/pull/90)
