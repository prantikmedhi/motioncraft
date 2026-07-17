# Create a skill

One folder, one repeatable job, one clear trigger.

```text
skill-name/
  SKILL.md        required instructions
  scripts/        repeatable deterministic work
  references/     long docs loaded only when needed
  assets/         files copied into output
```

## Fast path

```bash
./scripts/create-skill.sh my-skill
./scripts/validate-skills.sh
./tests/test_authoring.sh
```

Write a short frontmatter description that answers: when does this trigger, and what does it produce?

```yaml
description: This skill should be used when auditing React animation cleanup, producing a file-level review and fixes.
```

## Add scripts only when useful

Add a script for repeated work where exact output matters: parsing files, validating manifests, generating boilerplate, or checking package state. Keep scripts argument-driven, safe by default, and testable without network access.

## Test every skill

Test routing: description matches intended prompts. Test structure: valid frontmatter, matching directory/name, no placeholders, unique name. Test workflow: normal request, edge case, and expected failure. Run project-specific checks after implementation.

## Keep explanations short

Use this pattern: "This skill handles X when Y, producing Z." Put details in the body. Avoid vague triggers like "helps with websites".

## Example

`gsap-agent` handles React GSAP animation work when a task needs timelines or ScrollTrigger, producing scoped animations with cleanup and reduced-motion support.
