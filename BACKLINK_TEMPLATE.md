# Backlink Strategy Playbook — Template

Produce one of these per audited project. Each playbook must be specific,
named, and actionable — same bar as the existing remediation playbooks in
`/gt/audits/crew/auditor/remediation/`. No generic SEO advice; every
recommendation must reference a real site, a real anchor, or a real piece
of content.

State lives in the bead. Update bead status as you progress through
sections. Mark the bead `in_progress` when you start, attach the playbook
URL with `bd update --metadata` when you commit it, and close the bead
when the corresponding PR is open.

---

## Required structure (every section must appear)

### 1. Project snapshot

- **Hostname:** the live URL (e.g. `quests.intelli-verse-x.ai`)
- **GitHub repo:** `intelli-verse-x/<repo>` or `N/A — no repo mapped` (see manifest)
- **Existing PR (SEO/GEO baseline):** link from `pr-results.json` if any
- **Stack:** Next.js / Vite / Webflow / WordPress / Native app etc.
- **Primary persona:** who is this for — devs, gamers, students, marketers, enterprise buyers, etc.
- **Primary intent keywords (3-5):** what the page should rank for, e.g.
  `"ai-powered quest engine"`, `"learn-to-earn quests"`

### 2. Current backlink profile

Use firecrawl + manual analysis. Acceptable signals when full SEO tooling
is unavailable:

- `firecrawl scrape <hostname>` + check for outgoing links, OG tags,
  internal cross-links to other intelli-verse-x properties.
- `firecrawl search` for `link:<hostname>` and `site:<hostname>` to find
  indexed pages and obvious mentions.
- `firecrawl search "<hostname>" -site:intelli-verse-x.ai` for off-site
  mentions and existing referring domains.
- `firecrawl search "intelliverse-x" OR "<product name>"` to find chatter
  in forums, dev communities, social posts.

Output:

- **Estimated referring domains:** number, plus 5 example domains found
- **Quality flags:** any toxic or low-quality referring patterns spotted
- **Anchor text distribution today:** what anchors currently point at the site
- **Gap:** the difference between what backlinks the site has today and
  what its competitors have. Name 3 competitor sites for context.

If signals are not retrievable, state that explicitly — do not fabricate.

### 3. Target referring domains (the prospect list)

Produce a **prioritized list of at least 20 specific referring domains**
grouped by tactic. Each row must have: name, URL, why it ranks, the
specific page/listing to target, contact path, anchor plan, effort, and
priority (P0–P2).

Tactics that *must* be represented (skip categories that genuinely don't
apply, and justify the skip):

1. **Industry directories** — Product Hunt, AlternativeTo, G2, Capterra,
   Slant, There's An AI For That, Futurepedia, AI Tools Directory,
   ToolPilot, Insidr.AI, AI Scout, etc. For each, name the exact category
   to apply under.
2. **Awesome-lists on GitHub** — name the specific `awesome-<topic>` repo
   and the exact line/section to PR into.
3. **Niche communities** — Hacker News (Show HN angle), Reddit (specific
   subreddits with rules), Indie Hackers, Dev.to, Hashnode, Lobste.rs
   where applicable. Include the angle (NOT "post about it" — give the
   actual headline and first paragraph).
4. **Editorial / digital PR** — 3-5 named publications/blogs in the
   project's niche, with the journalist or author who covers this beat,
   and a one-line pitch angle.
5. **Resource page / link-insert** — find 3-5 existing "best X tools"
   roundups by competitors or aggregators and document the outreach hook.
6. **Podcast / interview** — 2-3 named podcasts in the niche, host name,
   pitch angle.
7. **Internal cross-linking** — which *other* intelli-verse-x sites
   should link to this one, with the specific paragraph/CTA copy and the
   anchor text to use. This is the highest-leverage tactic and must be
   filled in.

### 4. Anchor text plan

Specify target percentages across the four anchor classes and give 5+
examples in each:

- **Branded** (target ~45%): e.g. `IntelliVerse Quests`, `quests.intelli-verse-x.ai`
- **Generic** (target ~15%): e.g. `learn more`, `here`, `this platform`
- **Exact-match** (target ~10%, ceiling — over-optimization risk): e.g. `learn-to-earn quests engine`
- **Partial-match / semantic** (target ~30%): e.g. `AI-powered quest platform`, `gamified learning system`

Call out which anchors must NOT be used (over-optimized phrases that would
trigger Penguin-style devaluation).

### 5. Five tactical campaigns (with deliverables)

Each campaign is a concrete project with named owner-equivalent steps,
expected number of links, and copy where applicable. Examples of what a
campaign looks like:

- **C1 — Product Hunt launch**
  - Pre-launch (T-14 to T-0): hunter ask copy, gallery assets list, FAQ
    answers (draft full text in the playbook)
  - Launch day: full draft of the maker comment, 3 prepared replies to
    common questions, share copy for X/LinkedIn
  - Expected: 1 strong dofollow + ~10 secondary referring domains from
    aggregators that re-list Product Hunt top products
- **C2 — Show HN**
  - Headline draft (Show HN must be specific, not promotional)
  - First-paragraph draft establishing technical credibility
  - Anticipated objections with prepared answers
- **C3 — Awesome-list PR sweep**
  - List of 5-10 specific `awesome-<topic>` repos with the file + section
    to edit
  - The exact diff to propose for each
- **C4 — Internal cross-link sweep**
  - Specific copy/CTA additions to insert in 3-5 sibling intelli-verse-x
    sites that drive contextually relevant traffic
- **C5 — Niche resource-page outreach**
  - 5 named target pages + the email template (subject line + body) +
    the value-add the email leads with (NOT "please link to us")

If a campaign genuinely doesn't apply (e.g. Show HN for a B2B sales
microsite), substitute another tactic from §3 and justify.

### 6. Outreach tracker (CSV-shaped)

A markdown table (or attached `outreach-<audit>.csv`) the team can
copy/paste into a spreadsheet. Required columns:

| target | url | tactic | contact | anchor | status | sent_at | landed_url | notes |

Pre-populate with at least the 20 prospects from §3. Status starts as
`prospect`; the team updates to `sent` / `landed` / `dead`.

### 7. Measurement

- **Tools:** name what the team should use (Search Console, Ahrefs/Moz
  webmaster, Google Analytics 4 referral report). For projects without
  paid tools, list what's measurable from free tools alone.
- **Baseline numbers:** if available, record them now (referring domains,
  top-3-keyword positions, organic CTR). Otherwise mark `tbd — baseline`.
- **KPIs (90-day):** target referring domains added, target top-10
  rankings for the §1 intent keywords, target organic clicks. Give
  specific numbers, not "increase."
- **Review cadence:** weekly during active outreach, monthly after.

### 8. 90-day execution timeline

Week-by-week breakdown of which campaigns run when. Be honest about
sequencing — Product Hunt and Show HN should not run the same week, etc.

### 9. Risks and counter-indicators

- Over-optimization warning signs
- PBN/low-quality links to refuse if offered
- When to walk away from a campaign (acceptance criteria for "this is
  not working")

### 10. Open questions and assumptions

Anything you couldn't determine without owner input — log it, don't
guess. Examples: brand guidelines for anchor language, budget for paid
outreach, sensitive competitor positioning.

---

## Output rules

- Save the file at:
  `/gt/audits/crew/auditor/backlinks/<audit>.md`
  (one playbook per audit, named to match the existing
  `remediation/<audit>.md` convention)
- Minimum length: 6 KB of substantive content. Templates < 4 KB fail QA.
- Cross-link to the matching remediation playbook at the top so a reader
  can pivot between on-page and off-page work for the same project.
- When a GitHub repo exists, open a Draft PR titled
  `seo: backlink strategy & outreach tracker for <audit>`
  that adds:
  - `docs/seo/backlinks.md` (full playbook)
  - `docs/seo/outreach.csv` (the tracker from §6)
  - A short `README.md` link in the project root pointing to
    `docs/seo/backlinks.md` so it's discoverable
- When a GitHub repo does NOT exist (see manifest), the playbook still
  lives in the auditor workspace and the bead description records the
  missing-repo state.

## Beads update protocol (state lives here)

For each audit:
1. `bd update <bead-id> --status=in_progress` when you start
2. After committing the playbook locally:
   `bd update <bead-id> --metadata playbook_path=<absolute path>`
3. After opening the PR:
   `bd update <bead-id> --metadata pr_url=<github pr url>`
4. `bd close <bead-id>` when both playbook and PR are in place. For
   no-repo audits, `bd close` when the playbook is committed to the
   auditor workspace.

Discord will pick these up automatically — every state change posts
to the channel via the bead-lifecycle watcher.
