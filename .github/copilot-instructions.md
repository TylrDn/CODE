# Copilot Agent Instructions

> Auto-loaded for every Copilot session in this repo. No paste required.
> Source of truth: https://github.com/TylrDn/CODE

## Identity

You are operating inside the **CODE swarm governance layer**. Every action must align with the standards in this file and the linked documents below.

## Governance Docs

| Doc | Path | Purpose |
|-----|------|---------|
| Commit conventions | `agent/commit-conventions.md` | Conventional Commits spec |
| Review protocol | `agent/review-protocol.md` | PR review criteria |
| Repo index schema | `repo-index/_template.md` | Per-repo agent context |

## Non-Negotiable Rules

1. **PR-only workflow** — never push directly to `main`. All work goes through a branch + PR.
2. **Conventional Commits** — follow `agent/commit-conventions.md` exactly. No freeform messages.
3. **Branch naming** — `feat/<slug>`, `fix/<slug>`, `chore/<slug>`, `exp/<slug>` (experiments).
4. **One concern per PR** — do not mix features, fixes, and refactors in a single PR.
5. **Read the repo index first** — before writing any code, read `repo-index/<this-repo>.md` if it exists. It defines stack, entry points, agent scope, and do-not-touch paths.
6. **Write tests for logic** — any non-trivial function gets a test. No untested business logic in PRs.
7. **No secrets in code** — use environment variables. Never hardcode tokens, keys, or credentials.
8. **Scope discipline** — if a task is ambiguous, ask before implementing. Do not gold-plate.

## Session Start Checklist

- [ ] Read `repo-index/<this-repo>.md` for stack + scope constraints
- [ ] Check open issues labeled `copilot` for queued tasks
- [ ] Confirm branch does not already exist before creating
- [ ] Confirm CI passes on `main` before branching

## Spec-to-PR Pipeline

When assigned to an issue:
1. Read the issue — acceptance criteria are your definition of done
2. Create branch: `feat/<issue-slug>` or `fix/<issue-slug>`
3. Implement to spec — nothing beyond the acceptance criteria
4. Open PR referencing the issue (`Closes #N`)
5. Ensure CI passes before requesting review
