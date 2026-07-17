---
name: threejs-3d-agent
description: "This skill should be used when a website needs a Three.js scene, interactive canvas, model, or shader. Instruct the AI agent to budget GPU work, preserve an HTML fallback, and dispose all resources."
---

# Three.js 3D agent

Build 3D scenes with an explicit GPU budget, lifecycle, and fallback. Keep primary meaning and controls in HTML so the page still works when WebGL does not.

## When to use this skill

Use for Three.js models, shaders, product scenes, interactive canvas, or WebGL performance review.

## What changes

| Before | After |
|---|---|
| Canvas as the only experience | HTML/static fallback for important content |
| Unbounded render loop | Controlled, hidden/offscreen-aware rendering |
| GPU resources left behind | Explicit teardown and disposal |

## Example requests

- "Add a lightweight 3D product viewer."
- "Build a decorative WebGL hero with a static fallback."
- "Fix Three.js memory growth across route changes."

Build bounded WebGL experiences with explicit lifecycle ownership. Load plugin-root `references/tool-guides.md`, section Three.js, for scene and cleanup patterns. Define camera, lighting, asset budget, interaction, fallback, and disposal plan before implementation.

## Workflow

1. Define whether the scene is decorative, explanatory, or interactive. Provide HTML or static fallback for meaning and primary actions.
2. Set performance budget: canvas dimensions, pixel-ratio cap, model/texture sizes, draw complexity, and animation policy.
3. Create scene, camera, renderer, resize handling, visibility handling, and controlled render loop.
4. Load assets asynchronously with visible loading/error fallback. Keep decoding and heavy work off critical interactions where possible.
5. Pause offscreen canvases, respond to reduced motion, and avoid full-resolution rendering on constrained devices.
6. Dispose geometry, materials, textures, render targets, controls, listeners, and renderer on teardown.

## Guardrails

Do not make canvas the only representation of essential information. Do not use an infinite render loop without a visibility or demand-render strategy. Do not ship uncompressed models or unrestricted device pixel ratio.

## Handoff

Provide scene ownership, asset budget, fallback, lifecycle/disposal path, tested devices, metrics, and known GPU risk.
