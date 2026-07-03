#!/bin/bash
# Workaround for bd dep add bug with generated column
# Usage: bd-dep-add-workaround.sh <issue_id> <depends_on_id> [type]

set -e

ISSUE_ID="${1:?Usage: $0 <issue_id> <depends_on_id> [type]}"
DEPENDS_ON="${2:?Usage: $0 <issue_id> <depends_on_id> [type]}"
TYPE="${3:-blocks}"
CREATED_BY="mayor/"

# Determine which column to use based on ID pattern
if [[ "$DEPENDS_ON" =~ ^hq-wisp- ]]; then
    COLUMN="depends_on_wisp_id"
elif [[ "$DEPENDS_ON" =~ ^hq- ]]; then
    COLUMN="depends_on_issue_id"
else
    COLUMN="depends_on_external"
fi

echo "Adding dependency: $ISSUE_ID -> $DEPENDS_ON (via $COLUMN)" >&2

dolt --host 127.0.0.1 --port 3307 --use-db hq --no-tls sql -q \
  "INSERT INTO dependencies (issue_id, ${COLUMN}, type, created_by) \
   VALUES ('${ISSUE_ID}', '${DEPENDS_ON}', '${TYPE}', '${CREATED_BY}')"

echo "Dependency added successfully" >&2
