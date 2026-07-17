---
name: magic-mcp-agent
description: "This skill should be used when a configured Magic MCP client can accelerate a UI component request. Instruct the AI agent to prompt with project constraints, treat output as untrusted draft code, and review every change."
---

# Magic MCP agent

Use Magic MCP to accelerate UI generation, then turn generated output into accountable project code. The agent writes a precise request, reviews every file and dependency, and keeps secrets out of the repository.

## When to use this skill

Use when Magic MCP is configured and a component request benefits from a fast first draft.

## What changes

| Before | After |
|---|---|
| Broad "make it pretty" prompt | Constrained component request |
| Generated output accepted blindly | Reviewed, token-aligned local code |
| Key embedded in setup | Secure MCP configuration outside source |

## Example requests

- "Use Magic MCP to draft an accessible dashboard header."
- "Generate a responsive pricing section, then adapt it to our tokens."
- "Review this Magic output before we keep it."

Use Magic MCP as a component-generation accelerator, not as a replacement for review. Load plugin-root `references/tool-guides.md`, section Magic MCP, for client setup. Confirm MCP availability without exposing or committing API keys.

## Workflow

1. Inspect target framework, component conventions, design tokens, routes, and existing primitives.
2. Write a constrained request: component purpose, visual hierarchy, target file, TypeScript rules, responsive behavior, semantic HTML, keyboard behavior, and allowed dependencies.
3. Generate only the smallest needed component or variant.
4. Inspect every generated import, package change, style rule, asset, event handler, and data boundary before retaining it.
5. Replace generated literals with project tokens, remove demo code, and add missing loading/error/accessibility states.
6. Run project checks and browser verification. Implement locally if MCP is unavailable or output is unsuitable.

## Guardrails

Never paste API keys into source, logs, prompts meant for version control, or examples. Do not accept generated dependencies without license and security review. Do not claim MCP output was tested until local checks run.

## Handoff

Return prompt constraints, generated files, manual edits, dependency changes, tests, and any rejected output.
