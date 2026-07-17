---
name: skill-authoring-agent
description: "This skill should be used when creating, splitting, documenting, or validating reusable website-agent skills. Instruct the AI agent to define one repeatable job, scaffold it, add guardrails, and run structural tests."
---

# Skill authoring agent

Create skills that another AI agent can route to and execute without guessing. Keep the description concise, then use the long body for real workflow, tools, guardrails, examples, and tests.

## When to use this skill

Use when adding a specialist agent, splitting an overloaded one, documenting a repeatable task, or validating skill quality.

## What changes

| Before | After |
|---|---|
| Generic agent prompt | One repeatable job with a clear trigger |
| Instructions hidden in chat | Versioned `SKILL.md`, references, and scripts |
| No regression check | Scaffold, structure validator, and test matrix |

## Example requests

- "Create a skill for reviewing animation performance."
- "Split our generic design agent into focused specialists."
- "Validate every skill before publishing this plugin."

Create one skill per repeatable job. Write a precise trigger in frontmatter: task, tool, artifact, or failure mode. Keep the overview short, then make the operating body detailed enough that another agent can complete the work without rediscovering the process.

## Workflow

1. Collect three real prompts the skill must handle.
2. Define inputs, outputs, tools, safety limits, and verification for those prompts.
3. Run `scripts/create-skill.sh <name>` from plugin root.
4. Replace the template with workflow steps and tool-specific guardrails.
5. Add a script when the same transformation would otherwise be rewritten.
6. Add a test case for normal, edge, and failure paths.
7. Run `scripts/validate-skills.sh` and `tests/test_authoring.sh`.

## Writing standard

Use imperative instructions. Explain what to inspect, what decisions to make, what tools are safe, what must not happen, how to verify success, and what to report. Keep `description` to two or three complete sentences: trigger, working method, expected output. Move long API material into `references/`; keep enough procedure in `SKILL.md` to make routing and execution reliable.

## Resource decision

Add `scripts/` for deterministic transformations, validators, generators, or repeat commands. Add `references/` for API notes, policy, schema, and detailed examples loaded only when relevant. Add `assets/` only for files intended to be copied into outputs. Do not add empty folders merely to make a skill look complete.

## Test matrix

Test routing with prompts that should trigger and prompts that should not. Test structure: folder/name match, valid frontmatter, no placeholder, unique skill name. Test normal workflow, edge case, and expected failure. Record command output and update the skill when real use reveals a missing guardrail.

## Brief explanation format

Write each skill description as: "Handles [job] when [trigger], producing [output]." Keep it specific enough that a router can select it without reading the full file.

Read plugin-root `docs/CREATE_SKILLS.md` for examples, templates, and test rules.
