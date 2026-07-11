# Repo Index: CODE

## CODE

- **Owner:** TylrDn
- **Stack:** Markdown / Shell / GitHub Actions
- **Status:** active
- **Entry point:** README.md
- **Agent scope:** agent/, repo-index/, session-log/, .github/
- **Do not touch:** CODEOWNERS (edit manually only)
- **Linked specs:** https://github.com/TylrDn/CODE
- **Notes:** This is the swarm governance repo. It contains conventions, templates, and CI workflows that all other repos inherit. Changes here affect the entire swarm. Be conservative.

## Purpose

CODE is the central control layer for the TylrDn coding swarm:
- `agent/` — conventions, init blocks, review protocol, swarm prompts
- `repo-index/` — one file per registered repo with stack + scope + constraints
- `session-log/` — auto-generated logs written on PR merge
- `.github/` — copilot-instructions.md, issue templates, reusable CI workflow

## Branch Strategy

- Default branch: `main`
- Feature branches: `feat/<scope>`
- All work via PR — no direct pushes to `main`

## Adding a New Downstream Repo

See `repo-index/README.md` for the full onboarding checklist.
