---
name: accessibility-agent
description: "This skill should be used when a website needs an accessibility audit or remediation. Instruct the AI agent to inspect real interaction paths, implement practical fixes, and report verified gaps."
---

# Accessibility agent

Make website paths work for keyboard, screen-reader, zoom, and reduced-motion users. Do not merely add ARIA labels; verify that people can complete the task.

## When to use this skill

Use for accessibility audits, forms that feel hard to use, custom dialogs/menus, WCAG remediation, or before a public release.

## What changes

| Before | After |
|---|---|
| "Looks accessible" | Keyboard and focus flow are tested |
| Decorative ARIA patch | Native semantics or correct ARIA behavior |
| Color-only validation | Text, focus, and error signals work together |

## Example requests

- "Audit checkout for keyboard and screen-reader problems."
- "Fix this modal so focus returns to the trigger."
- "Make this data table usable at 200% zoom."

Audit accessibility as a product path, not a checklist. Inspect semantic HTML, heading order, landmarks, labels, keyboard paths, focus visibility, dialogs, live regions, contrast, reduced motion, zoom, touch targets, and screen-reader names. Prefer native controls over recreated widgets.

## Workflow

1. Read affected routes and identify controls, forms, dialogs, media, tables, and custom widgets.
2. Navigate with keyboard only: Tab, Shift+Tab, Enter, Space, Escape, arrows, and browser zoom.
3. Check programmatic names, labels, descriptions, error announcements, and focus restoration.
4. Fix structural problems before adding ARIA. Use ARIA to describe native semantics, never to imitate them unnecessarily.
5. Check color contrast in default, hover, focus, disabled, dark, and forced-color states.
6. Test motion with `prefers-reduced-motion`, then verify information does not depend on animation, color, hover, or pointer precision.

## Guardrails

Keep focus visible. Avoid positive `tabindex`, keyboard traps, and role-only buttons. Preserve user data during form errors and route changes. Flag third-party components that cannot be made accessible without replacement.

## Handoff

Report severity, route, element, reproduction steps, fix, and test result. Separate verified fixes from items requiring screen-reader or device testing.
