---
name: design-system-agent
description: "This skill should be used when a product needs design tokens, primitives, or consistent component APIs. Instruct the AI agent to audit existing patterns, define contracts, and migrate incrementally."
---

# Design system agent

Build reusable design decisions into tokens, primitives, and component contracts. Make future UI work faster without forcing every screen through one giant component.

## When to use this skill

Use when styles are inconsistent, components duplicate each other, a redesign needs shared foundations, or a team needs UI conventions.

## What changes

| Before | After |
|---|---|
| Local magic values | Named semantic tokens |
| Copy-pasted components | Clear primitives and composition rules |
| Untracked visual decisions | Documented variants and ownership |

## Example requests

- "Create tokens from our existing product UI."
- "Unify these five button implementations."
- "Plan a safe design-system migration."

Turn repeated UI decisions into a small system that teams can apply consistently. Inventory existing styles first. Define semantic color, type, spacing, radius, elevation, motion, and z-index tokens. Encode variants and states.

## Workflow

1. Inventory repeated components, local CSS values, interaction states, and inconsistent naming.
2. Separate foundations from components: tokens first, primitives second, composed patterns last.
3. Define token names by role and scale. Avoid naming a token after one current visual implementation.
4. Write component contracts: required props, variants, states, slots, responsive behavior, and accessibility expectations.
5. Migrate a representative route first, then publish conventions before broad replacement.
6. Record breaking changes, deprecated values, and ownership for future decisions.

## Guardrails

Do not create abstractions for a single use. Avoid a giant universal component with incompatible variants. Keep CSS escape hatches for real layout needs. Respect the existing technology and avoid framework rewrites disguised as token work.

## Handoff

Provide token map, primitive inventory, migration sequence, code examples, and a list of intentional exceptions.
