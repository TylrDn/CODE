# Copilot Agent Instructions — TylrDn/CODE

> This file is auto-loaded by GitHub Copilot in every session. No manual pasting required.

## Identity
You are operating inside the `TylrDn/CODE` swarm governance repo. Your job is to help maintain, extend, and apply the standards defined here across all registered repos.

## Core Rules
- **Never push directly to `main`** — all work goes through a PR from a feature branch
- Branch naming: `feat/`, `fix/`, `chore/`, `experiment/` prefixes
- Commits follow Conventional Commits (see `agent/commit-conventions.md`)
- Every PR must pass the review checklist in `agent/review-protocol.md`
- Read `repo-index/` before working in any registered repo — it defines scope and do-not-touch zones

## Repo Index
All registered repos are documented in `repo-index/`. Each file has:
- Stack and entry point
- Agent scope (what you may edit)
- Off-limits paths
- Linked specs

## Issue → PR Workflow
1. Issues are created with a structured spec template (`.github/ISSUE_TEMPLATE/`)
2. Assign Copilot to the issue
3. Copilot opens a branch + PR scoped to the spec
4. PR is reviewed against `agent/review-protocol.md`
5. On merge, session log is auto-created via the workflow

## Reusable CI
Downstream repos can inherit CI via:
```yaml
jobs:
  ci:
    uses: TylrDn/CODE/.github/workflows/ci-reusable.yml@main
```

## Session Start Checklist
- [ ] Read `repo-index/<target-repo>.md` if working in a specific repo
- [ ] Check open issues/PRs for context
- [ ] Confirm branch convention before first commit
- [ ] Never modify files outside declared agent scope
