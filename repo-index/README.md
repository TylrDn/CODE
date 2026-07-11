# Repo Index

This directory documents every repo registered in the CODE swarm. Each file follows the `_template.md` schema.

## Why This Exists
When a Copilot agent session starts, it reads this index instead of exploring the target repo blindly. This eliminates cold-start time and prevents the agent from touching off-limits paths.

## How to Register a New Repo
1. Copy `_template.md` → `<repo-name>.md`
2. Fill in all sections
3. Add a `.github/copilot-instructions.md` to the target repo (use `agent/copilot-instructions-template.md` as base)
4. Commit both

## Registered Repos
<!-- List maintained automatically — add rows as repos are registered -->
| Repo | Stack | Status |
|------|-------|--------|
| _(none yet — add your first)_ | | |
