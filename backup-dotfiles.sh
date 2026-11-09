#!/usr/bin/env bash
set -e

cd "$HOME/.config"
git add -A
git commit -m "$(date +%F)"
git push
git pull
