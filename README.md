# CODE

Central governance repository for all TylrDn projects.

## Overview

This repo is the source of truth for conventions, agent workflow standards, and architecture decisions across the TylrDn GitHub account. All other repos inherit from it.

---

## Entry Points

There are two entry points depending on what you're doing:

| Situation | What to use |
|---|---|
| **Setting up a new repo** | Copy the Copilot instructions template (see below) |
| **Starting an agent session** | Paste [`agent/agent-init-block.md`](agent/agent-init-block.md) into the chat |

---

## Bootstrap a New Repo

Get any new repo inheriting TylrDn conventions in one step.

### Automated (recommended)

```bash
curl -fsSL https://raw.githubusercontent.com/TylrDn/CODE/main/bootstrap.sh | bash -s -- <owner/repo-name>
```

This copies `.github/copilot-instructions.md` into your target repo directory and substitutes the repo name automatically.

### Manual

1. Copy [`agent/copilot-instructions-template.md`](agent/copilot-instructions-template.md)
2. Place it at `.github/copilot-instructions.md` in your new repo
3. Replace `{{REPO_NAME}}` with your repo name (e.g. `TylrDn/mobile-forge`)
4. Commit and push

GitHub Copilot will immediately pick up all commit, branch, and PR conventions.

---

## Agent Docs

| File | Purpose |
|---|---|
| [`agent/copilot-instructions-template.md`](agent/copilot-instructions-template.md) | Drop-in `.github/copilot-instructions.md` for any new repo |
| [`agent/agent-init-block.md`](agent/agent-init-block.md) | Paste at the start of any Copilot chat session |
| [`agent/commit-conventions.md`](agent/commit-conventions.md) | Conventional Commits reference |
| [`agent/review-protocol.md`](agent/review-protocol.md) | Pre-merge checklist |

---

## Contributing

All changes go through Pull Requests — no direct push to `main`.
See [`agent/commit-conventions.md`](agent/commit-conventions.md) for branch and commit format.
