#!/usr/bin/env bash
set -euo pipefail
TARGET="."; APPLY=0
while [[ $# -gt 0 ]]; do
  case "$1" in
    --target) TARGET="${2:?missing target}"; shift 2 ;;
    --apply) APPLY=1; shift ;;
    *) echo "Usage: $0 [--target DIR] [--apply]" >&2; exit 2 ;;
  esac
done
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
DEST="$(cd "$TARGET" && pwd)/.agents/skills/professional-web-design-agents"
if [[ "$APPLY" -eq 0 ]]; then echo "Dry run: copy skills to $DEST"; exit 0; fi
mkdir -p "$DEST"
cp -R "$ROOT/skills/." "$DEST/"
echo "Installed Antigravity project skills: $DEST"
