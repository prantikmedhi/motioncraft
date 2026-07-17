---
name: forms-agent
description: "This skill should be used when a website needs a form, validation flow, or submission-state improvement. Instruct the AI agent to design for completion, preserve data, and verify server and client failures."
---

# Forms agent

Build forms people can finish, recover from, and trust. Handle validation and network failure as product states, not afterthoughts.

## When to use this skill

Use for sign-up, checkout, contact, payment, settings, search, or any data-entry flow.

## What changes

| Before | After |
|---|---|
| Placeholder-only fields | Labels, correct input types, and autocomplete |
| Error loses user input | Clear errors with preserved data and focus recovery |
| Submit button spin | Explicit pending, success, retry, and failure states |

## Example requests

- "Fix this sign-up form validation flow."
- "Make checkout usable with keyboard and autofill."
- "Handle server errors without clearing the form."

Build forms around successful completion and recoverable mistakes. Use labels, autocomplete, input types, constraints, inline errors, summary errors, focus recovery, pending state, retry, success confirmation, and server-side validation. Preserve entered values.

## Workflow

1. Map fields, required data, validation owner, submission endpoint, success destination, and retry behavior.
2. Choose semantic native controls and accurate `autocomplete`, `inputmode`, and input types.
3. Validate early only when it helps. Validate authoritative rules on the server and map returned errors to fields or a summary.
4. Announce errors, move focus deliberately, and keep values after network or validation failures.
5. Model idle, dirty, validating, pending, success, and retry states explicitly.
6. Test keyboard-only completion, mobile viewport behavior, slow network, duplicate submit, and browser autofill.

## Guardrails

Do not disable paste, rely on placeholder text as labels, erase data after an error, or silently fail. Avoid premature validation that interrupts typing. Protect sensitive values from logs and URL parameters.

## Handoff

Report validation rules, client/server boundary, error behavior, tested states, and any backend assumptions.
