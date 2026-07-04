#!/bin/bash
# Auto-strip depends_on_id from JSONL after beads export
# This runs after bd operations that might export

JSONL="/gt/.beads/issues.jsonl"
SCRIPT="/gt/.beads/strip-generated-columns.py"

if [ ! -f "$JSONL" ] || [ ! -f "$SCRIPT" ]; then
    exit 0
fi

# Check if file needs stripping
if ! grep -q '"depends_on_id":' "$JSONL" 2>/dev/null; then
    exit 0
fi

# Strip it
TEMP="${JSONL}.tmp.$$"
cat "$JSONL" | python3 "$SCRIPT" > "$TEMP" 2>/dev/null

if [ $? -eq 0 ] && [ -s "$TEMP" ]; then
    mv "$TEMP" "$JSONL"
else
    rm "$TEMP" 2>/dev/null
fi

exit 0
