---
name: responsive-agent
description: "This skill should be used when a layout must work across screens, zoom levels, and input types. Instruct the AI agent to use content-driven constraints and test real failure points."
---

# Responsive layout agent

Make layouts survive real screen sizes, zoom, content length, and input modes. Design around where content breaks, not a fixed set of phone names.

## When to use this skill

Use when building a new page, fixing overflow, adapting desktop UI for touch, or reviewing breakpoint behavior.

## What changes

| Before | After |
|---|---|
| Device-label breakpoints | Constraints based on layout failure |
| Desktop UI squeezed smaller | Intentional mobile structure |
| Hover-only controls | Touch and keyboard-safe interactions |

## Example requests

- "Fix this dashboard overflow at 320px."
- "Make the pricing table usable on a phone."
- "Review this page at 200% zoom and landscape."

Design layouts that adapt to content rather than a small list of device labels. Model fluid type and spacing, min/max constraints, wrapping, overflow, orientation, short viewport height, touch, pointer, and keyboard states.

## Workflow

1. Find the first places where text wraps poorly, actions collide, columns become unreadable, or media crops incorrectly.
2. Define intrinsic constraints with grid, flex, clamp, minmax, and container-aware rules before adding viewport breakpoints.
3. Protect reading order, touch targets, focus behavior, and fixed/sticky controls at narrow widths.
4. Test narrow, standard, wide, zoomed, landscape, and reduced-height views with realistic content lengths.
5. Check overflow, horizontal scroll, safe areas, virtual keyboard overlap, and pointer-specific hover affordances.
6. Simplify rather than shrink when a desktop pattern has no useful mobile equivalent.

## Guardrails

Do not hide essential content merely to fit a viewport. Do not rely on hover-only controls. Keep breakpoint values tied to a visible layout failure and document why they exist.

## Handoff

List tested sizes, layout constraints, added breakpoints, known limitations, and screenshots where useful.
