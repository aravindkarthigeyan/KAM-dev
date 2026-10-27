#!/bin/sh
# Check project Lean sources for forbidden proof escapes, resource overrides and size limits,
# plus the module-system, root-import and frozen-anchor invariants.
# Run from anywhere; `lake lint` runs it too.

set -eu

project_root=$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)
status=0

lean_files() {
  find "$project_root" -type f -name '*.lean' ! -path '*/.lake/*' ! -name 'lakefile.lean'
}

check_pattern() {
  pattern=$1
  label=$2
  matches=$(lean_files | xargs -r grep -nE "$pattern" || true)
  if [ -n "$matches" ]; then
    printf '%s\n%s\n' "forbidden $label:" "$matches" >&2
    status=1
  fi
}

# `sorry` is allowed only as the exact manifest-bound body of a DRAFT_SORRY frozen anchor;
# check_frozen_anchors.py enforces that, so plain `sorry` is checked outside KAM/Frozen only.
sorries=$(lean_files | grep -v '/KAM/Frozen/' | xargs -r grep -nE '(^|[^[:alnum:]_])sorry([^[:alnum:]_]|$)' || true)
if [ -n "$sorries" ]; then
  printf '%s\n%s\n' 'forbidden sorry outside KAM/Frozen:' "$sorries" >&2
  status=1
fi
check_pattern '(^|[^[:alnum:]_])admit([^[:alnum:]_]|$)' 'admit'
check_pattern '(^|[^[:alnum:]_])axiom([^[:alnum:]_]|$)' 'axiom'
check_pattern '(^|[^[:alnum:]_])unsafe([^[:alnum:]_]|$)' 'unsafe'
check_pattern '(^|[^[:alnum:]_])opaque([^[:alnum:]_]|$)' 'opaque'
check_pattern 'set_option[[:space:]]+(maxHeartbeats|maxRecDepth|synthInstance\.maxHeartbeats)' \
  'resource-limit override'
check_pattern 'EuclideanSpace' 'EuclideanSpace (use `Fin n → ℝ`; see AGENTS.md)'

overlong_lines=$(lean_files | xargs -r awk 'length($0) > 100 && $0 !~ /https?:\/\// && $0 !~ /^(public[ \t]+)?(meta[ \t]+)?import[ \t]/ {
    print FILENAME ":" FNR ":" length($0)
  }')
if [ -n "$overlong_lines" ]; then
  printf '%s\n%s\n' 'Lean lines over 100 characters:' "$overlong_lines" >&2
  status=1
fi

oversize_files=$(lean_files | xargs -r awk 'FNR == 1501 { print FILENAME }')
if [ -n "$oversize_files" ]; then
  printf '%s\n%s\n' 'Lean files over 1500 lines:' "$oversize_files" >&2
  status=1
fi

python3 -I "$project_root/scripts/gen_root_imports.py" --check || status=1
python3 -I "$project_root/scripts/check_lean_modules.py" --root "$project_root" || status=1
# The anchor guard rejects an empty manifest; until the first anchor is frozen, instead require
# that KAM/Frozen holds no Lean file at all.
manifest="$project_root/manifest/frozen-anchors.json"
if python3 -I -c 'import json, sys; sys.exit(0 if json.load(open(sys.argv[1]))["anchors"] else 1)' \
    "$manifest"; then
  python3 -I "$project_root/scripts/check_frozen_anchors.py" --root "$project_root" \
    --manifest "$manifest" || status=1
else
  frozen=$(find "$project_root/KAM/Frozen" -type f -name '*.lean' 2>/dev/null || true)
  if [ -n "$frozen" ]; then
    printf '%s\n%s\n' 'Lean files under KAM/Frozen without any manifest anchor:' "$frozen" >&2
    status=1
  fi
fi

exit "$status"
