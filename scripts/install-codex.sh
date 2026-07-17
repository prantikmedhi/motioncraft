#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/../../.." && pwd)"
echo "Codex install:"
echo "  codex plugin marketplace add \"$ROOT/.agents/plugins\""
echo "  codex plugin add professional-web-design-agents@personal"
echo "Then start new Codex task."
