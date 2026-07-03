#!/usr/bin/env python3
"""
Fix beads JSONL by removing generated column depends_on_id from dependencies.

The dependencies table has:
  depends_on_id GENERATED ALWAYS AS (coalesce(depends_on_issue_id, depends_on_wisp_id, depends_on_external))

But JSONL export includes depends_on_id, causing import to fail.
This script:
1. Reads depends_on_id value
2. Determines correct source column based on ID pattern
3. Removes depends_on_id and sets the appropriate source column
"""

import json
import sys
import re

def fix_dependency(dep):
    """Transform dependency object to remove generated column."""
    if 'depends_on_id' not in dep:
        return dep

    target_id = dep['depends_on_id']
    dep_fixed = dep.copy()
    del dep_fixed['depends_on_id']

    # Determine target column based on ID pattern
    if target_id.startswith('hq-wisp-'):
        dep_fixed['depends_on_wisp_id'] = target_id
    elif target_id.startswith('hq-'):
        dep_fixed['depends_on_issue_id'] = target_id
    else:
        # External dependency (URL or other identifier)
        dep_fixed['depends_on_external'] = target_id

    return dep_fixed

def fix_issue(issue):
    """Fix dependencies in an issue object."""
    if 'dependencies' in issue and issue['dependencies']:
        issue['dependencies'] = [fix_dependency(dep) for dep in issue['dependencies']]
    return issue

def main():
    input_path = sys.argv[1] if len(sys.argv) > 1 else '/gt/.beads/issues.jsonl'
    output_path = sys.argv[2] if len(sys.argv) > 2 else input_path + '.fixed'

    print(f"Reading from: {input_path}", file=sys.stderr)
    print(f"Writing to: {output_path}", file=sys.stderr)

    fixed_count = 0
    total_count = 0

    with open(input_path, 'r') as infile, open(output_path, 'w') as outfile:
        for line in infile:
            if not line.strip():
                continue

            total_count += 1
            issue = json.loads(line)

            if 'dependencies' in issue and issue['dependencies']:
                issue = fix_issue(issue)
                fixed_count += 1

            json.dump(issue, outfile, separators=(',', ':'))
            outfile.write('\n')

    print(f"Processed {total_count} issues, fixed {fixed_count} with dependencies", file=sys.stderr)
    print(f"Fixed file: {output_path}", file=sys.stderr)

if __name__ == '__main__':
    main()
