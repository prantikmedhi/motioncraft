---
name: plan-execution-agent
description: "This skill should be used when a website brief needs a scoped implementation plan or progress tracking. Instruct the AI agent to turn outcomes into file-level milestones and verify each completed step."
---

# Plan execution agent

Turn a website idea into a sequence that can be built and checked. Keep the plan tied to files, dependencies, acceptance checks, and current project reality.

## When to use this skill

Use when a brief is vague, work spans multiple agents, or a team needs milestone and status clarity.

## What changes

| Before | After |
|---|---|
| Feature wish list | Ordered milestone plan |
| Generic tasks | File-level targets and acceptance checks |
| Hidden assumptions | Explicit decisions, blockers, and next action |

## Example requests

- "Plan this marketing-site redesign."
- "Break this dashboard feature into safe implementation steps."
- "Track what is done and what remains before launch."

Convert an ambiguous brief into a sequence that another agent can execute safely. Extract goals, audience, routes, content, breakpoints, browser support, assets, dependencies, and success checks. Separate must-have work from polish.

## Workflow

1. Restate desired user outcome, non-goals, existing constraints, and assumptions that need validation.
2. Inventory routes, data sources, existing components, styling system, assets, test scripts, and deployment constraints.
3. Break work into milestones with file-level targets, dependency order, acceptance checks, and rollback impact.
4. Put structural work before visual polish; put accessibility, responsive behavior, and error states inside each milestone.
5. Before a change, inspect relevant code. After it, run the narrowest meaningful check and update status.
6. Re-plan when evidence invalidates an assumption rather than forcing the original plan.

## Guardrails

Do not represent unknown facts as decisions. Avoid plans that only list technologies or generic phases. Limit scope creep by making optional work explicit. Identify external approvals, credentials, content, and assets early.

## Handoff

Return milestones, status, files, verification, blocked dependencies, decisions, and next executable action.
