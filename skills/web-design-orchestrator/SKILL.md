---
name: web-design-orchestrator
description: "This skill should be used when a website request needs coordinated planning, design, implementation, and review. Instruct the AI agent to route work to relevant specialists, preserve user constraints, and return verified delivery status."
---

# Web Design Orchestrator

Coordinate the specialist agents that turn a website brief into a verified release. Choose only agents that materially help, put structure before polish, and make the final evidence easy to audit.

## When to use this skill

Use for end-to-end website work, redesigns, multi-step page builds, or requests that combine design, frontend, motion, and review.

## What changes

| Before | After |
|---|---|
| One agent guessing every specialty | Relevant specialists with owned responsibilities |
| Motion before usable structure | Content, accessibility, responsive behavior, then enhancement |
| Finished claim without evidence | Route checks, fallback behavior, and residual-risk report |

## Example requests

- "Plan and build a premium SaaS homepage."
- "Redesign this page with GSAP and a Vanta fallback."
- "Audit our entire launch page before deployment."

Act as lead agent. Keep this overview brief; use sections below for execution. Read existing app structure first and load plugin-root `references/tool-guides.md` only when a named source is needed. Build in this order:

1. `plan-execution-agent`: brief, constraints, page map, milestones.
2. `component-research-agent`: choose patterns only when they solve a known need.
3. `ui-component-agent`: layout, component contracts, responsive states.
4. `typography-agent` + `color-palette-agent`: visual system and tokens.
5. Motion specialists: `gsap-agent`, `lenis-agent`, `vanta-agent`, `threejs-3d-agent` as needed.
6. `react-bits-agent` or `magic-mcp-agent`: accelerate implementation; inspect generated code.
7. `code-reviewer-agent`: review and verify.
8. Add `accessibility-agent`, `performance-agent`, `responsive-agent`, `qa-browser-agent`, and `security-agent` to every meaningful delivery. Add `content-seo-agent`, `forms-agent`, `asset-agent`, `design-system-agent`, `handoff-agent`, and `tooling-integration-agent` when scope matches.

## Source registry

- Vanta: https://github.com/tengbao/vanta.git
- GSAP: https://github.com/greensock/GSAP
- Lenis: https://github.com/darkroomengineering/lenis
- React Bits: https://github.com/DavidHDev/react-bits
- Three.js: https://github.com/mrdoob/three.js.git
- Magic MCP: https://github.com/21st-dev/magic-mcp.git
- React components index: https://github.com/brillout/awesome-react-components.git

Treat repositories as reference sources. Check local package versions before writing imports. Do not clone or add dependencies unless user asks or project package manager confirms need. Prefer progressive enhancement: core content works without WebGL, smooth scroll, or animation.

## Routing rules

- Component/layout request → UI + typography + color.
- Scroll/entrance/hover request → GSAP; add Lenis only if scroll behavior benefits.
- Ambient visual background → Vanta; provide static fallback.
- Product scene, model, shader, or canvas → Three.js; budget GPU and cleanup.
- “Use React Bits” → inspect pattern, adapt design tokens, preserve accessibility.
- “Use Magic” → call available MCP only; never pretend generated code was validated.
- “Find component” → research agent compares options, licensing, maintenance, and fit.
- Any finished change → reviewer checks build, responsive behavior, a11y, performance.
- Production launch → accessibility + performance + QA browser + security + handoff.
- Tool named → tooling-integration-agent + specialist owner + code-reviewer-agent.

## Intake and planning

1. Identify desired user outcome, audience, routes, brand constraints, data sources, deadline, and definition of done.
2. Inspect project framework, component system, package manager, test commands, and existing changes before proposing new dependencies.
3. State assumptions and split must-have work from optional motion or visual polish.
4. Delegate only agents that materially affect the task. Do not invoke every specialist by default.
5. Sequence work so structure, content, accessibility, and responsive behavior exist before animation, WebGL, or generated UI.

## Execution protocol

Give every selected specialist a concrete responsibility, affected surface, constraints, and acceptance check. Keep one owner for each file area. Reconcile conflicting suggestions against user goals, performance, accessibility, and existing project conventions. Use tooling-integration-agent before adding named libraries, and code-reviewer-agent before declaring completion.

## Quality gate

Require route-level verification, responsive review, keyboard/focus review, reduced-motion behavior, loading/error state, console check, and relevant build/test command. For visual enhancements, verify static fallback and cleanup. For new dependencies, report version, source, reason, and bundle/runtime effect.

## Handoff

Return outcome, plan completed, agents used, files changed, dependency changes, verification evidence, fallback behavior, assumptions, and residual risks. Mark work blocked only when a required decision, credential, asset, or external state prevents progress.

## Agent output

Return plan, assumptions, selected tools, dependency changes, files, verification, fallback behavior, and unresolved risks. Keep implementation work separate from optional polish.

## Definition of done

No dead imports, console errors, layout overflow, inaccessible controls, motion-only information, or unbounded render loops. Verify with project scripts plus targeted browser checks when available.
