# PR Creation Guide for SEO+GEO Baseline Remediations

## Status
- **Primary work COMPLETE**: All 16 remediation playbooks delivered (commit 4f86581)
- **Next phase**: Create 13 DRAFT PRs from remediation playbooks
- **Task**: au-cf6 (claimed by auditor)

## Files
- `pr-mapping.json`: Repository mappings (13 repos, 14 audits - platform covers beta too)
- `pr-results.json`: Track PR creation results (initialized, empty)
- `remediation/*.md`: Source remediation playbooks (16 total)

## Workflow (per repository)

```bash
# 1. Clone repo
git clone https://github.com/<org>/<repo>.git /tmp/work/<repo-shortname>
cd /tmp/work/<repo-shortname>

# 2. Create branch
git checkout -b seo-geo/baseline-2026-05/<audit-name>

# 3. Apply patches from remediation/<audit>.md
# Extract code blocks, create files (robots.txt, sitemap.xml, etc.)
# Modify existing files (index.html, layout.tsx, server.js, etc.)

# 4. Commit
git add .
git commit -m "SEO+GEO baseline remediation for <host>

Implements fixes from seo-geo-audits/remediation/<audit>.md:
- [list key changes]

Audit reference: intelli-verse-x/seo-geo-audits@4f86581
Related: <list related issues if any>

Co-Authored-By: Claude Sonnet 4 <noreply@anthropic.com>"

# 5. Push
git push -u origin seo-geo/baseline-2026-05/<audit-name>

# 6. Create draft PR
gh pr create --draft \
  --title "SEO+GEO: <brief description>" \
  --body "$(cat <<'EOFPR'
## Summary
Implements SEO+GEO baseline remediation from audit findings.

## Changes
- [list changes]

## Audit Reference
Full remediation playbook: [intelli-verse-x/seo-geo-audits](https://github.com/intelli-verse-x/seo-geo-audits/blob/main/remediation/<audit>.md)

## Testing
[verification steps from remediation playbook]

## Impact
[copy impact section from remediation playbook]

---
Generated from SEO+GEO audit baseline (2026-05-17)
EOFPR
)"

# 7. Capture PR URL
PR_URL=$(gh pr view --json url -q .url)
# Add to pr-results.json
```

## Priority Order

1. **apex** (main domain - highest priority)
2. **tutor** (CRITICAL: remove noindex blocking ALL indexing)
3. **platform** (main user platform)
4. **quiz** (good SEO, easy wins)
5. Rest in any order

## Special Cases

### tutor.intelli-verse-x.ai (DeepTutor)
**CRITICAL**: Remove `<meta name="robots" content="noindex">` - this is blocking ALL search engine indexing.
- Find in layout/metadata: `robots: 'noindex'`
- Remove or change to `robots: { index: true, follow: true }`

### ai-host.intelli-verse-x.ai (Intelliverse-X-AI)
Returns HTTP 426 (Upgrade Required) - WebSocket-only service.
Needs architectural change: separate HTTP landing page from WebSocket app.
PR should add static landing page, not attempt full migration.

### 404/503 sites (products, gaming, ai-chat-v2, kiosk)
These sites are not deployed. PR should add "coming soon" page or deployment manifests.

### CSR SPAs (qrstudio, animator, quizx, marketx, platform)
Phase 1 only: enhance HTML shell, fix routing. Full SSR migration is Phase 2 (future work).

### blogs (WordPress)
Add instructions for WordPress admin setup (can't PR config changes to WordPress admin).

## Output Format (pr-results.json)

```json
{
  "generated_at": "2026-05-17T19:05:00Z",
  "status": "complete",
  "total_repos": 13,
  "completed": 13,
  "prs_created": [
    {
      "repo": "intelli-verse-x/Intelliverse-x-frontend-revamp",
      "audit": "apex",
      "host": "intelli-verse-x.ai",
      "branch": "seo-geo/baseline-2026-05/apex",
      "pr_url": "https://github.com/intelli-verse-x/Intelliverse-x-frontend-revamp/pull/123",
      "pr_number": 123,
      "status": "draft",
      "created_at": "2026-05-17T19:10:00Z"
    }
  ],
  "errors": []
}
```

## Notes
- All PRs should be DRAFT status
- Reference audit commit: 4f86581
- Each PR links back to remediation/<audit>.md
- Sequential processing prevents conflicts
- Capture every PR URL for tracking
