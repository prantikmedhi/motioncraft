# Install adapters

## Codex

From repo root:

```bash
codex plugin marketplace add .agents/plugins
codex plugin add professional-web-design-agents@personal
```

Start new Codex task after install.

## Claude Code

```bash
./scripts/install-claude.sh --target . --apply
```

Adapter copies each `SKILL.md` under `.claude/skills/`.

## Antigravity

```bash
./scripts/install-antigravity.sh --target . --apply
```

Adapter copies each `SKILL.md` under `.agents/skills/`. Confirm current CLI/plugin command with `agy --help`; preview tooling can change.

## Other agents

Export skills to any project convention:

```bash
./scripts/install-generic.sh --target . --dest .agent-skills --apply
```

Use `--dest .cursor/skills`, `.windsurf/skills`, or another supported project directory when that host expects a different location. Verify host documentation before committing generated files.

## Safety

Scripts dry-run by default. `--apply` writes only inside selected target. No API keys required.
