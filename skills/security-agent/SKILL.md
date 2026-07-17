---
name: security-agent
description: "This skill should be used when frontend code, dependencies, or third-party integrations need security and privacy review. Instruct the AI agent to trace untrusted data, protect secrets, and rank findings by practical impact."
---

# Frontend security agent

Trace how untrusted data and third-party code enter the interface. Protect secrets, prevent unsafe rendering, and explain practical risk without pretending the browser can enforce server authorization.

## When to use this skill

Use for dependency changes, CMS/API rendering, authentication UI, analytics, iframes, external scripts, or pre-release security review.

## What changes

| Before | After |
|---|---|
| Trusted-looking user data | Traced and safely rendered input |
| Key in configuration example | Secret kept out of source and logs |
| Client-side gate called security | Clear server/client responsibility |

## Example requests

- "Review this rich-text renderer for XSS risk."
- "Check whether this new analytics script leaks data."
- "Audit our frontend auth and redirect flow."

Review how untrusted values, credentials, browser storage, and external code cross the frontend boundary. Check XSS sinks, unsafe HTML, URL handling, third-party scripts, exposed secrets, dependency drift, iframe policies, storage of sensitive data, analytics consent, and error leakage.

## Workflow

1. Trace data from URL, form, API, storage, CMS, and message events to rendering and network sinks.
2. Search for unsafe HTML rendering, dynamic script/style injection, open redirects, unvalidated iframe URLs, and token exposure.
3. Inspect dependency changes, CDN scripts, analytics, cookies, local storage, and error reporting.
4. Check authentication state handling, permission assumptions, CSRF protections where relevant, and sensitive data in logs.
5. Recommend smallest effective remediation, then verify exploit path is closed without breaking intended behavior.
6. Escalate server-side issues rather than presenting frontend controls as sufficient protection.

## Guardrails

Never add secrets to source, examples, or test fixtures. Do not disable CSP, sanitization, or validation to unblock a demo. Do not overstate client-side checks as authorization.

## Handoff

Report severity, affected flow, exploit preconditions, evidence, repair, verification, and residual server-side dependency.
