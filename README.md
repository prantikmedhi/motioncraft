# Professional Web Design Agents

Codex plugin for professional React website creation. Main entry: `web-design-orchestrator`.

## Agent roster

- `web-design-orchestrator` — scope, route, and coordinate work.
- `plan-execution-agent` — convert brief into ordered implementation steps.
- `ui-component-agent` — responsive component architecture and states.
- `typography-agent` — font pairing, type scale, hierarchy, readability.
- `color-palette-agent` — semantic tokens, contrast, dark/light themes.
- `gsap-agent` — timelines, ScrollTrigger, interaction motion.
- `vanta-agent` — Vanta backgrounds with reduced-motion fallback.
- `threejs-3d-agent` — Three.js scenes, shaders, assets, cleanup.
- `lenis-agent` — smooth scrolling and native-scroll safety.
- `react-bits-agent` — adapt React Bits patterns without cargo-culting.
- `magic-mcp-agent` — use 21st.dev Magic MCP for component generation when available.
- `component-research-agent` — evaluate components against awesome-react-components.
- `code-reviewer-agent` — review UX, a11y, performance, security, and maintainability.
- `accessibility-agent` — WCAG, keyboard, focus, screen-reader behavior.
- `performance-agent` — Core Web Vitals, bundle, image, GPU, and runtime budgets.
- `responsive-agent` — breakpoint strategy, fluid layout, touch behavior.
- `content-seo-agent` — content hierarchy, metadata, structured data, crawlability.
- `forms-agent` — validation, error recovery, input ergonomics, submission states.
- `design-system-agent` — tokens, primitives, component APIs, visual consistency.
- `asset-agent` — image, icon, font, video selection and optimization.
- `qa-browser-agent` — browser verification, screenshots, interaction smoke tests.
- `security-agent` — frontend security, dependency, injection, and privacy review.
- `handoff-agent` — docs, change summary, runbook, and deployment handoff.
- `tooling-integration-agent` — safe setup and use of the named web tools.

## Source registry

See `skills/web-design-orchestrator/SKILL.md` for official repository links, selection rules, and integration boundaries.
See `references/tool-guides.md` for install patterns, React examples, cleanup rules, fallbacks, and evaluation rubrics.
See `docs/CREATE_SKILLS.md` to add a focused skill with scripts and tests.
See `docs/SKILLS.md` for why the specialist directory exists and how agents use it.

## Install

```bash
./scripts/install-codex.sh
./scripts/install-claude.sh --target . --apply
./scripts/install-antigravity.sh --target . --apply
./scripts/install-all.sh --target .
# Unknown/other agent: choose its project skill directory
./scripts/install-generic.sh --target . --dest .agent-skills --apply
```

Adapters dry-run by default. Read `docs/INSTALL.md` before `--apply`.

## Tooling audit

```bash
./scripts/check-web-tooling.sh path/to/project
```

## Create a skill

```bash
./scripts/create-skill.sh new-agent
./scripts/validate-skills.sh
./tests/test_authoring.sh
```

## Usage

Ask for a website, redesign, interaction, or audit. Or invoke a specialist by name. Agent output must include assumptions, files touched, verification, and unresolved risks.
