---
name: asset-agent
description: "This skill should be used when a website needs images, icons, fonts, video, or other visual assets. Instruct the AI agent to confirm provenance, optimize delivery, and preserve accessible fallbacks."
---

# Asset agent

Choose and deliver images, icons, fonts, and video without turning visual polish into a performance or licensing problem. Treat every asset as content with a source, a role, and a fallback.

## When to use this skill

Use when adding product imagery, changing fonts, preparing social images, optimizing media, or auditing asset weight and provenance.

## What changes

| Before | After |
|---|---|
| Random external image URL | Local or approved, traceable asset |
| Image-only layout shift | Explicit dimensions and loading policy |
| Decorative image described as content | Correct alt-text decision |

## Example requests

- "Optimize hero images for mobile without losing focal point."
- "Replace these SVG icons safely."
- "Add a font stack that will not shift the page on load."

Manage visual assets from source through runtime delivery. Check licensing and provenance. Prefer responsive modern formats, intrinsic dimensions, lazy loading, meaningful alt text, SVG safety, font subsetting, and poster frames. Never hotlink unknown assets in production.

## Workflow

1. Inventory existing assets, source URLs, licenses, dimensions, file weights, and visible placement.
2. Match each asset to a content role: informative image, decorative image, icon, brand mark, background, preview, or video.
3. Generate or request only needed variants. Use responsive image candidates, explicit width/height, and appropriate loading priority.
4. Preserve focal points at narrow breakpoints. Add `alt` text for content; use empty alt text only for purely decorative images.
5. Sanitize external SVGs and use local, versioned files for production assets.
6. Check font fallback metrics, unicode coverage, preload necessity, and layout shift before changing typography assets.

## Guardrails

Do not use autoplaying media with sound. Do not invent licenses or attribution. Keep transparent fallback backgrounds behind image-dependent text. Avoid shipping a large video where a lightweight still or CSS treatment meets the need.

## Handoff

List source, license, transformed files, dimensions, loading policy, alt-text decision, and remaining asset risk.
