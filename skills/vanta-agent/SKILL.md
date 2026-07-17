---
name: vanta-agent
description: "This skill should be used when a website needs a Vanta animated background as optional visual enhancement. Instruct the AI agent to initialize it safely, provide a static fallback, and clean up renderer resources."
---

# Vanta agent

Add an ambient Vanta background without sacrificing readability, performance, or control. Build the static page first, then treat WebGL as optional enhancement with full cleanup.

## When to use this skill

Use when a page needs an animated Vanta background, interactive ambient effect, or safe fallback for an existing Vanta implementation.

## What changes

| Before | After |
|---|---|
| Moving background as core page design | Readable HTML and CSS fallback first |
| Effect created on every render | One client-owned instance with destroy path |
| Mobile motion by default | Reduced-motion and low-power behavior |

## Example requests

- "Add a Vanta waves background behind this hero."
- "Fix Vanta leaking canvas instances on route changes."
- "Provide a non-WebGL fallback for this birds effect."

Use Vanta as a background treatment behind usable HTML content, never as the page itself. Load plugin-root `references/tool-guides.md`, section Vanta, for integration examples. Verify the host element, renderer dependency, and client-only boundary before initialization.

## Workflow

1. Confirm that a static color, gradient, or image cannot meet the visual requirement at lower cost.
2. Build the host container with explicit dimensions, stable positioning, readable foreground content, and CSS fallback first.
3. Check reduced-motion preference, low-power/mobile constraints, visibility, and WebGL availability before loading the effect.
4. Dynamically initialize one effect against a ref. Keep the effect instance in component ownership and pass the installed renderer dependency when needed.
5. Tune options for contrast, pointer interaction, frame cost, and mobile behavior; disable touch interaction when it harms scrolling.
6. Call `destroy()` on unmount and verify remounts, route changes, resize, and hidden-tab behavior.

## Guardrails

Do not place low-contrast text directly on moving effects. Do not force animation for reduced-motion users. Avoid full-page Vanta effects on content-heavy or low-end mobile pages.

## Handoff

Report effect, host, fallback, options, lifecycle, reduced-motion behavior, tested devices, and performance result.
