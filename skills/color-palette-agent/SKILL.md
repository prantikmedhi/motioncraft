---
name: color-palette-agent
description: "This skill should be used when a website needs a color palette, theme, or token cleanup. Instruct the AI agent to create semantic tokens, test contrast and states, and document adoption rules."
---

# Color palette agent

Turn scattered hex values into an accessible color system with clear jobs. Build tokens that designers and components can reuse without losing contrast or state meaning.

## When to use this skill

Use for new visual themes, dark mode, brand refreshes, contrast failures, or CSS color cleanup.

## What changes

| Before | After |
|---|---|
| One-off component colors | Semantic background, text, border, and status tokens |
| Pretty but weak contrast | Tested interactive and reading states |
| Dark mode as inversion | Purposeful dark surfaces and text roles |

## Example requests

- "Create a dark theme for this dashboard."
- "Fix the contrast failures without changing brand accent."
- "Replace raw colors with design tokens."

Build a semantic color system instead of collecting attractive hex values. Define background, surface, text, muted, border, accent, success, warning, and danger tokens. Keep gradients decorative, never the sole information carrier.

## Workflow

1. Inventory existing colors and group them by meaning, not by component name.
2. Choose neutral surfaces and text first, then assign accent and status roles.
3. Define base, hover, pressed, selected, disabled, and focus states for interactive roles.
4. Test text and non-text contrast against every surface where tokens can meet.
5. Check dark-mode changes as a complete system, not a color inversion. Support `prefers-color-scheme` only when product intent requires it.
6. Replace local literals with semantic tokens in a staged migration; avoid changing every visual decision at once.

## Guardrails

Do not communicate validation, priority, or selected state by color alone. Preserve visible focus. Avoid low-contrast text on gradients, images, glass effects, or animated backgrounds. Document exceptions with a reason.

## Handoff

Provide token table, usage examples, contrast results, migration files, and unresolved brand constraints.
