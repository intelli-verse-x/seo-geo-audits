# Gas Town Tools

Workarounds and utilities for Gas Town operation.

## Beads DB Workarounds

### fix-beads-jsonl.py

**Problem:** The beads binary exports generated column `depends_on_id` to JSONL, which then fails to re-import.

**Solution:** This script transforms the JSONL to use source columns instead:
- `depends_on_id` → `depends_on_issue_id` / `depends_on_wisp_id` / `depends_on_external`

**Usage:**
```bash
python3 /gt/.gastools/fix-beads-jsonl.py /gt/.beads/issues.jsonl /gt/.beads/issues.jsonl.tmp
mv /gt/.beads/issues.jsonl.tmp /gt/.beads/issues.jsonl
```

**When to run:**
- After any `bd` command that modifies issues (create, update, close, etc.)
- Before attempting to re-import from JSONL
- If you see: "Error 1105 (HY000): The value specified for generated column "depends_on_id" in table "dependencies" is not allowed."

### bd-dep-add-workaround.sh

**Problem:** `bd dep add` tries to INSERT the generated column directly, which fails.

**Solution:** Direct SQL that uses source columns instead.

**Usage:**
```bash
/gt/.gastools/bd-dep-add-workaround.sh <issue_id> <depends_on_id> [type]
```

**Example:**
```bash
/gt/.gastools/bd-dep-add-workaround.sh hq-123 hq-456 blocks
```

## Maintenance

These workarounds are tracked in **hq-5fw**. They should be removed once the upstream beads binary is fixed.

**Upstream issue:** https://github.com/gastownhall/beads/issues
