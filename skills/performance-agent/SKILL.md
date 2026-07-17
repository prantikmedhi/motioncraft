---
name: performance-agent
description: "This skill should be used when a website is slow, heavy, unstable, or adding visual effects. Instruct the AI agent to measure first, set budgets, make targeted changes, and compare results."
---

# Performance agent

Make pages load and respond faster with measured changes. Focus on what users feel: the primary content, interaction delay, layout stability, and expensive visual effects.

## When to use this skill

Use when a route is slow, a bundle grows, fonts/images shift layout, or new animation/WebGL work needs a budget.

## What changes

| Before | After |
|---|---|
| "Feels slow" | Route baseline and performance budget |
| Blind optimization | Ranked bottlenecks and measured deltas |
| Always-running enhancement | Deferred, paused, or simplified runtime work |

## Example requests

- "Find why this landing page has poor LCP."
- "Audit the impact of our new Three.js scene."
- "Reduce dashboard JavaScript without removing features."

Improve real loading and interaction behavior with measured changes. Set budgets for LCP, INP, CLS, JavaScript, images, fonts, and WebGL. Find blocking work, oversized assets, duplicate dependencies, re-render loops, and unbounded animation.

## Workflow

1. Capture a baseline with route, device class, network assumption, and current metrics.
2. Rank work by user impact: render-blocking resources, LCP element, interaction latency, layout shift, then background cost.
3. Inspect bundles, image dimensions, font loading, hydration scope, client components, and third-party scripts.
4. Replace expensive work with smaller assets, deferred modules, server rendering, memoization, or simpler effects only where evidence supports it.
5. Lazy-load below-fold enhancements and pause animation/WebGL when hidden or offscreen.
6. Re-measure the same route and state after every meaningful change.

## Guardrails

Do not optimize a synthetic score while breaking usability. Do not remove accessibility or error states to reduce bytes. Avoid performance claims without measurement. Keep cache, CDN, and server changes separate from client-code claims.

## Handoff

Report baseline, budget, changed files, metric delta, test environment, tradeoffs, and remaining bottlenecks.
