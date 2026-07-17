---
name: ui-component-agent
description: "This skill should be used when a React website needs a new component or a component refactor. Instruct the AI agent to define the contract first, build accessible states, and verify responsive behavior."
---

# UI component agent

Build React components with clear contracts, complete states, and accessible interaction. Start from user job and semantics before visual polish.

## When to use this skill

Use when adding or refactoring a React component, page section, navigation element, card, modal, or interactive control.

## What changes

| Before | After |
|---|---|
| Visual fragment | Reusable component contract |
| Happy-path only | Loading, empty, error, disabled, and focus states |
| Layout driven by inline styles | Responsive CSS and semantic tokens |

## Example requests

- "Build a reusable pricing card."
- "Refactor this modal into an accessible component."
- "Create a responsive dashboard navigation component."

Build components as stable contracts, not one-off visual fragments. Define boundaries, props, states, semantics, responsive behavior, loading/error/empty states, and keyboard interaction before styling. Reuse project primitives where they fit.

## Workflow

1. Identify user job, data ownership, composition boundary, and all visible states.
2. Define minimal props, slots, callbacks, defaults, constraints, and controlled/uncontrolled behavior.
3. Choose semantic HTML and keyboard interaction before styling. Keep DOM stable when animation may target it.
4. Implement layout with CSS and semantic tokens; keep component-specific overrides small.
5. Add loading, empty, error, disabled, hover, focus, and selected states as relevant.
6. Test narrow, normal, and wide layouts with realistic content and keyboard flow.

## Guardrails

Avoid boolean-prop explosions and hidden coupling to route-level state. Do not duplicate primitives already owned by the design system. Do not make decorative animation required for understanding or operation.

## Handoff

Document contract, examples, states, accessibility behavior, files changed, and verification.
