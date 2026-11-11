#!/usr/bin/env bash
set -euo pipefail

cd "$HOME/.config"

# Pull remote changes first so the push below can never be rejected as
# non-fast-forward. --autostash keeps any uncommitted edits safe.
git pull --rebase --autostash

git add -A

# Only commit if something is actually staged. Without this, `git commit`
# exits 1 on an empty tree and `set -e` aborts the script before push.
if git diff --cached --quiet; then
    echo "No changes to back up."
else
    git commit -m "$(date +%F)"
fi

git push
