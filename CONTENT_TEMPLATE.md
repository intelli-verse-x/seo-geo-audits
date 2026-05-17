# Content & Keywords Playbook Template

Produce one per audited project. Deliverable is a markdown file plus a
CSV blog calendar. Both are committed to the project's repo (when a repo
is mapped) under `docs/seo/`.

Output paths:

- `/gt/audits/crew/auditor/content/<audit>.md`
- `/gt/audits/crew/auditor/content/<audit>-calendar.csv`

When committed to the repo:

- `docs/seo/keywords.md`
- `docs/seo/blog-calendar.csv`

## Required sections

### 1. Project snapshot

Same fields as the remediation + backlink playbooks for this audit (audit
id, hostname, repo, stack, persona). Cross-link to:

- on-page remediation: `/gt/audits/crew/auditor/remediation/<audit>.md`
- backlink playbook: `/gt/audits/crew/auditor/backlinks/<audit>.md`

### 2. Keyword strategy

Produce a structured keyword table:

#### 2.1 Head term (1)

The single most strategic keyword for this project. Will be the homepage
H1 target. Format:

| keyword | monthly volume (est.) | difficulty (est.) | search intent | current ranking | target ranking |

Use firecrawl + manual SERP analysis. Volumes are estimates — use
ranges (`<100`, `100-1k`, `1k-10k`, `10k-100k`, `100k+`).

#### 2.2 Secondary keywords (5)

Mid-tail keywords supporting the head term. Each should map to a
specific page (existing or to-be-created).

| keyword | volume | intent | mapped page | current ranking |

#### 2.3 Long-tail keywords (15)

The 15 specific queries the blog will target. Group by intent:

- **Informational** (educational, "how to / what is / why" queries) — at least 6
- **Commercial investigation** ("best / vs / alternative to") — at least 5
- **Transactional** ("buy / sign up / pricing / download") — at least 2
- **Navigational** (brand-related) — at least 2

| keyword | volume | intent | competition | best content format |

### 3. Competitive content analysis

For the head term and 3 of the top secondary keywords:

- **Who ranks top 3 today?** Use firecrawl search.
- **What's their format?** (listicle, deep guide, video, tool page, comparison)
- **Word count?** (estimate from firecrawl scrape)
- **What's missing from their content?** This is the gap to exploit.
- **What's their internal linking structure?** (do they cluster around a pillar page?)

For each of the 4 keywords, recommend a content angle that's
differentiated from the top-ranking pages, not a clone.

### 4. 90-day blog calendar (12 posts)

12 blog topics for the next 90 days (1/week cadence). Each topic must
have:

| post # | publish week | target keyword | secondary keywords (2-3) | intent | format | word count | outline summary | internal links (to / from) | planned backlink anchors |

Topics must cover all four intent classes from §2.3. At least 3 must be
comparison or alternative-to posts (high backlink magnetism). At least 2
must be deep guides (1500+ words) suitable as cornerstone content.

For each topic, also produce a **1-paragraph hook** (the lede) so the
content team can start writing without re-deriving the angle.

CSV format for the companion file:

```
post_number,publish_week,target_keyword,secondary_keywords,intent,format,word_count,working_title,hook_paragraph,inbound_links,outbound_links
```

### 5. Internal linking sweep

Document the existing and planned internal link structure:

#### 5.1 Inbound (which sibling intelli-verse-x sites should link here)

| source_host | source_page | source_paragraph_context | suggested_anchor | rationale |

At least 5 inbound link opportunities from sibling sites. Be specific
about where in the source page the link goes (not "homepage" —
"the 3rd paragraph of the AI section on apex").

#### 5.2 Outbound (which sibling sites this project should link to)

| target_host | target_page | source_page_on_this_site | suggested_anchor | rationale |

At least 3 outbound links to sibling sites. These should appear on
pages where the link is genuinely useful (not in a generic "our
products" footer block — Google discounts those).

#### 5.3 Cross-link diff

Produce a concrete diff: which files in the repo need editing to land
the inbound/outbound links. This is the deliverable the seo-eng polecat
will turn into a PR.

### 6. Content production guidelines

Project-specific guidelines for the writers:

- **Voice and tone** (one paragraph)
- **Reading level** (target Flesch-Kincaid grade)
- **Brand-safe vocabulary** — words to use and words to avoid
- **AI-citability checklist** — patterns to favor: clear definitions,
  numbered lists, comparison tables, named experts quoted, dates and
  numbers, FAQ Q&A blocks
- **Required schema** — every blog post must include `@type: Article`
  with `author`, `datePublished`, `dateModified`, `mainEntityOfPage`

### 7. Measurement

- Baseline: where do we rank for the head term + 5 secondaries today?
  (use firecrawl search for `<keyword> site:<host>` and `<keyword>`
  separately; note position and SERP features)
- 30-day target: positions for head + top 3 secondaries; total indexed
  pages; impressions in Search Console
- 90-day target: top-10 for head term, top-3 for at least 2 secondaries,
  X organic clicks
- Tools: Search Console (free), Bing Webmaster Tools (free), GA4
  referrals, firecrawl periodic re-scrape, optional Ahrefs/Moz

### 8. Risks and open questions

- Cannibalization risk (sibling sites targeting overlapping keywords)
- Brand-guideline gaps that block writing
- Anything that needs owner input before content goes live

## Acceptance

- File ≥ 8 KB substantive content
- CSV calendar has all 12 rows fully filled (no `tbd` in mandatory columns)
- §5.3 (internal-link diff) is concrete enough to be turned into a PR
  without further analysis
