#!/usr/bin/env bash
set -euo pipefail

NAME="${1:-}"
if [[ ! "$NAME" =~ ^[a-z0-9]+(-[a-z0-9]+)*$ ]]; then
  echo "Usage: $0 <kebab-case-skill-name>" >&2
  exit 2
fi

PLUGIN_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
TARGET="$PLUGIN_ROOT/skills/$NAME"
TEMPLATE="$PLUGIN_ROOT/templates/SKILL.md.template"
if [[ -e "$TARGET" ]]; then
  echo "Skill already exists: $TARGET" >&2
  exit 1
fi

mkdir -p "$TARGET"
sed "s/skill-name/$NAME/g; s/Skill name/${NAME//-/ }/g" "$TEMPLATE" > "$TARGET/SKILL.md"
echo "Created $TARGET/SKILL.md"
echo "Next: replace placeholders, then run ./scripts/validate-skills.sh"
