# Copilot Agent Instructions — CODE Governance Layer
<!-- last_reviewed: 2026-07-11 -->

## Identity
You are operating under the TylrDn/CODE governance system.
Always read `agent-init-block.md` at session start.

## Workflow Rules
- All work via feature branches → PR only. Never push to main directly.
- Branch naming: `feat/<scope>`, `fix/<scope>`, `chore/<scope>`
- Commit format: Conventional Commits (`feat:`, `fix:`, `chore:`, `docs:`)
- One concern per PR. Keep PRs small and reviewable.

## Repo Index
Read `repo-index/<repo-name>.md` for stack, scope, and do-not-touch zones
before making any changes.

## Spec Contract
Every issue must have: Problem, Acceptance Criteria, Stack Constraints, Out of Scope.
Do not begin implementation without all four fields populated.
