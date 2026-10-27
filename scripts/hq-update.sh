#!/bin/bash
# Regenerate the live README sections, commit them, and push main.
# Called by cron (every 20 minutes) and by the post-commit hook (after every commit on main).
# Commits only README.md and docs/campaign/history.csv; never touches other files.
set -euo pipefail
cd "$(dirname "$0")/.."
root=$(pwd)
exec 8>"$(git rev-parse --git-common-dir)/hq-update.lock"
flock -w 120 8 || { echo "$(date -u '+%F %T') lock busy; skipped"; exit 0; }
# Only the main checkout on branch main updates the HQ (worktrees share the hooks).
[ "$(git rev-parse --abbrev-ref HEAD)" = main ] || { echo "not on main; skipped"; exit 0; }
[ "$(git rev-parse --show-toplevel)" = "$root" ] || exit 0
gitdir=$(git rev-parse --git-dir)
if [ -e "$gitdir/rebase-merge" ] || [ -e "$gitdir/rebase-apply" ] || [ -e "$gitdir/MERGE_HEAD" ]; then
  echo "rebase or merge in progress; skipped"; exit 0
fi
python3 -I scripts/hq-status.py >/dev/null
git add -- README.md docs/campaign/history.csv
if ! git diff --cached --quiet -- README.md docs/campaign/history.csv; then
  HQ_UPDATING=1 git commit -q -m "HQ status ($(date -u '+%Y-%m-%d %H:%M UTC'))" -- README.md docs/campaign/history.csv
  echo "$(date -u '+%F %T') committed $(git rev-parse --short HEAD)"
fi
if git remote get-url origin >/dev/null 2>&1; then
  git push -q origin main && echo "$(date -u '+%F %T') pushed"
fi
