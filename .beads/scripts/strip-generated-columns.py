#!/usr/bin/env python3
"""Strip generated columns from beads JSONL export before commit.

Beads exports ALL columns from the database, including those marked as 
GENERATED ALWAYS AS (depends_on_id, etc). Dolt cannot set generated columns 
during import, so they must be stripped before committing the JSONL export.

This script is run by the pre-commit hook and prepares the export for 
safe round-trip into Dolt.
"""
import json
import sys
import os

def strip_file(filepath):
    """Remove generated columns from JSONL file."""
    if not os.path.exists(filepath):
        return 0
    
    stripped_count = 0
    lines = []
    
    try:
        with open(filepath, 'r') as f:
            for line in f:
                try:
                    obj = json.loads(line.strip())
                    before = len(obj)
                    
                    # Strip known generated columns
                    for col in ['depends_on_id', 'depends_on_id_2', 'id_generated']:
                        if col in obj:
                            del obj[col]
                            stripped_count += 1
                    
                    if len(obj) < before:
                        pass  # Column was removed
                    
                    lines.append(json.dumps(obj))
                except json.JSONDecodeError:
                    # Not JSON, keep as-is
                    lines.append(line.rstrip('\n'))
                except Exception:
                    lines.append(line.rstrip('\n'))
        
        # Write back
        with open(filepath, 'w') as f:
            for line in lines:
                f.write(line + '\n')
        
        return stripped_count
        
    except Exception as e:
        print(f"Error stripping {filepath}: {e}", file=sys.stderr)
        return -1

if __name__ == '__main__':
    if len(sys.argv) > 1:
        count = strip_file(sys.argv[1])
        if count > 0:
            sys.stderr.write(f"Stripped {count} generated columns from {sys.argv[1]}\n")
    else:
        # Default: strip /gt/.beads/issues.jsonl if it exists
        count = strip_file('/gt/.beads/issues.jsonl')
        if count > 0:
            print(f"Stripped {count} generated columns")
