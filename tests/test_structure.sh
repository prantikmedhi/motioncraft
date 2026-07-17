#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
test -f "$ROOT/.codex-plugin/plugin.json"
test -f "$ROOT/README.md"
test -f "$ROOT/docs/INSTALL.md"
test -f "$ROOT/references/tool-guides.md"
test -f "$ROOT/docs/CREATE_SKILLS.md"
test -f "$ROOT/docs/SKILLS.md"
test -x "$ROOT/scripts/check-web-tooling.sh"
test -x "$ROOT/scripts/create-skill.sh"
test -x "$ROOT/scripts/validate-skills.sh"
count="$(find "$ROOT/skills" -name SKILL.md | wc -l | tr -d ' ')"
[[ "$count" -ge 25 ]]
grep -q 'https://github.com/greensock/GSAP' "$ROOT/skills/web-design-orchestrator/SKILL.md"
for source in vanta GSAP lenis react-bits three magic-mcp awesome-react-components; do
  grep -qi "$source" "$ROOT/references/tool-guides.md"
done
while IFS= read -r skill_file; do
  grep -qi '^## When to use this skill$' "$skill_file"
  grep -qi '^## What changes$' "$skill_file"
  grep -qi '^## Example requests$' "$skill_file"
  grep -qi '^## Handoff$' "$skill_file"
done < <(find "$ROOT/skills" -mindepth 2 -maxdepth 2 -name SKILL.md | sort)
if grep -R -n '\[TODO:' "$ROOT" >/dev/null; then exit 1; fi
echo "structure ok: $count skills"
