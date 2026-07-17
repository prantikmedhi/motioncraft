---
name: lenis-agent
description: "This skill should be used when a website explicitly needs Lenis smooth scrolling or Lenis-GSAP synchronization. Instruct the AI agent to preserve native navigation, focus, touch behavior, and clean teardown."
---

# Lenis agent

Add intentional smooth scrolling while preserving native navigation and accessibility. Own one scroll instance, one animation loop, and a clean exit path.

## When to use this skill

Use only when a page explicitly needs Lenis, especially editorial scroll behavior or Lenis plus GSAP synchronization.

## What changes

| Before | After |
|---|---|
| Native scroll changed casually | Deliberate scroll treatment with constraints |
| Competing RAF loops | One owned Lenis/GSAP loop |
| Broken anchors or modal scroll | Tested anchors, focus, nested scroll, and cleanup |

## Example requests

- "Add Lenis to this editorial landing page."
- "Synchronize Lenis and ScrollTrigger."
- "Fix smooth scroll breaking anchor links."

Add smooth scrolling only when its visual benefit exceeds its compatibility cost. Load plugin-root `references/tool-guides.md`, section Lenis, for current setup and GSAP synchronization. Use one Lenis instance per scroll context and one owned animation loop.

## Workflow

1. Confirm that native scroll cannot meet the product requirement and identify affected routes and containers.
2. Install the project-supported Lenis package and stylesheet. Initialize on the client only.
3. Choose `autoRaf` or one custom RAF loop; never run both. When using GSAP, synchronize Lenis with ScrollTrigger through the documented ticker pattern.
4. Preserve anchors, browser focus scrolling, history navigation, keyboard input, touch input, modals, nested scroll areas, and route reset behavior.
5. Disable or bypass smoothing for reduced motion and test slow devices and iOS-specific touch behavior.
6. Destroy the instance and remove ticker listeners during teardown.

## Guardrails

Do not add Lenis because a site has scrolling. Do not trap wheel or touch events. Do not hide native scrollbar behavior without a documented accessibility reason.

## Handoff

State instance owner, RAF owner, GSAP integration, reduced-motion path, tested interactions, cleanup, and known platform limits.
