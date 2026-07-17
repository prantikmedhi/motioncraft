#!/usr/bin/env bash
set -euo pipefail

PLUGIN_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
"$PLUGIN_ROOT/scripts/validate-skills.sh"
TEMP_DIR="$(mktemp -d /tmp/web-skill-test.XXXXXX)"
trap 'rm -rf "$TEMP_DIR"' EXIT
mkdir -p "$TEMP_DIR/plugin"
cp -R "$PLUGIN_ROOT/templates" "$TEMP_DIR/plugin/templates"
mkdir -p "$TEMP_DIR/plugin/scripts" "$TEMP_DIR/plugin/skills"
cp "$PLUGIN_ROOT/scripts/create-skill.sh" "$TEMP_DIR/plugin/scripts/create-skill.sh"
chmod +x "$TEMP_DIR/plugin/scripts/create-skill.sh"
"$TEMP_DIR/plugin/scripts/create-skill.sh" sample-skill >/dev/null
test -f "$TEMP_DIR/plugin/skills/sample-skill/SKILL.md"
if "$TEMP_DIR/plugin/scripts/create-skill.sh" Bad_Name >/dev/null 2>&1; then
  echo "Invalid skill name accepted" >&2
  exit 1
fi
echo "authoring tests ok"
