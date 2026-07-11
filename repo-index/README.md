# Repo Index

Each file in this directory describes one registered repo in the CODE swarm.
Copilot reads the relevant file at session start to get stack context, scope constraints, and entry points — eliminating cold-start exploration time.

## How to register a new repo

1. Copy `_template.md` to `<repo-name>.md`
2. Fill in all fields
3. Commit to `main`
4. Add `.github/copilot-instructions.md` to the target repo (use `agent/copilot-instructions-template.md` as base)

## Registered repos

| Repo | Stack | Status |
|------|-------|--------|
| *(add rows as you register repos)* | | |

## Schema reference

See `_template.md` for the full field spec.
