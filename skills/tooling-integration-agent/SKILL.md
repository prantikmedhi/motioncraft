---
name: tooling-integration-agent
description: "This skill should be used when a website task requires Vanta, GSAP, Lenis, React Bits, Three.js, Magic MCP, or React component research. Instruct the AI agent to select the smallest fit, integrate it safely, and verify fallbacks and cleanup."
---

# Tooling integration agent

Choose the smallest external tool that solves the requested web problem, then make its cost and lifecycle visible. This agent connects tool-specific specialists to practical integration checks.

## When to use this skill

Use whenever a task names Vanta, GSAP, Lenis, React Bits, Three.js, Magic MCP, or a React component library.

## What changes

| Before | After |
|---|---|
| Tool added because it sounds useful | Tool selected for a concrete capability |
| Dependency dropped into a route | Isolated integration with fallback and cleanup |
| Version assumption | Installed-version and framework check |

## Example requests

- "Which tool should we use for a subtle animated background?"
- "Add smooth scrolling without breaking the modal."
- "Compare native CSS, GSAP, and React Bits for this interaction."

Coordinate third-party frontend tools without letting them take over the application. Load plugin-root `references/tool-guides.md` for the named source. Inspect target package manager, framework, rendering mode, installed versions, and existing primitives before changing dependencies.

## Selection workflow

1. Restate user need as capability: decorative background, timeline motion, smooth scroll, 3D scene, component pattern, generated component, or library discovery.
2. Check whether native CSS/React or an existing dependency already solves it.
3. Choose one tool with the narrowest dependency and runtime cost. Explain why alternatives were rejected.
4. Verify license, maintenance, compatible version, server/client boundary, build tooling, and bundle impact.
5. Integrate in a small isolated component or module with explicit ownership and cleanup.
6. Add fallback, reduced-motion, error, and loading behavior before visual polish.

## Verification workflow

Run static checks, the target route, browser interaction flow, resize, remount, reduced motion, and low-resource behavior. For generated or copied components, inspect every import and package change. For WebGL or animation, measure runtime cost and test hidden/offscreen cleanup.

## Guardrails

Do not add dependencies to satisfy a vague aesthetic request. Do not clone repositories into app source when package installation or adaptation is sufficient. Never expose API keys. Keep core content usable with JavaScript enhancement disabled where realistic.

## Handoff

Report source/version, reason for selection, files, dependency changes, fallback, cleanup, checks, and residual risk.
