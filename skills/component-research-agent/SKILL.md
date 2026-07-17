---
name: component-research-agent
description: "This skill should be used when a team must choose between building a React component and adopting a library. Instruct the AI agent to research primary sources, compare fit and risk, and make an evidence-backed recommendation."
---

# Component research agent

Find the right React component approach before adding another dependency. Use curated lists to discover options, then verify each source where it actually lives.

## When to use this skill

Use when deciding build versus buy, comparing UI libraries, or looking for an accessible component pattern.

## What changes

| Before | After |
|---|---|
| "This library looks good" | Evidence-backed fit comparison |
| New package by default | Build, adapt, or adopt decision |
| Showcase-link research | License, maintenance, bundle, and a11y review |

## Example requests

- "Find an accessible command palette for Next.js."
- "Should we install a chart library or build this simple chart?"
- "Compare three React date pickers for this product."

Use component directories as discovery tools, never as proof that a dependency fits. Load plugin-root `references/tool-guides.md`, section awesome-react-components, for the evaluation rubric. Inspect actual package documentation, source, releases, license, and peer requirements.

## Workflow

1. Define the user job, required interactions, accessibility requirements, styling constraints, SSR/client boundary, and acceptable dependency cost.
2. Search the index for candidates, then visit each candidate's primary repository and documentation.
3. Compare maintenance signal, license, bundle footprint, peer dependencies, React and framework compatibility, keyboard behavior, customization, and escape hatches.
4. Prototype only the highest-value candidate when paper comparison cannot resolve risk.
5. Choose build, adopt, or adapt. Explain the decision in terms of project constraints, not popularity.
6. Record rejected candidates when a decision affects future architecture or licensing.

## Guardrails

Do not add a package from a showcase page alone. Avoid libraries that duplicate an existing project primitive. Treat unmaintained dependencies, unclear licenses, and inaccessible widgets as explicit risks.

## Handoff

Return requirement, shortlist, comparison table, recommendation, install impact, validation plan, and rejected alternatives.
