# GEO Remediation Playbook Template

GEO = Generative Engine Optimization. Goal: ensure the project is
discoverable, parsable, and citable by AI assistants (ChatGPT, Claude,
Perplexity, Google AI Overviews, Bing Copilot).

This sits **alongside** the existing on-page SEO remediation playbook in
`remediation/<audit>.md` — that one handles classic search. This one
handles AI-engine ranking factors.

Output: `/gt/audits/crew/auditor/geo/<audit>.md`

When committed: `docs/seo/geo.md` (alongside `docs/seo/backlinks.md`)

## Required sections

### 1. Project snapshot

(same fields as the other playbooks for this audit)

### 2. AI-engine current state

For each of the four major AI engines, test what they say about this
project today and report the result:

- **ChatGPT** (`firecrawl scrape` of a fresh ChatGPT search for the
  project name / primary keyword): does it cite this site? Does it
  hallucinate? What sources does it cite instead?
- **Perplexity**: same — Perplexity is the most transparent about
  sources, so this is the highest-signal test
- **Claude** (via Claude.ai web search): does it find the site?
- **Google AI Overviews**: does the project appear in AI Overview
  results for the primary keyword?

If you can't directly query an engine, note that and use proxies:
firecrawl-search the site/keyword combos and look at which sources are
ranking for AI-answer-friendly queries.

### 3. llms.txt — the AI sitemap

Produce the **complete file content** for the project's `llms.txt`,
ready to paste into `<repo>/public/llms.txt` (Next.js) or equivalent.

Follow the Llmstxt spec (https://llmstxt.org):

```
# <Project Name>

> One-paragraph value prop. Citable. Direct.

## Core pages

- [Page name](https://<host>/page): one-line description an AI can quote

## Docs / guides

- [...](...)
```

Also produce an `llms-full.txt` recommendation: a single concatenated
file with the full content of the 5-10 most important pages, formatted
for LLM ingestion. Include 1-2 paragraphs of sample content as the
demonstration.

### 4. AI-bot allowlist (robots.txt additions)

Produce the exact lines to ADD to the project's `robots.txt` (don't
replace, append). Required bots:

```
User-agent: GPTBot
Allow: /

User-agent: ChatGPT-User
Allow: /

User-agent: OAI-SearchBot
Allow: /

User-agent: ClaudeBot
Allow: /

User-agent: Claude-Web
Allow: /

User-agent: Google-Extended
Allow: /

User-agent: PerplexityBot
Allow: /

User-agent: Applebot-Extended
Allow: /

User-agent: cohere-ai
Allow: /

User-agent: Bytespider
Allow: /

User-agent: Amazonbot
Allow: /
```

Call out any bots that should be DISALLOWED for this specific project
(e.g., on a paid B2B product, you may want to disallow scrapers but
allow named AI engines).

### 5. FAQ schema — 8+ Q&A pairs

Produce **ready-to-ship JSON-LD** for an `@type: FAQPage` block with at
least 8 high-quality Q&A pairs. Questions should be the actual queries
users would ask an AI assistant about this project. Answers should be:

- 80-200 words each
- Citable (clear, factual, not marketing fluff)
- First sentence is a direct answer; remaining sentences add context

Include the full JSON ready to paste into the page.

### 6. Citable content blocks

Identify 3-5 places on the site where citable content blocks should be
added. A citable block has:

- A clear, quotable definition or claim (1-2 sentences)
- A specific number, date, or named entity
- A source link (internal or external authority)

For each block, produce:

- The exact page + heading the block should sit under
- The full HTML/markdown of the block as it should appear
- The intended downstream effect (which AI query this answers)

Example pattern:

```html
<aside class="citable">
  <p><strong>What it is.</strong> IntelliVerse Quests is a learn-to-earn
  quest engine that rewards verified educational progress with
  on-chain credentials, used by educators across 12 countries (as of
  May 2026).</p>
  <p>Source: <a href="/about/usage">IntelliVerse Quests usage stats</a></p>
</aside>
```

### 7. Author attribution and dateline policy

If the project has a blog (or any long-form content), establish:

- **Author bylines:** every article must have an `author` JSON-LD
  property with `name`, `url`, `jobTitle`. Produce an Author schema
  template.
- **datePublished + dateModified:** required on every article.
- **Author bio page:** a single page per author with the schema
  `@type: Person` including `sameAs` linking to LinkedIn, GitHub, X
  if available.

Produce the exact JSON-LD template that should be applied.

### 8. Comparison / feature table

AI engines preferentially cite tables. Produce a ready-to-paste table
specific to this project. Examples by project type:

- **Tool / SaaS**: comparison vs 3 named competitors across 5-7 features
- **Marketplace**: feature comparison across plans or seller types
- **Educational**: comparison of learning paths or content tiers
- **Content site**: tag/category structure as a table of contents

Provide both the HTML and the markdown form.

### 9. Glossary / definition page

Recommend a `/glossary` page (or in-page definitions block) with at
least 8 defined terms relevant to the project. Each term needs:

- The term itself
- A 2-3 sentence definition citable by an AI engine
- A `@type: DefinedTerm` JSON-LD block

Produce the JSON-LD and the rendered markdown for at least 8 terms.

### 10. Server-rendering check + remediation

If the project is a single-page-app (Vite/CRA-style React),
verify that the primary intent keywords appear in the
server-rendered HTML (not just after client hydration).

For each affected page:

- Identify whether the content is SSR / SSG / CSR
- If CSR, recommend a specific remediation: prerender via
  `react-snap`, migrate critical pages to Next.js, or add SSR
  with `vite-plugin-ssr` — pick one and justify
- Estimate effort (S/M/L)

This is the highest-impact GEO fix for any CSR app and the
single most common reason a project fails G10.

### 11. Verification commands

Provide the exact shell commands the QA agent should run to verify
each section landed correctly. These commands populate the
certification scorecard.

```bash
# G01 — llms.txt
curl -fsS https://<host>/llms.txt | head -20

# G02 — AI-bot allowlist
curl -fsS https://<host>/robots.txt | grep -iE "GPTBot|ClaudeBot|PerplexityBot"

# G03 — FAQ schema
curl -fsS https://<host>/ | grep -oE '"@type":\s*"FAQPage"'

# (etc.)
```

## Acceptance

- File ≥ 8 KB substantive content
- llms.txt, robots.txt additions, and FAQ JSON-LD are copy-paste-ready
  (no `<placeholder>` left in production code)
- Server-rendering recommendation is concrete enough to be a PR
