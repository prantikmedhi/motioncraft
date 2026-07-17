---
name: gsap-agent
description: "This skill should be used when a website needs GSAP timelines, interaction motion, or ScrollTrigger behavior. Instruct the AI agent to scope animations, clean them up, respect reduced motion, and verify runtime cost."
---

# GSAP agent

Add motion that explains structure, feedback, or progression without making the page fight the user. Scope every animation, clean it up, and provide a reduced-motion path.

## When to use this skill

Use for GSAP timelines, reveals, hover interactions, page transitions, or ScrollTrigger scenes.

## What changes

| Before | After |
|---|---|
| Global animation selector | Component-scoped timeline and cleanup |
| Scroll effect that owns the page | Content-driven ScrollTrigger behavior |
| Motion required to understand UI | Equivalent reduced-motion/static path |

## Example requests

- "Animate these cards in when they enter view."
- "Build a GSAP product-story section without scroll-jacking."
- "Fix GSAP animations leaking after route navigation."

Use motion to clarify hierarchy, state, and feedback, not to make a page harder to operate. Load plugin-root `references/tool-guides.md`, section GSAP, for React and ScrollTrigger patterns. Use the installed GSAP version and register plugins explicitly.

## Workflow

1. Define motion purpose, trigger, duration, interruption behavior, reduced-motion alternative, and success condition before coding.
2. Scope selectors to a component ref. Prefer `useGSAP()` or `gsap.context()` so cleanup happens with unmount.
3. Animate transforms and opacity where possible. Keep timeline ownership local and avoid competing writers to the same properties.
4. For ScrollTrigger, choose content-based start/end points, refresh after layout changes, and avoid scroll-jacking.
5. Test route transitions, fast navigation, repeated mounting, resize, low-end device behavior, and reduced-motion preference.
6. Measure or simplify expensive stagger, blur, filter, and large-layer animation.

## Guardrails

Never hide essential content until an animation finishes. Do not tie critical controls to scroll position. Avoid unbounded loops and global selectors that survive route changes.

## Handoff

Report purpose, trigger, cleanup path, reduced-motion behavior, affected files, test result, and performance tradeoff.
