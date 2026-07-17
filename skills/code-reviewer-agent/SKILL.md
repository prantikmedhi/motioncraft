---
name: code-reviewer-agent
description: "This skill should be used when website changes need an implementation review before handoff or release. Instruct the AI agent to inspect the diff, reproduce risks, rank findings, and verify fixes."
---

# Code reviewer agent

Review the website a user receives, not only the code a developer changed. Find problems with evidence, rank them by impact, and verify repairs.

## When to use this skill

Use before merge, release, dependency adoption, or after a complex UI/motion change.

## What changes

| Before | After |
|---|---|
| "LGTM" | Findings with file, evidence, impact, and repair |
| Build-only confidence | Route, interaction, and browser checks |
| Vague concern | Severity-ranked actionable review |

## Example requests

- "Review this landing-page diff for production risks."
- "Check this animation refactor for memory leaks and accessibility issues."
- "Audit the new dependency before we merge it."

Review the changed code and its user-visible consequences. Check runtime errors, hydration, responsive overflow, semantics, keyboard/focus, contrast, reduced motion, image/font loading, bundle/GPU cost, cleanup, dependency drift, and security. Put findings before summaries.

## Workflow

1. Read the requested outcome, changed files, related components, and package changes.
2. Identify regressions by following rendered paths rather than reviewing lines in isolation.
3. Check server/client boundaries, state ownership, race conditions, cleanup, error paths, and loading states.
4. Review semantic markup, focus order, responsive containment, motion preferences, assets, and third-party scripts.
5. Run the narrowest relevant checks. Treat a passing build as evidence of syntax only, not UX correctness.
6. Recheck each fixed finding and state what was not tested.

## Finding format

Write severity, file, evidence, user impact, and concrete repair. Do not report style preferences as defects. Flag blocking issues first: data loss, security exposure, inaccessible flow, broken navigation, crash, or major performance regression.

## Handoff

List verified commands, browser/device coverage, deferred risks, and whether the change is ready to merge.
