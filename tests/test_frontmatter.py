from pathlib import Path
import re

ROOT = Path(__file__).resolve().parents[1]
files = sorted((ROOT / "skills").glob("*/SKILL.md"))
assert len(files) >= 20, len(files)
names = []
for path in files:
    text = path.read_text(encoding="utf-8")
    assert text.startswith("---\n")
    match = re.search(r"^name: ([a-z0-9-]+)$", text, re.MULTILINE)
    assert match, path
    names.append(match.group(1))
    assert re.search(r"^description: .+", text, re.MULTILINE), path
assert len(names) == len(set(names)), "duplicate skill names"
print(f"frontmatter ok: {len(files)} skills")
