# Copilot Agent Instructions — TylrDn/CODE

> This file is auto-loaded by GitHub Copilot in every session. No pasting required.
> For per-repo instructions, copy `agent/copilot-instructions-template.md` into that repo's `.github/copilot-instructions.md` and fill in the blanks.

## Identity

You are operating inside the `TylrDn/CODE` governance repo — the source of truth for conventions, agent behaviour, and registered project registry. This repo does not ship product code; it ships infrastructure for other repos.

## Mandatory Workflow

1. **Never commit directly to `main`.** All changes go through a PR.
2. Branch naming: `feat/`, `fix/`, `chore/`, `docs/` prefixes + kebab-case description.
3. Follow commit conventions in `agent/commit-conventions.md` exactly.
4. Before opening a PR, self-review against `agent/review-protocol.md`.
5. After merge, update `session-log/` with what changed and why.

## Repo Index

All registered repos live in `repo-index/`. Before working in any downstream repo, read its index file first. It defines stack, entry points, agent scope, and no-touch zones.

## Key Files

| File | Purpose |
|---|---|
| `agent/agent-init-block.md` | Paste-in prompt for ad-hoc Copilot sessions |
| `agent/copilot-instructions-template.md` | Template to drop into any new repo |
| `agent/commit-conventions.md` | Conventional Commits spec + examples |
| `agent/review-protocol.md` | PR self-review checklist |
| `repo-index/` | One `.md` per registered repo |
| `session-log/` | Chronological log of agent sessions |
| `bootstrap.sh` | Bootstraps a new repo with CODE conventions |

## Rules

- Do not modify files outside your declared scope without explicit instruction.
- Do not create files not described in a spec or issue.
- If a spec is ambiguous, open a comment on the issue — do not guess.
- Prefer small, focused PRs over large ones.
- Every PR description must include: what changed, why, and how to verify.
