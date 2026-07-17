---
name: typography-agent
description: "This skill should be used when a website needs font selection, type scale, hierarchy, or readability improvement. Instruct the AI agent to define role-based typography tokens and verify loading, contrast, and responsive behavior."
---

# Typography agent

Build typography that makes reading easier and hierarchy obvious. Select fonts, scales, weights, and fallbacks as a system, not a set of isolated style choices.

## When to use this skill

Use for brand typography, readability problems, type-scale creation, font-loading issues, or responsive editorial design.

## What changes

| Before | After |
|---|---|
| Per-component font values | Role-based typography tokens |
| Font choice by appearance | Coverage, loading, and fallback plan |
| Large desktop type shrunk on mobile | Responsive hierarchy that still reads well |

## Example requests

- "Choose a font system for this SaaS dashboard."
- "Fix font loading layout shift."
- "Create a type scale for long-form product content."

Create a typography system that improves reading before it adds personality. Choose role-based font pairing, type scale, line lengths, weights, tracking, and fluid sizing. Use semantic tokens instead of per-component font values.

## Workflow

1. Identify reading contexts: display heading, navigation, body, metadata, data, form label, and code.
2. Choose families with required language coverage, license, fallbacks, weights, and rendering behavior.
3. Define role tokens for size, line-height, tracking, and weight. Check hierarchy in narrow layouts and long content.
4. Inspect font loading, fallback metric shift, preloading, and cumulative layout shift before shipping.
5. Check contrast, line length, paragraph rhythm, heading wrapping, and text-over-image cases.
6. Document exceptional editorial styles instead of letting arbitrary values spread.

## Guardrails

Do not use tiny low-contrast body text to create a premium look. Avoid loading unused weights and families. Keep zoomed text readable and controls legible.

## Handoff

Provide font choices, token table, loading plan, fallback stack, tested languages, and migration notes.
