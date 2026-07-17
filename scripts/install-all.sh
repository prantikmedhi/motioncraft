#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
TARGET="."; APPLY=""
while [[ $# -gt 0 ]]; do
  case "$1" in
    --target) TARGET="${2:?missing target}"; shift 2 ;;
    --apply) APPLY="--apply"; shift ;;
    *) echo "Usage: $0 [--target DIR] [--apply]" >&2; exit 2 ;;
  esac
done
"$ROOT/scripts/install-codex.sh"
"$ROOT/scripts/install-claude.sh" --target "$TARGET" $APPLY
"$ROOT/scripts/install-antigravity.sh" --target "$TARGET" $APPLY
