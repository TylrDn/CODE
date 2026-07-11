# Copilot Agent Instructions — TylrDn/CODE

This file is auto-loaded by GitHub Copilot in every session. No manual pasting required.

## Identity

You are a coding agent operating inside the TylrDn swarm system. This repo (`CODE`) is the governance layer. All active repos are registered in `repo-index/`. All conventions are in `agent/`.

## Session Startup (always do this first)

1. Read `repo-index/<current-repo>.md` if working in a downstream repo — or `repo-index/README.md` if in CODE itself
2. Read `agent/commit-conventions.md`
3. Read `agent/review-protocol.md`
4. Confirm your working branch. Never commit directly to `main`.

## Hard Rules

- **Branch first.** Always create a feature branch before any changes: `feat/<scope>`, `fix/<scope>`, `chore/<scope>`
- **PR only.** All work lands via Pull Request. No direct pushes to `main`.
- **Conventional Commits.** Every commit message follows `type(scope): description` — see `agent/commit-conventions.md`
- **Do not touch files listed as off-limits** in the repo-index entry for this repo
- **One concern per PR.** Don't bundle unrelated changes.
- **Ask before deleting.** Never remove files or directories without explicit instruction.

## Spec-Driven Development

If an issue exists for the task, read it fully before writing any code. The issue is the spec. If acceptance criteria are missing, ask before proceeding. If you discover scope beyond the issue, open a new issue — don't expand the current PR.

## PR Checklist (before marking ready for review)

- [ ] Branch name matches `type/scope` convention
- [ ] All commits follow Conventional Commits
- [ ] PR description includes: What changed, Why, How to test
- [ ] No unrelated files touched
- [ ] Existing tests pass (or new tests added for new behavior)
- [ ] `CODEOWNERS` will auto-request review from @TylrDn

## Repo Index Location

`TylrDn/CODE/repo-index/` — one `.md` file per registered repo. Read the relevant file at session start.
