#!/usr/bin/env python3
"""
Strip generated columns from Beads JSONL export.
This works around beads binary exporting generated columns which Dolt rejects.
"""
import json
import sys

def fix_dependency(dep):
    """Remove the generated column depends_on_id."""
    if 'depends_on_id' in dep:
        dep = dep.copy()
        del dep['depends_on_id']
    return dep

def fix_issue(issue):
    """Fix dependencies in an issue."""
    if 'dependencies' in issue and isinstance(issue['dependencies'], list):
        issue['dependencies'] = [fix_dependency(d) for d in issue['dependencies']]
    return issue

for line in sys.stdin:
    if not line.strip():
        continue
    try:
        issue = json.loads(line)
        fixed = fix_issue(issue)
        print(json.dumps(fixed, separators=(',', ':')))
    except json.JSONDecodeError:
        print(line, end='')
