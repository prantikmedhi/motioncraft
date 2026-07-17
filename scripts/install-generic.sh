#!/usr/bin/env bash
set -euo pipefail
TARGET="."; DEST=".agent-skills"; APPLY=0
while [[ $# -gt 0 ]]; do
  case "$1" in
    --target) TARGET="${2:?missing target}"; shift 2 ;;
    --dest) DEST="${2:?missing destination}"; shift 2 ;;
    --apply) APPLY=1; shift ;;
    *) echo "Usage: $0 [--target DIR] [--dest DIR] [--apply]" >&2; exit 2 ;;
  esac
done
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
OUT="$(cd "$TARGET" && pwd)/$DEST/professional-web-design-agents"
if [[ "$APPLY" -eq 0 ]]; then echo "Dry run: copy skills to $OUT"; exit 0; fi
mkdir -p "$OUT"
cp -R "$ROOT/skills/." "$OUT/"
echo "Installed generic skills: $OUT"
