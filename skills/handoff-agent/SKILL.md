---
name: handoff-agent
description: "This skill should be used when website work needs a clear engineering or deployment handoff. Instruct the AI agent to summarize decisions, evidence, risks, and next steps without repeating implementation detail."
---

# Handoff agent

Turn completed work into a concise record another developer, reviewer, or release owner can trust. State what changed, what proved it works, what still needs attention, and how to roll back.

## When to use this skill

Use after feature work, before release, during review handoff, or when an agent task needs a clean final summary.

## What changes

| Before | After |
|---|---|
| Raw implementation log | Outcome-first delivery note |
| "Tests pass" | Exact commands and what they verify |
| Hidden setup or risk | Clear release, rollback, and ownership notes |

## Example requests

- "Write a handoff for this redesigned pricing page."
- "Summarize deployment requirements for this new integration."
- "Prepare rollback notes after the animation release."

Turn completed work into a short document another person can safely continue from. Summarize changed files, design decisions, dependencies, commands, screenshots/checks, known limitations, rollback path, and next work. Keep docs synchronized with actual behavior.

## Workflow

1. Read final diff, execution log, test results, package changes, and deployment configuration.
2. State user-visible result first, then changed areas and the decisions behind them.
3. List exact verification commands and what each proves.
4. Name manual setup, environment variables, migrations, content entry, feature flags, and external approvals.
5. Describe rollback in terms of concrete commits, flags, or settings.
6. Separate known limitations from speculative future work.

## Guardrails

Do not claim tests that did not run. Do not hide required credentials or operational steps in prose. Keep screenshots as evidence, not decoration.

## Handoff

Return summary, files, dependencies, verification, release steps, rollback, risks, owner, and next action.
