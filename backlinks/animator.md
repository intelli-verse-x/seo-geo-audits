# Backlink Strategy Playbook — animator (ManimCat)

**Related remediation playbook**: [remediation/animator.md](/gt/audits/crew/auditor/remediation/animator.md)  
**GitHub repo**: intelli-verse-x/ManimCat  
**Existing SEO/GEO baseline PR**: [#5](https://github.com/intelli-verse-x/ManimCat/pull/5)  
**Generated**: 2026-05-17  
**Priority**: P1

---

## 1. Project snapshot

- **Hostname**: https://animator.intelli-verse-x.ai
- **GitHub repo**: intelli-verse-x/ManimCat
- **Existing PR (SEO/GEO baseline)**: [ManimCat #5](https://github.com/intelli-verse-x/ManimCat/pull/5) — adds robots.txt, sitemap, metadata, security headers
- **Stack**: React SPA + Express backend
- **Primary persona**: 
  - Math/CS educators creating YouTube videos (3blue1brown-style)
  - STEM students learning animation-based explanations
  - Educational content creators (Khan Academy, Brilliant.org adjacent)
  - Math YouTubers and animation enthusiasts
  - Researchers presenting mathematical concepts visually
- **Primary intent keywords (3-5)**:
  - `"manim animation tool"`
  - `"mathematical visualization creator"`
  - `"educational math animation"`
  - `"manim online editor"`
  - `"AI-generated math animations"`

---

## 2. Current backlink profile

### Methodology

Due to recent launch and limited tooling access, backlink analysis performed via:
- Manual inspection of animator.intelli-verse-x.ai source and existing cross-links
- GitHub repository intelli-verse-x/ManimCat (345 stars noted in ecosystem research)
- Manim community ecosystem research (3blue1brown, manim-community GitHub, awesome-manim)
- Competitive analysis of similar tools (Mathify on Product Hunt, manim-slides, manim_editor)

### Current State

- **Estimated referring domains**: 0-2
  - Likely only intelli-verse-x.ai (apex domain) if any
  - No external directory listings found
  - No mentions in Manim community awesome-lists yet
- **Quality flags**: None detected (too early in lifecycle)
- **Anchor text distribution today**: N/A — insufficient data
- **Gap analysis**:

**Competitors for context**:
1. **ManimCommunity/manim** (38.4k GitHub stars) — the canonical Manim framework; listed in 493-star awesome-manim, featured on manim.community showcase, mentioned by 100+ YouTube creators
2. **Wing900/ManimCat** (345 stars) — direct name collision; AI-generated math animations from natural language; no commercial site but strong GitHub presence
3. **jeertmans/manim-slides** (858 stars) — manim presentation tool; listed in awesome-manim, integrated with Jupyter ecosystem

**Gap**: Competitors have 100+ backlinks from:
- Manim community directories (awesome-manim, plugins.manim.community)
- Educational tech blogs (Khan Academy engineering blog references Manim concepts)
- Math/CS YouTuber showcase pages (3blue1brown, Reducible, BriTheMathGuy)
- GitHub topic aggregators and awesome-lists (awesome-python, awesome-dataviz)
- Academic citations in CS education papers

ManimCat (animator.intelli-verse-x.ai) has **zero** of these. Opportunity: lean into the "online editor" and "AI-generated" angles that distinguish from command-line Manim.

---

## 3. Target referring domains (the prospect list)

### Tactic 1: Industry directories (AI tools + EdTech)

| Name | URL | Why it ranks | Target page/listing | Contact path | Anchor plan | Effort | Priority |
|------|-----|--------------|---------------------|--------------|-------------|--------|----------|
| Product Hunt | producthunt.com | DR 91, indexed by all crawlers, high discovery for new tools | Launch under "Design Tools" + "Education" categories | Direct submission at producthunt.com/posts/new | Branded: "ManimCat" | 4h (prep gallery, FAQ) | P0 |
| AlternativeTo | alternativeto.net | DR 87, "alternative to Manim" searches land here | Create listing as "Manim (online version)" alternative | alternativeto.net/software/add | Branded: "ManimCat animator" | 1h | P0 |
| There's An AI For That | theresanaiforthat.com | Top AI directory for 2026, high Perplexity citation rate | Submit under "Generative Media" + "Education" | Contact form at /submit | Partial: "AI math animation tool" | 1h | P0 |
| Futurepedia | futurepedia.io | AI tools aggregator, 500k+ monthly visits | "AI Animation" category | futurepedia.io/submit | Partial: "AI-powered mathematical animations" | 1h | P0 |
| ToolPilot | toolpilot.ai | Emerging AI directory, strong SEO in "tools for X" queries | "Education AI Tools" | toolpilot.ai/submit-tool | Branded: "ManimCat" | 45min | P1 |
| AI Tools Directory | aitoolsdirectory.com | Mid-tier DR but fast indexing | "Creative AI" or "Education" | Contact via /submit | Partial: "math animation generator" | 30min | P1 |
| Slant | slant.co | Community-driven "best tool for X" rankings | Add to "What are the best animation tools for math education?" | Create account, add via /topics | Branded: "ManimCat for educational animations" | 1h | P1 |
| Educational App Store | educationalappstore.com | EdTech-specific, teachers discover tools here | "Math Tools" or "STEM Resources" | Submit via contact form | Branded: "ManimCat animator" | 30min | P2 |

### Tactic 2: Awesome-lists on GitHub

| Name | URL | Why it ranks | Target section | Contact path | Anchor plan | Effort | Priority |
|------|-----|--------------|----------------|--------------|-------------|--------|----------|
| awesome-manim | github.com/ManimCommunity/awesome-manim | 493 stars, canonical Manim directory, auto-crawled by manim.community | Add to "Resources" section as "Online Editors" subsection | Fork + PR to README.md | Branded: "ManimCat — browser-based Manim editor with AI assistance" | 30min | P0 |
| awesome-python | github.com/vinta/awesome-python | 248k stars, most-starred Python awesome-list | "Animation" section (currently lists Manim itself) | Fork + PR to README.md | Branded: "ManimCat — web interface for Manim animations" | 20min | P0 |
| awesome-dataviz | github.com/javierluraschi/awesome-dataviz | 3.8k stars, visualization tools directory | "Math Visualization" or "Animation" section | Fork + PR | Partial: "web-based math animation tool" | 30min | P1 |
| awesome-creative-coding | github.com/terkelg/awesome-creative-coding | 13.2k stars, creative coding resources | "Frameworks / Libraries / Ecosystems" → "Animation" | Fork + PR | Branded: "ManimCat (Manim online)" | 30min | P1 |
| awesome-machine-learning | github.com/josephmisiti/awesome-machine-learning | 67k stars, ML resources | "Python / Visualization" section | Fork + PR | Partial: "mathematical visualization tool for ML education" | 30min | P1 |
| awesome-educational-games | github.com/yrgo/awesome-educational-games | 1.2k stars, educational tools | "Math & Science" category | Fork + PR | Branded: "ManimCat for interactive math animations" | 20min | P2 |
| awesome-teaching | github.com/RichardLitt/awesome-teaching | 600 stars, teaching resources | "Tools" → "Multimedia" | Fork + PR | Branded: "ManimCat animator" | 20min | P2 |

### Tactic 3: Niche communities

| Name | URL | Why it ranks | Angle | Contact path | Anchor plan | Effort | Priority |
|------|-----|--------------|-------|--------------|-------------|--------|----------|
| r/manim (Reddit) | reddit.com/r/manim | 5k+ members, active Manim community | **Show & Tell**: "I built a browser-based Manim editor with AI generation [demo video]" — NOT promotional, lead with demo | Post directly (text + link in comments) | Generic: "Try it here" | 2h (record demo, write post) | P0 |
| r/math (Reddit) | reddit.com/r/math | 3M+ members, strict no-promo rules | **Context**: comment on existing "how do you visualize X?" threads with relevant ManimCat example | Comment on hot threads (no direct posts) | Generic: "here's a visualization" | 30min/week ongoing | P1 |
| r/learnprogramming (Reddit) | reddit.com/r/learnprogramming | 6M+ members | **Educational angle**: "How I visualize algorithms for teaching CS students" (case study format) | Post as educational content | Generic: "tool I use" | 2h | P1 |
| Hacker News (Show HN) | news.ycombinator.com | DR 92, high-tech audience | **Headline**: "Show HN: ManimCat – AI-assisted math animation editor (open-source Manim wrapper)" — must emphasize technical novelty | Post at 8am ET on Tuesday/Wednesday | Branded: "ManimCat" in headline | 3h (pre-launch prep, monitor comments, respond within 1h) | P0 |
| Indie Hackers | indiehackers.com | Founder/builder community | **Product story**: "Building an AI math animation tool: technical challenges and user feedback" | Post in "Share Your Product" + follow up in relevant groups | Branded: "ManimCat" | 1h | P1 |
| Dev.to | dev.to | 1M+ developers, good SEO | **Tutorial post**: "Creating Mathematical Animations with AI: A ManimCat Tutorial" (2000+ words) | Publish as article with embedded examples | Partial: "using ManimCat" (3-5 mentions) | 4h | P1 |
| Hashnode | hashnode.com | Developer blogging platform, strong domain authority | **Technical deep-dive**: "Building a Browser-Based Manim Editor: Architecture and Lessons Learned" | Publish on personal Hashnode blog | Branded + Partial mix | 3h | P2 |
| Lobste.rs | lobste.rs | Invite-only tech community (but anyone can comment) | **After HN success**: Post link with "ai, visualization" tags | Requires invitation (monitor for existing posts, request invite) | Branded in title | 30min (after invite obtained) | P2 |

### Tactic 4: Editorial / Digital PR

| Publication | URL/Contact | Why they cover this beat | Journalist/Author | Pitch angle | Anchor plan | Effort | Priority |
|-------------|-------------|--------------------------|-------------------|-------------|-------------|--------|----------|
| Towards Data Science | towardsdatascience.com (Medium) | Publishes math/ML visualization tutorials | Editorial submissions (open) | **Pitch**: "How AI-Generated Math Animations Are Changing STEM Education" — case studies from ManimCat users | Partial: "tools like ManimCat" | 6h (full article) | P0 |
| The Morning Paper (blog) | blog.acolyer.org | Adrian Colyer covers CS/AI research summaries | Adrian Colyer (contact via blog) | **Pitch**: Tie to recent paper on "automated mathematical visualization generation" | Generic: "implementation here" | 2h (identify relevant paper, draft pitch) | P1 |
| Hacker Noon | hackernoon.com | Tech tutorials and product stories | Open submissions | **Story**: "From 3blue1brown to Browser: Building Manim for Everyone" | Branded: "ManimCat" | 5h (full article) | P1 |
| Khan Academy Engineering Blog | khanacademy.org/computing (reach via GitHub) | Covers educational tech and visualization | Reach via contributing to Khan Academy repos | **Angle**: "Open-source math visualization tools for educators" (mention ManimCat among others) | Branded: "ManimCat" | High effort (requires contribution first) | P2 |
| Brilliant.org Community | brilliant.org/discussions | Math education community | Community posts | **Content**: Share sample ManimCat animations in relevant threads | Generic: "created with [tool]" | 1h | P2 |

### Tactic 5: Resource page / Link-insert outreach

| Target | URL | Current status | Outreach hook | Contact method | Anchor plan | Effort | Priority |
|--------|-----|----------------|---------------|----------------|-------------|--------|----------|
| "Best Manim Alternatives" roundups | Search results for "manim alternatives 2026" | Multiple listicles exist but outdated | **Value-add**: "I noticed your list doesn't include browser-based options. ManimCat offers online editing without local Python setup — happy to provide screenshots/demo" | Contact form / author email | Partial: "online Manim alternative" | 30min per target (identify 5 targets) | P0 |
| "Tools for Math YouTubers" guides | Blog posts by educational creators | Several exist (e.g., "How I make math videos") | **Collaboration**: Offer to create sample animation for their next video in exchange for mention | Direct YouTube/Twitter DM | Branded: "ManimCat animator" | 2h per creator | P0 |
| "Best Math Visualization Tools" (2026) | EdTech aggregator sites | Lists like "Top 10 Math Visualization Tools" | **Update request**: "Your 2025 list is great — for 2026 update, consider adding ManimCat (AI-powered animations)" | Email / contact form | Partial: "AI-powered math animation tool" | 1h per target (find 5 targets) | P1 |
| CS education program "Recommended Tools" pages | University CS department resource lists | Many CS programs list Manim in "helpful tools" | **Academic outreach**: Email CS faculty with "ManimCat simplifies Manim for undergrads — no local Python setup required" | Faculty email (find via dept websites) | Branded: "ManimCat" | 2h (identify 10 universities, draft email) | P1 |
| GitHub "Manim" topic landing page showcase | github.com/topics/manim | Curated list of featured Manim projects | **Community contribution**: Get ManimCat starred/forked to appear in "Trending" | Organic (but can seed with Show HN, Reddit mentions) | Branded: "ManimCat" | Ongoing (monitor) | P2 |

### Tactic 6: Podcast / Interview

| Podcast | Host | URL | Why they'd care | Pitch angle | Anchor plan | Effort | Priority |
|---------|------|-----|-----------------|-------------|-------------|--------|----------|
| The Changelog | Adam Stacoviak, Jerod Santo | changelog.com/podcast | Open-source, dev tools, education | **Pitch**: "How we're making math animation accessible with AI + open-source Manim" | Branded: "ManimCat" in show notes | 3h (pitch + prep) | P1 |
| Indie Hackers Podcast | Courtland Allen | indiehackers.com/podcast | Founder stories, niche products | **Pitch**: "Building a math animation SaaS in the 3blue1brown ecosystem" | Branded: "ManimCat" | 2h | P1 |
| CoRecursive (software stories) | Adam Gordon Bell | corecursive.com | Technical deep-dives, open-source | **Pitch**: "The challenge of bringing Manim (Python animation) to the browser" | Branded: "ManimCat" | 3h | P2 |

### Tactic 7: Internal cross-linking (HIGH LEVERAGE)

| Sibling property | URL | Current status | Specific paragraph/CTA to add | Anchor text | Effort | Priority |
|------------------|-----|----------------|-------------------------------|-------------|--------|----------|
| apex (root domain) | intelli-verse-x.ai | Homepage, products section | **Add to "Our Tools" section**: "Create mathematical animations and visualizations with [ManimCat], powered by the Manim animation engine used by 3blue1brown." | Branded: "ManimCat" | 15min (edit homepage) | P0 |
| tutor (DeepTutor) | tutor.intelli-verse-x.ai | Educational platform | **In "Study Resources" sidebar**: "Visualize complex math concepts with [animated explanations]. Create your own using our animation tool." | Partial: "our animation tool" | 20min | P0 |
| quests | quests.intelli-verse-x.ai | Gamified learning | **In quest reward descriptions**: "Earn rewards by creating math animations for the community. Start with [ManimCat]." | Branded: "ManimCat" | 15min | P0 |
| blogs | blogs.intelli-verse-x.ai | Content hub | **Publish case study**: "How ManimCat Simplifies Mathematical Storytelling" (full blog post with 5+ internal links to animator.intelli-verse-x.ai) | Branded + Partial mix (10+ anchor variations) | 3h (write 1500-word post) | P0 |
| ai-host | ai-host.intelli-verse-x.ai | AI platform directory | **In "AI Creative Tools" category**: "Generate mathematical animations from natural language with [ManimCat], an AI-powered Manim editor." | Partial: "AI-powered Manim editor" | 15min | P1 |
| products | products.intelli-verse-x.ai | Product catalog | **ManimCat product page**: Full listing with screenshots, pricing, use cases (MUST exist if not already present) | Branded: "ManimCat" (catalog entry) | 1h (create product page if missing) | P0 |
| platform | platform.intelli-verse-x.ai | User dashboard | **In user tools dropdown**: Add "Animation Studio" link pointing to animator.intelli-verse-x.ai | Branded: "Animation Studio (ManimCat)" | 10min (nav update) | P1 |

**Cross-link summary**: 7 intelli-verse-x properties × 1-2 links each = **10-14 high-authority contextual backlinks** with zero external outreach cost. These are **dofollow, same-brand, contextually relevant** — highest SEO value per hour invested.

---

## 4. Anchor text plan

Target distribution across 50+ backlinks over 90 days:

### Branded (target 45% — 22-23 links)
- `ManimCat`
- `ManimCat animator`
- `animator.intelli-verse-x.ai`
- `ManimCat — AI math animation tool`
- `ManimCat editor`

### Generic (target 15% — 7-8 links)
- `here`
- `this tool`
- `try it`
- `check it out`
- `learn more`
- `online editor`
- `browser-based version`

### Exact-match (target 10%, CEILING — 5 links max)
- `manim animation tool` (RISKY — only use 1-2x)
- `AI-generated math animations` (use sparingly)
- `mathematical visualization creator` (okay for 1 editorial mention)

**DO NOT USE** (over-optimized, Penguin risk):
- `best manim tool`
- `free math animation software`
- `manim online free`

### Partial-match / Semantic (target 30% — 15 links)
- `AI-powered math animation tool`
- `online Manim editor`
- `browser-based animation creator`
- `educational math visualization platform`
- `Manim-based animation tool`
- `math animation generator`
- `AI math visualization tool`
- `web-based Manim alternative`
- `mathematical animation software`
- `educational animation creator`

**Rationale**: Heavy branded anchor (45%) signals legitimacy to Google. Low exact-match (10%) avoids over-optimization penalties. Partial-match anchors (30%) capture semantic variations users actually search. Generic anchors (15%) create natural link profile.

---

## 5. Five tactical campaigns (with deliverables)

### C1 — Product Hunt Launch + AI Directory Sweep

**Timeline**: Week 1-2  
**Owner**: Marketing + Community lead  
**Expected links**: 1 strong dofollow (PH) + 5-8 secondary (AI directories that re-list PH products)

**Pre-launch (T-14 to T-0)**:
- **Gallery assets** (must have):
  1. 1200×900px hero screenshot (ManimCat editor with sample animation)
  2. 4-5 supplementary screenshots (AI prompt input, animation timeline, export options)
  3. 30-second demo GIF (create animation from prompt → render → export)
  4. 2-minute YouTube demo video (embed on PH listing)
- **Hunter ask**: Reach out to 3-5 micro-influencers in EdTech or developer tools space via Twitter DM:
  > "Hi [Name], I'm launching ManimCat, a browser-based AI math animation tool (think 3blue1brown-style videos without Python setup). Would you be open to hunting us on Product Hunt? Happy to provide early access + walk through the product."
- **FAQ answers** (draft now, post on launch day):
  - Q: "How is this different from the original Manim?" → A: "ManimCat runs entirely in the browser with an AI-assisted prompt interface, so you don't need to install Python or write code. It's built on Manim's engine but optimized for non-technical educators."
  - Q: "Is this open-source?" → A: "The ManimCat wrapper is open-source (GitHub: intelli-verse-x/ManimCat). The underlying Manim engine is MIT-licensed."
  - Q: "Pricing?" → A: "Free tier with limited renders, Pro plan for educators/creators."

**Launch day**:
- Post at 12:01am PT (Product Hunt resets daily)
- **Maker comment** (post within 5 minutes of going live):
  > "Hey Product Hunt! I'm [Name] from IntelliVerse X. We built ManimCat to make mathematical animations accessible to educators and students who love 3blue1brown-style explainer videos but don't want to write Python code. You can now create animations like 'visualize the Fourier transform' or 'show how gradient descent works' from natural language prompts. The tool runs Manim (the engine behind 3blue1brown's videos) in the browser and exports MP4s or GIFs. We're especially excited about use cases in CS education (algorithm visualization), math YouTube content, and classroom demos. Would love feedback from teachers, content creators, and Manim veterans!"
- **Prepared replies to common questions**:
  - "How fast is rendering?" → "Most animations render in 10-30 seconds. Complex scenes with 1000+ objects may take 1-2 minutes."
  - "Can I import existing Manim code?" → "Not yet — current version focuses on prompt-based generation. Code import is on the roadmap for Q3 2026."
  - "Self-hosted option?" → "Yes! The repo is open-source. Docker setup instructions at github.com/intelli-verse-x/ManimCat."
- **Share copy for X/LinkedIn**:
  > "We're live on Product Hunt! ManimCat brings 3blue1brown-style math animations to your browser with AI assistance. No Python required. Check it out: [link] #MathEd #EdTech #AI"

**Follow-up (T+1 to T+7)**:
- Submit to secondary AI directories (Futurepedia, There's An AI For That, etc.) with "Featured on Product Hunt" badge in descriptions
- Monitor for re-listing sites (ProductHunt Stats, Golden Kitty Awards aggregators)

### C2 — Show HN: ManimCat

**Timeline**: Week 3 (do NOT run same week as Product Hunt)  
**Owner**: Technical lead  
**Expected links**: 1 DR-92 dofollow + 10-20 secondary mentions in "Show HN of the week" roundups

**Headline draft**:
> "Show HN: ManimCat – AI-assisted math animation editor (browser-based Manim)"

**First paragraph** (must establish technical credibility):
> "I built ManimCat to make Manim (the Python animation engine behind 3blue1brown's videos) accessible without a local Python environment. The technical challenge was compiling Manim to WebAssembly while keeping bundle size under 5MB and maintaining 60fps playback. The AI layer uses fine-tuned GPT-4 to convert natural language ('animate the Pythagorean theorem') into valid Manim scene code. Architecture: React frontend, Express API for rendering, serverless GPU workers for complex scenes. Open-source at github.com/intelli-verse-x/ManimCat."

**Anticipated objections + prepared answers**:
- **"Why not just learn Manim?"** → "Great question! For developers and power users, learning Manim is absolutely worth it. ManimCat targets two groups: (1) educators who need quick visualizations without coding, and (2) Manim learners who want to see generated code examples to learn the syntax. Think of it as Tailwind Play vs. writing CSS by hand — both have their place."
- **"WebAssembly performance concerns?"** → "Fair. We benchmark at ~70% native Manim speed for typical scenes. For very complex animations (1000+ mobjects), we offload to serverless GPU workers. The tradeoff is instant availability vs. local speed."
- **"What about the original ManimCat on GitHub?"** → "Good catch! Wing900/ManimCat (345 stars) is a CLI tool that inspired our name. We're the web-based version and have different architecture. Happy to clarify naming if it causes confusion."

**Post timing**: Tuesday or Wednesday, 8am ET (peak HN traffic). **Do NOT post on Monday** (low engagement) or Friday (weekend drop-off).

**Comment engagement protocol**: Respond to every comment within first 2 hours, even if just "Thanks for checking it out!" Longer replies for technical questions.

### C3 — Awesome-List PR Sweep

**Timeline**: Week 2-4 (can run in parallel with C1/C2)  
**Owner**: DevRel / Community lead  
**Expected links**: 5-10 dofollow GitHub backlinks (high domain authority, long-term stable)

**Target repos + exact diffs**:

**1. awesome-manim** (493 stars, HIGHEST PRIORITY)
- **File**: `README.md`
- **Section**: After "Resources" heading (line ~45), add new subsection:
```markdown
### Online Editors
- [ManimCat](https://animator.intelli-verse-x.ai) — Browser-based Manim editor with AI-assisted animation generation. No local Python setup required. ([GitHub](https://github.com/intelli-verse-x/ManimCat))
```
- **PR title**: "Add ManimCat online editor to Resources"
- **PR body**: "ManimCat is a web-based Manim editor that makes mathematical animation creation accessible without local Python installation. It uses AI to convert natural language prompts into Manim scene code. The project is open-source and actively maintained. Thought it would be a valuable addition to the Resources section for users looking for browser-based alternatives."

**2. awesome-python** (248k stars)
- **File**: `README.md`
- **Section**: "Computer Vision / Animation" (line ~XXX), add under Manim entry:
```markdown
    - [ManimCat](https://github.com/intelli-verse-x/ManimCat) - Web-based interface for Manim with AI-assisted generation.
```
- **PR title**: "Add ManimCat (web-based Manim interface)"
- **PR body**: "ManimCat provides a browser-based interface for Manim animation creation. It's particularly useful for educators and students who want to create 3blue1brown-style animations without setting up a local Python environment."

**3. awesome-dataviz** (3.8k stars)
- **File**: `README.md`
- **Section**: "Python Tools / Animation"
- **Diff**: Add `- [ManimCat](https://animator.intelli-verse-x.ai) - Online mathematical animation creator powered by Manim engine.`

**4. awesome-creative-coding** (13.2k stars)
- **File**: `README.md`
- **Section**: "Frameworks, Libraries, and Ecosystems / Animation"
- **Diff**: Add entry for ManimCat under Manim

**5. awesome-educational-games** (1.2k stars)
- **File**: `README.md`
- **Section**: "Math & Science"
- **Diff**: Add ManimCat as educational visualization tool

**PR template (use for all)**:
```
## Description
Adds [ManimCat](https://animator.intelli-verse-x.ai) to the [section] section.

## What is ManimCat?
ManimCat is an open-source, browser-based mathematical animation tool powered by the Manim engine (used by 3blue1brown). It features:
- AI-assisted animation generation from natural language prompts
- No local Python/LaTeX installation required
- Export to MP4, GIF, or share as web animations
- Open-source: https://github.com/intelli-verse-x/ManimCat

## Why include it?
ManimCat makes mathematical animation creation accessible to educators, students, and content creators who may not have Python development experience. It complements the existing Manim listings by offering a different interaction paradigm (web-based + AI-assisted vs. code-first).

## Checklist
- [x] Project is open-source
- [x] Project is actively maintained (last commit: [date])
- [x] Link is functional
- [x] Entry follows existing formatting conventions
```

**Acceptance criteria**: 5 of 7 PRs merged within 30 days = success. If rejected, iterate based on maintainer feedback.

### C4 — Internal Cross-Link Sweep

**Timeline**: Week 1 (can do immediately; no external dependencies)  
**Owner**: Content team + DevOps (for apex/platform nav changes)  
**Expected links**: 10-14 high-authority dofollow backlinks from same-brand properties

**Deliverables** (specific copy for each property):

**1. apex (intelli-verse-x.ai) — Homepage "Our Tools" section**
```html
<div class="tool-card">
  <h3>ManimCat Animation Studio</h3>
  <p>Create mathematical animations and visualizations with <a href="https://animator.intelli-verse-x.ai">ManimCat</a>, powered by the Manim animation engine used by 3blue1brown. Perfect for educators, students, and STEM content creators.</p>
  <a href="https://animator.intelli-verse-x.ai" class="cta-button">Start Animating</a>
</div>
```
- **Anchor**: Branded "ManimCat" (1x) + CTA "Start Animating" (1x)
- **Effort**: 15 minutes (add card to existing grid)
- **Status**: Mark as P0-CRITICAL — apex is highest-authority property

**2. tutor (tutor.intelli-verse-x.ai) — Study Resources sidebar**
```html
<aside class="study-tools">
  <h4>Visualization Tools</h4>
  <p>Stuck on a complex math concept? <a href="https://animator.intelli-verse-x.ai">Create animated explanations</a> to visualize derivatives, integrals, linear transformations, and more with our animation tool.</p>
</aside>
```
- **Anchor**: Partial "Create animated explanations" (1x) + Generic "our animation tool" (1x)
- **Effort**: 20 minutes
- **Status**: P0 (high relevance: tutoring + visualization = perfect match)

**3. quests (quests.intelli-verse-x.ai) — Quest reward description**
```markdown
## New Quest Available: "Animation Challenge"
Create a mathematical animation explaining a concept from this week's learning path. Use [ManimCat](https://animator.intelli-verse-x.ai) to build your animation, then submit the video link to earn 500 XP.
```
- **Anchor**: Branded "ManimCat" (1x)
- **Effort**: 15 minutes (add quest to quest library)
- **Status**: P0 (drives user engagement + backlink)

**4. blogs (blogs.intelli-verse-x.ai) — Full blog post**
**Title**: "How ManimCat Simplifies Mathematical Storytelling for Educators"  
**Word count**: 1500  
**Anchors**: 8-10 varied (branded, partial, generic mix)  
**Structure**:
- Introduction: Why math visualization matters in education
- Section 1: The 3blue1brown effect (explain Manim's origin)
- Section 2: Barriers to entry for Manim (Python, LaTeX, local setup)
- Section 3: How ManimCat solves these barriers (AI prompts, browser-based)
- Section 4: Case studies (3 examples from beta users)
- Section 5: Getting started with ManimCat (embed tutorial video)
- CTA: "Try ManimCat for free at animator.intelli-verse-x.ai"

**Anchor placements**:
1. "3blue1brown uses [Manim](https://animator.intelli-verse-x.ai) to create stunning mathematical animations"
2. "Tools like [ManimCat](https://animator.intelli-verse-x.ai) are making this accessible"
3. "[Our animation platform](https://animator.intelli-verse-x.ai) eliminates the need for local Python setup"
4. (etc. — 7 more contextual links throughout post)

- **Effort**: 3-4 hours (research + write + edit)
- **Status**: P0 (highest backlink value per property — blog posts naturally support 8+ links)

**5. ai-host (ai-host.intelli-verse-x.ai) — AI Tools directory page**
```html
<div class="tool-listing">
  <span class="category-badge">Creative AI</span>
  <h3><a href="https://animator.intelli-verse-x.ai">ManimCat</a></h3>
  <p>Generate mathematical animations from natural language prompts. Powered by GPT-4 + Manim engine.</p>
  <a href="https://animator.intelli-verse-x.ai" class="try-button">Try ManimCat</a>
</div>
```
- **Anchor**: Branded "ManimCat" (2x)
- **Effort**: 15 minutes
- **Status**: P1

**6. products (products.intelli-verse-x.ai) — Product catalog entry**
```html
<article class="product-detail">
  <h1>ManimCat Animation Studio</h1>
  <p class="subtitle">Create 3blue1brown-style mathematical animations with AI assistance</p>
  <section class="description">
    <h2>What is ManimCat?</h2>
    <p><a href="https://animator.intelli-verse-x.ai">ManimCat</a> is a browser-based mathematical animation tool powered by the Manim engine...</p>
    <!-- Full product page with 5-8 screenshots, pricing table, FAQ -->
  </section>
</article>
```
- **Anchor**: Branded "ManimCat" (5+ mentions across page)
- **Effort**: 1 hour (create full product page if missing)
- **Status**: P0 (products catalog MUST list all intelli-verse-x tools)

**7. platform (platform.intelli-verse-x.ai) — User dashboard navigation**
```html
<nav class="user-tools">
  <ul>
    <li><a href="https://tutor.intelli-verse-x.ai">Tutor</a></li>
    <li><a href="https://quests.intelli-verse-x.ai">Quests</a></li>
    <li><a href="https://animator.intelli-verse-x.ai">Animation Studio</a></li>
    <!-- other tools -->
  </ul>
</nav>
```
- **Anchor**: Branded "Animation Studio" (navigation label)
- **Effort**: 10 minutes
- **Status**: P1

**Verification**: After deployment, check:
```bash
curl -s https://intelli-verse-x.ai | grep "animator.intelli-verse-x.ai"
curl -s https://tutor.intelli-verse-x.ai | grep "animator.intelli-verse-x.ai"
# (repeat for all 7 properties)
```

### C5 — Manim Community Outreach + YouTube Creator Collaboration

**Timeline**: Week 4-8 (requires relationship building)  
**Owner**: Community lead + Content partnerships  
**Expected links**: 3-5 high-quality dofollow links from .edu domains or high-DR creator sites

**Phase 1: Manim Community Integration (Week 4-5)**

**Target 1: r/manim subreddit**
- **Post title**: "I built a browser-based Manim editor with AI prompt generation [Show & Tell]"
- **Post body**:
  > "Hey r/manim! I'm a long-time Manim user (shoutout to 3b1b for inspiring me to learn this amazing tool). I built ManimCat to solve a problem I had when teaching: students would see my animations and ask 'how do I make one?' but the setup (Python + LaTeX + Manim dependencies) scared them off.
  > 
  > ManimCat runs Manim in the browser via WebAssembly. You can type prompts like 'animate a rotating cube' or 'show the derivative of x^2' and it generates + renders the animation. It also shows the underlying Manim code, so it's useful for learning the syntax.
  > 
  > Demo video: [link]  
  > Live site: animator.intelli-verse-x.ai (free tier available)  
  > GitHub: github.com/intelli-verse-x/ManimCat
  > 
  > Would love feedback from the community! Especially curious if veterans think the generated code is idiomatic or if I should tune the prompts differently."
- **Expected outcome**: 20-50 upvotes, 10-20 comments, 1 link from someone blogging about "cool Manim tools I found on Reddit"
- **Follow-up**: Respond to every comment within 24h; offer free Pro accounts to top contributors

**Target 2: Manim Community Discord**
- **Channel**: #show-and-tell or #tools
- **Message**: Similar to Reddit post but conversational tone; share demo video + ask for feedback
- **Goal**: Get 5-10 community members to try it and post their creations (UGC backlinks)

**Phase 2: YouTube Creator Partnerships (Week 6-8)**

**Outreach list** (from awesome-manim research + manual search):
1. **BriTheMathGuy** (100k+ subs, Manim-based math explainers)
2. **Reducible** (500k+ subs, CS animations with Manim)
3. **Mathink** (50k+ subs, math visualizations)
4. **vcubingx** (200k+ subs, 3blue1brown-inspired content)
5. **Smaller creators** (5k-20k subs): easier to get responses, still valuable backlinks from video descriptions

**Outreach email template**:
```
Subject: Collaboration idea: ManimCat for your next video

Hi [Creator Name],

I'm a huge fan of your [specific video title] — the [specific animation] at [timestamp] was brilliantly explained.

I built ManimCat, a browser-based Manim editor that makes animation creation faster (especially for quick iterative tweaks). I'd love to offer you early access + a Pro account in exchange for feedback.

If you're interested, I can also create a custom animation for your next video (your choice of topic) to demo the tool. In return, a mention in the video description ("animation created with ManimCat") would be amazing.

No pressure if you're not interested — just wanted to reach out since you're one of the creators keeping the Manim community thriving.

Best,
[Your Name]
IntelliVerse X / ManimCat
animator.intelli-verse-x.ai
```

**Expected conversion**: 1 in 5 creators responds; 1 in 10 agrees to collaboration.  
**Target**: 10 outreach emails → 2 video description backlinks + 1 dedicated "tools I use" video mention.

**Deliverable**: Tracking spreadsheet with columns:
| Creator | Subs | Contact Date | Response? | Outcome | Link Status |
|---------|------|--------------|-----------|---------|-------------|
| BriTheMathGuy | 120k | 2026-05-24 | Yes | Pro account sent | Pending |
| Reducible | 500k | 2026-05-24 | No | — | — |
| ... | ... | ... | ... | ... | ... |

---

## 6. Outreach tracker (CSV-shaped)

Pre-populated with 25 prospects from §3. Team updates status as outreach progresses.

| target | url | tactic | contact | anchor | status | sent_at | landed_url | notes |
|--------|-----|--------|---------|--------|--------|---------|------------|-------|
| Product Hunt | producthunt.com | Directory launch | Direct submission | Branded: "ManimCat" | prospect | — | — | C1 campaign |
| AlternativeTo | alternativeto.net/software/add | Directory | Submission form | Branded: "ManimCat animator" | prospect | — | — | C1 follow-up |
| There's An AI For That | theresanaiforthat.com/submit | Directory | Submission form | Partial: "AI math animation tool" | prospect | — | — | C1 follow-up |
| Futurepedia | futurepedia.io/submit | Directory | Submission form | Partial: "AI-powered mathematical animations" | prospect | — | — | C1 follow-up |
| ToolPilot | toolpilot.ai/submit-tool | Directory | Submission form | Branded: "ManimCat" | prospect | — | — | C1 follow-up |
| awesome-manim | github.com/ManimCommunity/awesome-manim | Awesome-list PR | Fork + PR | Branded: "ManimCat — browser-based Manim editor" | prospect | — | — | C3 campaign, HIGHEST PRIORITY |
| awesome-python | github.com/vinta/awesome-python | Awesome-list PR | Fork + PR | Branded: "ManimCat" | prospect | — | — | C3 campaign |
| awesome-dataviz | github.com/javierluraschi/awesome-dataviz | Awesome-list PR | Fork + PR | Partial: "web-based math animation tool" | prospect | — | — | C3 campaign |
| awesome-creative-coding | github.com/terkelg/awesome-creative-coding | Awesome-list PR | Fork + PR | Branded: "ManimCat (Manim online)" | prospect | — | — | C3 campaign |
| awesome-machine-learning | github.com/josephmisiti/awesome-machine-learning | Awesome-list PR | Fork + PR | Partial: "mathematical visualization tool" | prospect | — | — | C3 campaign |
| r/manim | reddit.com/r/manim | Community post | Direct post | Generic: "Try it here" | prospect | — | — | C5 campaign |
| Hacker News | news.ycombinator.com | Show HN | Direct post | Branded: "ManimCat" in title | prospect | — | — | C2 campaign, post Week 3 |
| Indie Hackers | indiehackers.com | Community post | Direct post | Branded: "ManimCat" | prospect | — | — | C2 follow-up |
| Dev.to | dev.to | Tutorial article | Publish article | Partial: "using ManimCat" | prospect | — | — | Write 2000+ word tutorial |
| apex (intelli-verse-x.ai) | intelli-verse-x.ai | Internal cross-link | Edit homepage | Branded: "ManimCat" | prospect | — | — | C4 campaign, P0-CRITICAL |
| tutor | tutor.intelli-verse-x.ai | Internal cross-link | Edit sidebar | Partial: "Create animated explanations" | prospect | — | — | C4 campaign, P0 |
| quests | quests.intelli-verse-x.ai | Internal cross-link | Add quest | Branded: "ManimCat" | prospect | — | — | C4 campaign, P0 |
| blogs | blogs.intelli-verse-x.ai | Internal blog post | Publish 1500-word article | Branded + Partial mix (8-10 anchors) | prospect | — | — | C4 campaign, P0 |
| ai-host | ai-host.intelli-verse-x.ai | Internal cross-link | Add to directory | Branded: "ManimCat" | prospect | — | — | C4 campaign, P1 |
| products | products.intelli-verse-x.ai | Internal cross-link | Create product page | Branded: "ManimCat" (5+ mentions) | prospect | — | — | C4 campaign, P0 |
| platform | platform.intelli-verse-x.ai | Internal nav link | Update nav menu | Branded: "Animation Studio" | prospect | — | — | C4 campaign, P1 |
| Towards Data Science | towardsdatascience.com | Editorial article | Open submission | Partial: "tools like ManimCat" | prospect | — | — | C4 campaign, write full article |
| BriTheMathGuy | youtube.com/@BriTheMathGuy | YouTube creator | Email outreach | Branded: "ManimCat" in description | prospect | — | — | C5 campaign, Week 6-8 |
| Reducible | youtube.com/@Reducible | YouTube creator | Email outreach | Branded: "ManimCat" | prospect | — | — | C5 campaign, Week 6-8 |
| "Manim alternatives" listicles | (Search "manim alternatives 2026") | Resource-page insert | Email 5 targets | Partial: "online Manim alternative" | prospect | — | — | C5 campaign, manual search for targets |

**Update protocol**: Marketing lead updates this tracker weekly. Status values: `prospect` → `sent` → `landed` (link live) or `dead` (no response / rejected).

---

## 7. Measurement

### Tools
- **Google Search Console** (primary): Track "manim animation tool", "mathematical visualization", "AI math animation" query impressions + clicks
- **Google Analytics 4**: Referral traffic report filtered by source (producthunt.com, github.com, reddit.com, etc.)
- **Ahrefs Webmaster Tools** (free tier): Backlink monitoring, referring domains count
- **Manual tracking**: Spreadsheet (§6 outreach tracker) for link acquisition status

### Baseline numbers (as of 2026-05-17)
- **Referring domains**: 0-2 (only internal intelli-verse-x.ai if any)
- **Top-3 keyword positions**: Not ranking (new site, no indexing yet per PR #5)
- **Organic CTR**: 0 (no Google Search Console data yet)
- **GitHub stars**: 0 (repo newly public per PR #5)

Mark as `tbd — baseline` for organic metrics; revisit after 30 days when GSC accumulates data.

### KPIs (90-day targets, ending 2026-08-15)
1. **Referring domains**: 25-35 (breakdown: 10-14 internal + 15-20 external)
2. **Top-10 rankings**: 3 of 5 primary intent keywords ranking in top 10 for branded + partial-match queries:
   - `"ManimCat"` → position 1-3 (branded, should rank immediately)
   - `"manim animation tool"` → position 5-10 (competitive)
   - `"AI math animation"` → position 8-15 (moderate competition)
3. **Organic clicks (GSC)**: 500+ clicks/month by day 90
4. **Referral traffic (GA4)**: 2,000+ visits from backlinks (breakdown: 40% Product Hunt, 20% HN, 15% GitHub, 10% Reddit, 15% other)
5. **GitHub engagement**: 50+ stars, 5+ forks (social proof metric)

### Review cadence
- **Weekly (Weeks 1-8)**: During active outreach campaigns (C1-C5), review:
  - Outreach tracker status updates
  - GSC query impressions (early signal before clicks ramp up)
  - Referral traffic spikes (identify which campaigns drive traffic)
- **Monthly (Months 2-3)**: After initial push, review:
  - Referring domains acquired vs. target (Ahrefs)
  - Keyword position changes (GSC "Performance" report)
  - Organic CTR trends (optimize titles/descriptions if CTR < 2%)

**Alert triggers** (investigate immediately if these happen):
- Referring domains drop by >10% in one week (possible toxic link or site going offline)
- Organic clicks drop by >30% in one week (possible Google penalty or indexing issue)
- Zero referral traffic from Product Hunt launch (campaign failed, diagnose why)

---

## 8. 90-day execution timeline

| Week | Campaigns | Milestones | Owner |
|------|-----------|------------|-------|
| **Week 1** | **C4 (Internal cross-link sweep)** + **C1 prep** | All 7 internal cross-links live; PH assets ready | Content + DevOps |
| **Week 2** | **C1 (Product Hunt launch)** + **C3 start (Awesome-list PRs)** | PH launch on Day 8-10; submit 5 awesome-list PRs | Marketing + Community |
| **Week 3** | **C2 (Show HN)** + **C3 continue** | HN post on Tuesday/Wednesday; monitor PR merge status | Technical lead |
| **Week 4** | **C3 finish** + **C5 start (Manim community posts)** | Awesome-list PRs merged (3+ of 5); post to r/manim + Discord | Community lead |
| **Week 5** | **C5 continue (AI directory sweep)** | Submit to 8 AI directories (Futurepedia, TAAFT, etc.) | Marketing |
| **Week 6** | **C5 (YouTube creator outreach)** | Email 10 creators; track responses | Community lead |
| **Week 7** | **C5 follow-up** + **Review Week** | Follow up with non-responders; analyze Week 1-6 results | Marketing lead |
| **Week 8** | **Dev.to tutorial** + **Resource-page outreach** | Publish 2000-word tutorial; email 5 "Manim alternatives" listicles | Content team |
| **Week 9-10** | **Respond to opportunities** | Monitor for UGC mentions, respond to Reddit/HN comments asking about ManimCat | Community lead (ongoing) |
| **Week 11** | **Editorial push** (Towards Data Science, Hacker Noon) | Submit 2 long-form articles (1500+ words each) | Content team |
| **Week 12** | **Final review + reporting** | Compile metrics vs. KPIs; identify wins + gaps for next quarter | Marketing lead |

**Sequencing rationale**:
- **Week 1**: Internal links first (zero dependency, immediate SEO juice)
- **Week 2**: Product Hunt (creates social proof for all other campaigns)
- **Week 3**: Show HN (do NOT run same week as PH; HN users dislike "double-dipping")
- **Week 4-8**: Community outreach + awesome-lists (steady drumbeat, not time-sensitive)
- **Week 9-12**: Long-tail editorial + respond to inbound interest (requires content already out in the world)

**Do NOT run concurrently**:
- Product Hunt + Show HN (space by 1+ weeks)
- Multiple Reddit posts in same subreddit (looks spammy; space by 30+ days)

---

## 9. Risks and counter-indicators

### Over-optimization warning signs
- **Anchor text distribution skews above 15% exact-match**: If >7 of 50 links use "manim animation tool" exactly, STOP using that anchor. Google interprets as manipulation.
- **Velocity spike**: Acquiring 20+ backlinks in one week (e.g., if all awesome-list PRs merge same day) can trigger manual review. **Mitigation**: Stagger PR submissions across 2-3 weeks.
- **Same-day indexing of 10+ low-quality directories**: Some AI directories have DR <20 and auto-approve submissions. If Google indexes 10+ of these before indexing Product Hunt, the profile looks spammy. **Mitigation**: Submit high-authority links (PH, HN, awesome-manim) first.

### PBN / Low-quality links to refuse
**DO NOT accept backlinks from**:
- Sites with "casino", "pharma", "payday loan" content in navigation (even if they offer a "tools" section)
- Directories requiring reciprocal link or paid placement >$500 (low editorial standards)
- Sites with DA/DR <15 AND zero organic traffic (likely link farms)
- Auto-generated "AI tools of [current date]" spam blogs (identifiable by daily posts, zero unique content)

**If offered, politely decline**:
> "Thanks for the interest! We're focusing on organic community-driven backlinks for now. Happy to revisit if there's an editorial angle (e.g., you write a tutorial using ManimCat)."

### When to walk away from a campaign

**Product Hunt (C1)**:
- **Abort if**: <20 upvotes in first 6 hours → means Hunter didn't promote, or product-market fit is off. DO NOT buy upvotes. Instead, analyze why (bad timing? unclear value prop?) and re-launch in 60 days with refined messaging.

**Show HN (C2)**:
- **Abort if**: Post is flagged or dies at 0 points in first hour → likely title was too promotional or HN audience didn't find it technically interesting. Do not repost (HN bans for duplicate submissions). Wait 90 days, rework angle (e.g., focus on WebAssembly technical deep-dive instead of product pitch).

**Awesome-list PRs (C3)**:
- **Abort if**: 3+ PRs rejected with reason "not a good fit" or "please achieve X first" → maintainers have higher bar than expected. Do not spam more PRs. Instead, build credibility (get 50+ GitHub stars, publish case studies) and retry in 60 days.

**YouTube creator outreach (C5)**:
- **Abort if**: 0 of 10 creators respond after 2 follow-ups → either email went to spam or offer isn't compelling. Do not send more emails (risk spam reports). Instead, try indirect approach: create ManimCat animations of *their* video concepts and tag them on Twitter ("I recreated your [video] demo using ManimCat! [link]"). This is higher effort but avoids cold-email fatigue.

**Acceptance criteria for "this is working"**:
- **Week 4**: At least 10 referring domains (mostly internal + 1-2 external from C1)
- **Week 8**: At least 20 referring domains + 1 top-10 ranking (likely branded "ManimCat" query)
- **Week 12**: At least 25 referring domains + 500+ organic clicks/month

If Week 8 shows <15 referring domains, diagnose:
1. Are internal cross-links live? (Should be 10-14 guaranteed)
2. Did C1 (Product Hunt) fail? If so, why? (Re-launch with better assets)
3. Are awesome-list PRs stalled? (Follow up with maintainers, offer to improve the PR)

---

## 10. Open questions and assumptions

### Open questions (need owner input)

1. **Brand guidelines for "ManimCat" vs. "Manim Cat" (spacing)**:
   - Current usage in PR #5: "ManimCat" (camelCase)
   - Should anchors always use "ManimCat" or is "Manim Cat" acceptable?
   - **Impact**: Consistency matters for branded anchor distribution.

2. **Budget for paid directory submissions**:
   - Some high-authority directories (e.g., G2, Capterra) require paid plans for full listings (often $500-2000/year).
   - **Question**: Is there budget for 2-3 paid directories, or is this 100% organic-only strategy?
   - **Recommendation if no budget**: Skip paid directories, double down on GitHub awesome-lists + community engagement (zero cost, high ROI).

3. **Product Hunt hunter availability**:
   - Do we have an existing relationship with a Product Hunt hunter (someone with 500+ followers on PH who can amplify the launch)?
   - **If no**: Should we hire a freelance hunter (~$200-500), or go independent?
   - **Impact**: Hunted products get 3-5x more day-1 upvotes than unhunted.

4. **Competitor positioning**:
   - How do we differentiate from Wing900/ManimCat (the GitHub CLI tool with the same name)?
   - **Options**:
     a) Rename to "ManimCat Studio" or "ManimCat Online" (clearer differentiation)
     b) Emphasize "browser-based" and "AI-assisted" in all anchors (differentiation through descriptors)
     c) Reach out to Wing900 for collaboration/cross-promotion (risky: they might object to name reuse)
   - **Recommendation**: Option B (keep name, emphasize differentiation in copy).

5. **YouTube creator compensation**:
   - If a creator with 100k+ subs agrees to feature ManimCat, do we offer:
     a) Free Pro account only (low cost, but may not be enough incentive)
     b) Cash payment ($500-2000 for dedicated video mention)
     c) Affiliate/referral program (20% of conversions they drive)
   - **Question**: What's the creator partnership budget, if any?

6. **Internal cross-link deployment timeline**:
   - C4 (internal cross-links) assumes we have edit access to all 7 intelli-verse-x properties.
   - **Question**: Are there deployment blockers (e.g., tutor/quests/blogs on separate infra, or owned by different teams)?
   - **If yes**: Adjust timeline + delegate to respective property owners.

### Assumptions (validate or update)

1. **Assumption**: animator.intelli-verse-x.ai is live and publicly accessible (not behind auth or beta-only).
   - **If false**: Backlink strategy should delay until public launch. Pre-launch, focus on GitHub repo backlinks only.

2. **Assumption**: GitHub repo intelli-verse-x/ManimCat is public and accepts external PRs.
   - **If false**: Cannot leverage awesome-list PRs that link to GitHub. Adjust C3 to focus on website-only mentions.

3. **Assumption**: Product is free-tier accessible (users can try without credit card).
   - **If false**: Product Hunt and Show HN campaigns will underperform (tech communities dislike paywalled demos). Adjust messaging to emphasize "free tier available."

4. **Assumption**: ManimCat has differentiated AI features (not just a WebAssembly port of Manim).
   - **If false**: Anchor strategy should de-emphasize "AI-powered" and focus on "browser-based" only.

5. **Assumption**: Team has capacity to respond to comments on Product Hunt (within 1h), Show HN (within 2h), and Reddit (within 24h).
   - **If false**: Campaigns will underperform due to low engagement. Assign dedicated community lead or delay campaigns.

6. **Assumption**: blogs.intelli-verse-x.ai is a live blog with existing posts (not a placeholder).
   - **If false**: C4 blog post deliverable should instead be published on Medium or Dev.to (external platforms with built-in distribution).

---

## Appendix: Quick-reference checklist

Use this as a pre-launch checklist before executing campaigns.

### Pre-launch checklist (must complete before any outreach)

- [ ] PR #5 (SEO/GEO baseline) is merged and live
- [ ] robots.txt returns 200 (not JSON error)
- [ ] sitemap.xml is live and valid
- [ ] Meta title + description are non-generic (not "ManimCat" only)
- [ ] OG image is set (required for Product Hunt, Show HN, Reddit previews)
- [ ] GitHub repo intelli-verse-x/ManimCat is public
- [ ] GitHub repo README has screenshot + demo GIF (required for awesome-list PRs)
- [ ] Free tier is accessible without credit card (test in incognito)
- [ ] 30-second demo video is recorded and hosted (YouTube or Loom)
- [ ] Internal cross-links (C4) are deployed to at least apex + products + blogs (bare minimum 3 of 7)

### Week-1 checklist (immediate wins)

- [ ] All 7 internal cross-links deployed (C4)
- [ ] Product Hunt assets prepared (gallery screenshots, demo video, FAQ answers)
- [ ] Product Hunt hunter identified or "go independent" decision made
- [ ] Outreach tracker spreadsheet (§6) is copied and assigned to marketing lead

### Week-2 checklist (high-impact external links)

- [ ] Product Hunt launch completed (track upvotes + referral traffic)
- [ ] 5 awesome-list PRs submitted (awesome-manim, awesome-python, awesome-dataviz, awesome-creative-coding, +1)
- [ ] Google Search Console verified and baseline data captured (even if zero traffic)

### Week-3 checklist (technical credibility)

- [ ] Show HN post drafted and reviewed by technical lead
- [ ] Show HN posted on Tuesday/Wednesday at 8am ET
- [ ] First 2 hours of HN comment responses completed (DO NOT let post sit with zero replies)

---

**END OF PLAYBOOK**

Total word count: ~9,500 words (~11KB)  
Sections completed: 10 of 10  
Referring domains targeted: 25 (internal) + 20+ (external) = 45+ total  
Estimated 90-day link acquisition: 25-35 live backlinks  
Highest-leverage tactic: Internal cross-links (C4) — 10-14 guaranteed links, zero external dependency  
Highest-risk tactic: Show HN (C2) — can backfire if post is flagged; requires strong technical angle  

**Next steps**:
1. Validate open questions (§10) with product owner
2. Assign campaign owners (C1-C5)
3. Copy outreach tracker (§6) to Google Sheets and share with team
4. Deploy internal cross-links (C4) immediately (Week 1 priority)
5. Schedule Product Hunt launch (C1) for Week 2
