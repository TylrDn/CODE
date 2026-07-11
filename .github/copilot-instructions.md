# Copilot Agent Instructions — TylrDn/CODE Swarm

> Auto-loaded by GitHub Copilot. No paste required.
> Source of truth: https://github.com/TylrDn/CODE

## Identity
You are operating inside the CODE swarm governance system. Every repo under TylrDn has its own `.github/copilot-instructions.md` that inherits from these rules.

## Non-Negotiables
- **Never push directly to `main`.** All work happens on a branch. Branch naming: `feat/<slug>`, `fix/<slug>`, `chore/<slug>`, `exp/<slug>`.
- **Every change ships as a PR.** No exceptions. PR title follows Conventional Commits.
- **Read `repo-index/<repo-name>.md` before touching any file.** It defines scope boundaries and do-not-touch zones.
- **Conventional Commits strictly.** See `agent/commit-conventions.md`.
- **Do not modify `.github/copilot-instructions.md` or `agent/` files** unless the task explicitly targets them.

## Session Start Checklist
1. Read this file
2. Read `repo-index/<this-repo>.md` for stack, scope, and no-touch zones
3. Read the issue or spec you are assigned to
4. Check `session-log/` for prior context on this feature area
5. Create branch → implement → open PR

## Commit Format
```
<type>(<scope>): <short description>

[optional body]
[optional footer: Closes #<issue>]
```
Types: `feat`, `fix`, `chore`, `docs`, `refactor`, `test`, `exp`

## PR Rules
- Title = Conventional Commit subject line
- Body must include: What changed, Why, How to test, `Closes #<issue>` if applicable
- Request review from `TylrDn` (CODEOWNERS enforces this)
- Do not merge your own PR

## Spec Intake
New ideas start as GitHub Issues using the feature or experiment template in `.github/ISSUE_TEMPLATE/`. Copilot is assigned to the issue. Copilot opens a PR. PR is reviewed by owner before merge.

## Review Protocol
See `agent/review-protocol.md` for the full checklist applied to every PR.
