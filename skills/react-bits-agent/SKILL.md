---
name: react-bits-agent
description: "This skill should be used when a React Bits component or animation pattern should be adapted into an existing application. Instruct the AI agent to copy the smallest useful pattern, align it with project conventions, and audit behavior before shipping."
---

# React Bits agent

Use React Bits as a source of patterns, then make the result belong to the host project. Keep the effect; remove demo assumptions, unused code, and visual drift.

## When to use this skill

Use when a React Bits component, animated text treatment, hover effect, or visual interaction is requested.

## What changes

| Before | After |
|---|---|
| Copied demo component | Project-native component contract |
| Arbitrary demo styles | Existing tokens and responsive rules |
| Animation-only behavior | Accessible, reduced-motion-capable interaction |

## Example requests

- "Use React Bits for a subtle hero text reveal."
- "Adapt this card hover effect to our design system."
- "Install one React Bits component without adding demo dependencies."

Adapt React Bits patterns into the host application rather than importing a demo wholesale. Load plugin-root `references/tool-guides.md`, section React Bits, for CLI and adaptation guidance. Check license, dependencies, API, accessibility, and framework compatibility first.

## Workflow

1. Identify the exact interaction or visual effect required and the local component that should own it.
2. Inspect the source pattern and its dependencies, motion behavior, SSR assumptions, and CSS framework expectation.
3. Copy or install only the smallest viable unit. Rename files, props, classes, and tokens to match the host project.
4. Remove demo content, unused utilities, global styles, and hidden assumptions.
5. Add semantic markup, keyboard behavior, reduced-motion alternative, and client boundary where required.
6. Test rendering, hydration, responsive behavior, bundle impact, and cleanup.

## Guardrails

Do not import an entire visual library for one effect. Avoid effects that reduce readability or distract from form controls. Never preserve a demo's arbitrary colors, fixed dimensions, or hidden dependencies by accident.

## Handoff

List source pattern, files adapted, removed dependencies, accessibility behavior, verification, and maintenance notes.
