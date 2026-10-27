#!/bin/sh
# Install the post-commit hook that refreshes the campaign HQ (README) after every commit on main.
set -eu
cd "$(dirname "$0")/.."
hook="$(git rev-parse --git-common-dir)/hooks/post-commit"
cat > "$hook" <<'EOF'
#!/bin/sh
# Refresh the campaign HQ after every commit on main (scripts/hq-update.sh); runs in the background.
# Skipped for the HQ's own commits (HQ_UPDATING=1) and outside the main checkout.
[ -n "${HQ_UPDATING:-}" ] && exit 0
root=$(git rev-parse --show-toplevel)
[ -x "$root/scripts/hq-update.sh" ] || exit 0
mkdir -p "$root/.hq"
nohup "$root/scripts/hq-update.sh" >> "$root/.hq/hq-update.log" 2>&1 &
exit 0
EOF
chmod +x "$hook"
echo "installed $hook"
