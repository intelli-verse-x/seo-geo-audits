# DISPATCH — 100% SEO/GEO Certification Fleet

You are a specialist agent in the certification fleet. Read this once.
Then work your specialty against the bead pool. State lives in beads.

## Beads location

All certification beads live in **town beads** (`/gt/.beads`), prefix
every bd command:

```bash
BEADS_DIR=/gt/.beads bd list ...
```

Label: `cert-2026-05`. Each project has one **epic** and 5 **sub-beads**:

| sub-bead suffix | specialty | owner role |
|---|---|---|
| `.1` | SEO code v2 (build on baseline PR) | `seo-eng` |
| `.2` | GEO code (llms.txt, schema, AI bots, citable content) | `geo-eng` |
| `.3` | Keywords + 90-day blog calendar + internal-link diff | `content` |
| `.4` | Backlinks (already in flight from phase 2) | `auditor` |
| `.5` | Scorecard QA — must pass 20/20 | `qa` |

Find your work:

```bash
# all open beads in your specialty:
BEADS_DIR=/gt/.beads bd list --label cert-2026-05 \
  --label <your-role> --status open --json \
  | jq -r '.[] | "P\(.priority) \(.id) \(.metadata.audit) — \(.title)"' \
  | sort -n
```

## Role-by-role workflow

### `seo-eng` — On-page SEO code v2

**Inputs:**
- `/gt/audits/crew/auditor/remediation/<audit>.md` — what to ship
- The baseline PR URL (in bead metadata `baseline_pr`) — start from there
- Content polecat's internal-link diff (bead `.3` metadata
  `internal_link_diff_path`) when available — land it here

**For each sub-bead `.1`:**

1. `BEADS_DIR=/gt/.beads bd update <id> --status=in_progress`
2. Check whether the baseline PR is merged. If not, rebase or stack onto
   that branch (`seo-geo/baseline-2026-05/<audit>`). If merged, branch
   from main.
3. New branch: `seo/cert-2026-05/<audit>-seo-v2`
4. Land any remaining items from the remediation playbook that didn't
   make the baseline PR.
5. Land the internal-link diff from sub-bead `.3` if it's ready (poll
   bead `.3` metadata; otherwise note "deferred to follow-up").
6. Run a local lighthouse / PSI smoke (S10 criterion) before pushing.
7. Open a Draft PR titled:
   `seo: certification v2 - on-page SEO for <audit>`
   PR body: link to the bead, the baseline PR, and the remediation playbook.
8. Attach PR URL to bead metadata, then close the bead.

### `geo-eng` — GEO code

**Inputs:**
- `/gt/audits/crew/auditor/GEO_TEMPLATE.md` — required template
- `/gt/audits/crew/auditor/geo/<audit>.md` — produce this playbook first if it doesn't exist, OR if it does, ship the code it specifies

**For each sub-bead `.2`:**

1. `BEADS_DIR=/gt/.beads bd update <id> --status=in_progress`
2. If `/gt/audits/crew/auditor/geo/<audit>.md` does NOT exist yet,
   produce it from `GEO_TEMPLATE.md` (using firecrawl for AI-engine
   current-state checks). Save and update bead with `playbook_path`.
3. Branch from main: `seo/cert-2026-05/<audit>-geo`
4. Land:
   - `public/llms.txt` and (recommended) `public/llms-full.txt`
   - `robots.txt` AI-bot allowlist additions
   - FAQ schema JSON-LD on the homepage (8+ Q&A from the playbook)
   - Citable content blocks on the pages specified in §6
   - Author + dateline JSON-LD if a blog exists
   - Comparison table from §8
   - DefinedTerm JSON-LD or a /glossary page from §9
   - Server-rendering fix from §10 (this may be a separate follow-up
     bead if the migration is non-trivial — file it under the project
     epic with a `geo-srr` label)
5. Open a Draft PR titled:
   `geo: certification - AI-engine optimization for <audit>`
6. Attach PR URL to bead, close it.

### `content` — Keywords + blog calendar + internal linking

**Inputs:**
- `/gt/audits/crew/auditor/CONTENT_TEMPLATE.md`
- All three of remediation / backlinks / geo playbooks for the audit
  (cross-reference for keyword consistency)

**For each sub-bead `.3`:**

1. `BEADS_DIR=/gt/.beads bd update <id> --status=in_progress`
2. Use firecrawl + manual SERP analysis for the keyword research.
   No fabricated volumes — use ranges.
3. Produce both:
   - `/gt/audits/crew/auditor/content/<audit>.md` (the playbook)
   - `/gt/audits/crew/auditor/content/<audit>-calendar.csv`
4. Critically: produce the §5.3 internal-linking diff as a concrete
   list of file paths + diff hunks. This is the deliverable seo-eng
   needs to land cross-site links.
5. Attach both paths to bead metadata
   (`playbook_path`, `calendar_path`, `internal_link_diff_path`).
6. Open a Draft PR (when a repo is mapped) titled:
   `seo: keywords & 90-day content calendar for <audit>`
   Files: `docs/seo/keywords.md`, `docs/seo/blog-calendar.csv`.
7. Close the bead.

### `qa` — Scorecard verifier

**Inputs:**
- `/gt/audits/crew/auditor/CERTIFICATION_SCORECARD.md` — the 20 criteria

**For each sub-bead `.5`:**

1. **Do not start** until sub-beads `.1`, `.2`, `.3` are closed AND their
   PRs are merged (or deployed to a preview the QA agent can hit).
   Poll: `BEADS_DIR=/gt/.beads bd show <project-epic-id>` and check
   each child's status.
2. `BEADS_DIR=/gt/.beads bd update <id> --status=in_progress`
3. Run all 20 scorecard checks against the live `host`. Write the JSON
   report to `/gt/audits/crew/auditor/certifications/<audit>.json`.
4. If score = 20/20:
   - Mark bead metadata `certified: true`, `score: "20/20"`
   - Close the bead
   - Auto-close the parent epic (or update its metadata to allow auto-close)
5. If score < 20/20:
   - Mark bead metadata `certified: false`, `score: "N/20"`,
     `failures: [<criterion ids>]`
   - For each failed criterion, file a **new child bead** under the
     project epic with the failing criterion ID in the title (e.g.
     "Fix S07: JSON-LD Organization schema missing on apex"), labeled
     for the appropriate role (seo-eng for S*, geo-eng for G*)
   - Leave the QA bead open, set status back to `open`
   - Specialist agents pick up the follow-up beads, the cycle repeats
6. Escalate to Discord if the same criterion fails twice in a row:
   `gt escalate "Certification stuck on <criterion> for <audit>" --severity high --related <bead-id>`

## Universal rules

- **No prose state in mail or nudges.** Status updates go to the bead.
  If you need to communicate intent, update bead metadata and link to
  it from a one-line pointer.
- **No commits to main directly.** Draft PRs only.
- **Don't fabricate data.** firecrawl real searches, name real sites,
  use real numbers. `tbd — needs <thing>` is acceptable; invented data
  is not.
- **Re-running is fine.** All scripts must be idempotent. The qa agent
  re-runs scorecard until 20/20.
- **Watcher posts everything to Discord** automatically — every bead
  status change, every new high-priority bead, every escalation.

## Acceptance for "batch certified"

- 13 project epics all closed
- 13 certification JSON reports in
  `/gt/audits/crew/auditor/certifications/` with `certified: true`
- A consolidated `/gt/audits/crew/auditor/certifications/_summary.md`
  table listing every project and its final score.
