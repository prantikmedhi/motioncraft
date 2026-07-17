#!/usr/bin/env bash
set -euo pipefail

PLUGIN_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SKILLS_DIR="${1:-$PLUGIN_ROOT/skills}"
SEEN_NAMES=""
count=0

while IFS= read -r skill_file; do
  skill_dir="$(basename "$(dirname "$skill_file")")"
  name="$(sed -n 's/^name: \([a-z0-9-]*\)$/\1/p' "$skill_file")"
  description="$(sed -n 's/^description: \(.*\)$/\1/p' "$skill_file")"
  [[ -n "$name" && -n "$description" ]] || { echo "Invalid frontmatter: $skill_file" >&2; exit 1; }
  [[ "$name" == "$skill_dir" ]] || { echo "Name mismatch: $skill_file" >&2; exit 1; }
  case " $SEEN_NAMES " in *" $name "*) echo "Duplicate skill name: $name" >&2; exit 1 ;; esac
  [[ "$description" != *"TODO"* ]] || { echo "Placeholder description: $skill_file" >&2; exit 1; }
  sentence_count="$(printf '%s' "$description" | tr -cd '.' | wc -c | tr -d ' ')"
  [[ "$sentence_count" -ge 2 && "$sentence_count" -le 3 ]] || { echo "Description must contain 2-3 sentences: $skill_file" >&2; exit 1; }
  grep -q '^---$' "$skill_file" || { echo "Missing frontmatter: $skill_file" >&2; exit 1; }
  body_words="$(tail -n +5 "$skill_file" | wc -w | tr -d ' ')"
  [[ "$body_words" -ge 120 ]] || { echo "Skill body too short: $skill_file" >&2; exit 1; }
  SEEN_NAMES="$SEEN_NAMES $name"
  count=$((count + 1))
done < <(find "$SKILLS_DIR" -mindepth 2 -maxdepth 2 -name SKILL.md | sort)

[[ "$count" -gt 0 ]] || { echo "No skills found: $SKILLS_DIR" >&2; exit 1; }
echo "valid skills: $count"
