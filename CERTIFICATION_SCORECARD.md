# SEO/GEO Certification Scorecard — v1

A project is **certified** when all 20 criteria pass. 19/20 is not certified.
Half-passes are not allowed. Scorecard is run by the `qa` agent against
the **live deployed** site after the relevant PRs are merged (or against a
preview deploy if available).

## How to run

Each criterion has a one-line check command and a clear pass/fail
condition. The scorecard outputs a JSON report:

```
{
  "audit": "<audit-id>",
  "host": "<hostname>",
  "ran_at": "<iso8601>",
  "score": "N/20",
  "criteria": [
    {"id": "S01", "name": "...", "pass": true,  "evidence": "..."},
    {"id": "S02", "name": "...", "pass": false, "evidence": "...", "fix_hint": "..."}
  ],
  "certified": false
}
```

Report path: `/gt/audits/crew/auditor/certifications/<audit>.json`

## SEO criteria (S01–S10)

### S01 — robots.txt valid and AI-bot-permissive

- Check: `curl -fsS https://<host>/robots.txt`
- Pass: HTTP 200, content includes `User-agent: *` and at least one of
  `GPTBot`, `Claude-Web`, `ClaudeBot`, `PerplexityBot`, `Google-Extended`
  with an `Allow:` directive (not `Disallow: /`)
- Fail-evidence: HTTP status, content, missing UAs

### S02 — sitemap.xml present, valid, current

- Check: `curl -fsS https://<host>/sitemap.xml | head -5`
- Pass: HTTP 200, valid XML root `<urlset>` or `<sitemapindex>`, at least
  3 `<url>` entries, latest `<lastmod>` within 90 days
- Common failure: 404, empty index, or stale (> 6 months old)

### S03 — title tag (50-60 chars, non-generic)

- Check: scrape `<title>` from homepage HTML
- Pass: length 30-65 chars, not "Vite App", "Create Next App",
  "React App", "Untitled", empty, or just the brand alone
- The matching remediation playbook in `/gt/audits/crew/auditor/remediation/<audit>.md`
  has the recommended title for each audit

### S04 — meta description (140-165 chars)

- Check: scrape `<meta name="description">` content
- Pass: length 120-170 chars, mentions the primary value-prop, not the
  framework default

### S05 — canonical URL

- Check: scrape `<link rel="canonical">`
- Pass: present, absolute URL, matches the requested host (not pointing
  to a staging/beta surface)

### S06 — Open Graph + Twitter card tags

- Check: scrape `<meta property="og:*">` and `<meta name="twitter:*">`
- Pass: all of `og:title`, `og:description`, `og:image`, `og:url`,
  `og:type`, plus `twitter:card` (summary_large_image preferred)

### S07 — JSON-LD structured data: Organization + WebSite

- Check: scrape `<script type="application/ld+json">`
- Pass: at least one `@type: Organization` block with `name`, `url`,
  `logo`; and one `@type: WebSite` block with `potentialAction:SearchAction`
  (or, for non-search sites, just the WebSite type)

### S08 — single H1, sensible heading hierarchy

- Check: parse HTML headings
- Pass: exactly 1 `<h1>`, no skipped levels (no h3 without h2 above it),
  H1 contains the primary intent keyword

### S09 — image alt text coverage

- Check: count `<img>` tags vs. `<img>` tags with non-empty `alt`
- Pass: ≥ 90% of `<img>` tags have meaningful alt (not "image", "photo",
  filename, or empty)

### S10 — Core Web Vitals (Lighthouse / PSI mobile)

- Check: `curl https://www.googleapis.com/pagespeedonline/v5/runPagespeed?url=https://<host>&strategy=mobile`
  (or run `lighthouse https://<host> --only-categories=performance --quiet`)
- Pass: LCP ≤ 2.5s, INP ≤ 200ms (or FID ≤ 100ms), CLS ≤ 0.1
- Fail-evidence: the failing metric value

## GEO criteria (G01–G10)

### G01 — llms.txt present and well-formed

- Check: `curl -fsS https://<host>/llms.txt`
- Pass: HTTP 200, follows the Llmstxt spec
  (https://llmstxt.org): top H1 with project name, blockquote one-liner,
  sections of links for relevant pages
- Companion `llms-full.txt` recommended (not required)

### G02 — AI-bot user agents explicitly allowed

- Check: same as S01 — but stricter
- Pass: robots.txt has explicit `User-agent: GPTBot\nAllow: /` and at
  least 4 of: `ClaudeBot`, `Claude-Web`, `PerplexityBot`,
  `Google-Extended`, `OAI-SearchBot`, `Applebot-Extended`, `cohere-ai`,
  `Bytespider`, `Amazonbot`

### G03 — FAQ schema (FAQPage JSON-LD with 5+ Q&A)

- Check: scrape JSON-LD for `@type: FAQPage`
- Pass: at least 5 question/answer pairs, each answer ≥ 50 chars
- Questions should mirror real user queries for the project's keywords

### G04 — Article / HowTo / Product schema where applicable

- Check: scrape JSON-LD for `@type` matching the page intent
  (Article for blog, Product for products page, HowTo for tutorials,
  SoftwareApplication for tools)
- Pass: appropriate schema type present with required fields filled

### G05 — citable content: author + datePublished + dateModified

- Check: scrape JSON-LD or visible HTML
- Pass: author name + role, `datePublished` and `dateModified` in
  ISO format, both within reasonable range (not 1970-01-01, etc.)

### G06 — direct-answer paragraph in first 100 words

- Check: parse first `<p>` or first 800 characters of body text
- Pass: contains a direct, citable definition of "what this is", in
  one sentence, suitable for an AI assistant to quote verbatim. Pattern:
  `<project> is a <category> that <primary value>.`

### G07 — structured comparison or feature table

- Check: scrape `<table>` elements OR `@type: Table` JSON-LD
- Pass: at least one table comparing features, plans, or alternatives.
  AI engines disproportionately cite tables.

### G08 — glossary / definitions section

- Check: presence of `/glossary` page OR DefinedTerm JSON-LD OR
  a dedicated definitions block in the homepage
- Pass: at least 5 defined terms with clear, citable definitions

### G09 — citable claims with sources

- Check: parse body for numeric claims (regex: `\d+%`, `\d+x`,
  `\$[\d,]+`, etc.) and check for adjacent citation links/footnotes
- Pass: at least 3 numeric/quotable claims that are sourced (link to
  external authority, internal study, or named source)

### G10 — server-rendered key content

- Check: `curl -fsS -A "Mozilla/5.0 (compatible; AI-bot)" https://<host>/ | grep -ci <primary keyword>`
  AND check the SSR output, not the JS-rendered DOM
- Pass: the project's primary intent keywords appear in the
  server-rendered HTML (not just in the post-hydration DOM). Single-page
  apps must server-render or prerender key landing pages.

## Output requirements

- Save certified projects: `/gt/audits/crew/auditor/certifications/<audit>.json`
  with `certified: true` and `score: "20/20"`
- Save non-certified runs with the same path but `certified: false` and
  a `failures[]` array. Each failure creates a follow-up bead under the
  project's epic so the relevant specialist can fix and re-run.
- Re-run scorecard after every PR merge until certified.
