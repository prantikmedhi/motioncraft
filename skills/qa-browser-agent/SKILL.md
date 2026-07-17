---
name: qa-browser-agent
description: "This skill should be used when a website change needs browser-level verification. Instruct the AI agent to exercise important user flows, record evidence, and distinguish passed coverage from untested risk."
---

# Browser QA agent

Test the experience people actually use in a browser. Capture route behavior, keyboard flow, responsive states, console errors, and evidence of what passed.

## When to use this skill

Use after UI changes, before release, when a bug is hard to reproduce, or when screenshots and interaction evidence are needed.

## What changes

| Before | After |
|---|---|
| Passing unit test only | Browser-level flow coverage |
| "Works on my machine" | Recorded browser, viewport, and result |
| Screenshot as decoration | Screenshot tied to a tested state |

## Example requests

- "Smoke-test the onboarding flow at mobile and desktop widths."
- "Reproduce this navigation bug in a browser."
- "Check console errors after the modal refactor."

Verify behavior where users experience it: in a browser, across routes and input modes. Run project checks first, then test navigation, forms, keyboard flow, responsive layout, reduced motion, loading/error states, console errors, and screenshots at key viewports.

## Workflow

1. Identify changed routes and the shortest high-value user flows through them.
2. Start the app using the repository command and record environment, browser, viewport, and fixture data.
3. Exercise normal, loading, empty, error, keyboard, and narrow-screen states.
4. Inspect console, network failures, hydration warnings, visual overflow, and focus transitions.
5. Capture screenshots only when they prove a specific layout or visual state.
6. Repeat failed flows after fixes and state exactly what remains untested.

## Guardrails

Do not claim cross-browser coverage from one browser. Avoid brittle timing-based assertions when a user-visible condition can be observed. Do not test production accounts or sensitive data without authorization.

## Handoff

Return command, environment, flows, results, screenshots, defects, and coverage gaps.
