# DISPATCH — Backlink playbooks for 16 intelli-verse-x projects

You are the auditor agent. This is your new work batch. State lives in
beads. Discord mirrors every bead lifecycle event automatically — keep
the beads honest and the channel will tell its own story.

## IMPORTANT — Beads database location

The work beads for this batch live in the **town beads** (`/gt/.beads`),
not the audits-rig beads (`/gt/audits/.beads`). To address them, prefix
every `bd` invocation with `BEADS_DIR=/gt/.beads` or `cd /gt` first.

```bash
# from anywhere:
BEADS_DIR=/gt/.beads bd show hq-9t2

# or operate from /gt:
cd /gt && bd show hq-9t2
```

Treat town beads (`hq-...`) as the source of truth for this batch and the
audits-rig beads (`au-...`) as your local working tickets if you want
intermediate per-step tracking.

## Where the work is

- **Epic bead:** `hq-9t2` — "Backlink strategies for 16 intelli-verse-x projects"
- **Child beads:** `hq-9t2.1` through `hq-9t2.16` — one per audit
- **Template (must follow exactly):** `/gt/audits/crew/auditor/BACKLINK_TEMPLATE.md`
- **Manifest (16 audits with hostname + repo + priority):** `/gt/audits/crew/auditor/backlink-manifest.json`
- **Output directory (already created):** `/gt/audits/crew/auditor/backlinks/`
- **Existing on-page remediation playbooks (cross-link from each backlink playbook):** `/gt/audits/crew/auditor/remediation/<audit>.md`
- **PRs already opened for the on-page baseline (link from each playbook):** `/gt/audits/crew/auditor/pr-results.json`

## How to discover the work

```bash
# list all backlink beads, ordered by priority:
BEADS_DIR=/gt/.beads bd list --label backlinks-2026-05 --all -n 0 --json \
  | jq -r '.[] | "\(.priority) \(.id) [\(.status)] \(.title)"' \
  | sort -n

# inspect a single child bead (includes audit/host/repo metadata):
BEADS_DIR=/gt/.beads bd show hq-9t2.1 --json | jq '.[0]'

# list only what's still open:
BEADS_DIR=/gt/.beads bd list --label backlinks-2026-05 --status open --json
```

## Per-audit workflow

For each audit in priority order (P0 first: apex / ai-host / ai-chat-v2 /
blogs; then P1; then P2; P3 last):

1. **Claim it:**
   `BEADS_DIR=/gt/.beads bd update hq-9t2.N --status=in_progress`

2. **Read the bead's metadata** (audit, host, repo, stack, existing_pr,
   output_path) and the on-page remediation playbook at
   `/gt/audits/crew/auditor/remediation/<audit>.md`.

3. **Use firecrawl to gather real signals** (per §2 of the template):
   ```bash
   firecrawl scrape "https://<host>"
   firecrawl search "<host>" --limit 10
   firecrawl search "<product name> alternative" --limit 20
   firecrawl search "awesome <topic>" site:github.com --limit 10
   ```
   Name **real, currently-live destinations** — not placeholders.

4. **Draft the playbook** at `/gt/audits/crew/auditor/backlinks/<audit>.md`
   using the template's required structure (sections 1-10, all mandatory).
   Minimum 6 KB of substantive content. Less than 4 KB is rejected.

5. **Attach playbook path to the bead:**
   ```bash
   BEADS_DIR=/gt/.beads bd update hq-9t2.N \
     --metadata '{"playbook_path":"/gt/audits/crew/auditor/backlinks/<audit>.md"}'
   ```

6. **If a GitHub repo is mapped** (metadata field `repo` is not "N/A"):
   - Clone the repo (or use existing checkout under `/gt/audits/<repo>` if
     present from the earlier seo/geo PR batch).
   - Branch from main: `git checkout -b seo/backlinks-2026-05/<audit>`
   - Add three files to the repo:
     - `docs/seo/backlinks.md` — copy of the playbook
     - `docs/seo/outreach.csv` — the tracker from §6 as actual CSV
     - Update root `README.md` with a one-line "SEO" subhead linking to
       `docs/seo/backlinks.md`
   - Commit, push, open a **Draft PR** titled:
     `seo: backlink strategy & outreach tracker for <audit>`
   - PR body must link to:
     - the matching bead ID (`hq-9t2.N`)
     - the on-page baseline PR (from the bead's `existing_pr` metadata)
     - the matching remediation playbook
   - Attach PR URL to the bead:
     ```bash
     BEADS_DIR=/gt/.beads bd update hq-9t2.N \
       --metadata '{"pr_url":"<github pr url>"}'
     ```

7. **If no repo is mapped** (manifest `repo` is null — applies to beta,
   blogs, qrstudio): playbook stays in the auditor workspace only. Add a
   note to the bead description recording the missing-repo state.

8. **Close the bead:**
   `BEADS_DIR=/gt/.beads bd close hq-9t2.N`

The Discord watcher posts each close to the channel automatically — no
need to broadcast progress separately.

## Acceptance criteria for "done"

- All 16 child beads closed (`hq-9t2.1` through `hq-9t2.16`).
- 13 Draft PRs opened (one per audit with a mapped repo).
- 16 playbook files in `/gt/audits/crew/auditor/backlinks/`, every one
  ≥ 6 KB and following all 10 required sections.
- Epic `hq-9t2` closed (auto-closeable once all children are closed; do
  this last as a final signal).

## Rules (do not violate)

- **Do NOT fabricate domains, sites, or contact paths.** If you can't
  find a real target, mark it `tbd — needs research` and move on.
- **Do NOT use generic SEO advice** ("write good content," "build
  authority"). Every recommendation must reference a specific named site,
  list, or piece of copy.
- **Do NOT batch-paste the same template across audits.** Each project
  has different competitors, different communities, different
  directories.
- **No commits to `main` directly.** Always Draft PRs.
- **No long-form prose mail blasts.** State updates go to the bead.

## When you are stuck

```bash
gt escalate "Backlinks: <one-line description>" --severity high --related hq-9t2.N
```
This posts to the Mayor's inbox AND to Discord (red embed).
