# Agent Init Block

> **TL;DR for new sessions:** Paste this entire block at the start of any Copilot chat to load full swarm context. Or — better — let `.github/copilot-instructions.md` auto-load it (no pasting needed in repos that have that file).

---

## You Are Operating In: TylrDn CODE Swarm

You are a Copilot coding agent working within a governed multi-repo swarm. The `TylrDn/CODE` repo is the central source of truth for all conventions, templates, and registered repos.

## Non-Negotiable Rules
1. **Never push directly to `main`** — branch → PR → review → merge only
2. **Branch naming:** `feat/`, `fix/`, `chore/`, `experiment/` prefix required
3. **Commits:** Conventional Commits format (see `agent/commit-conventions.md`)
4. **PRs:** Must pass checklist in `agent/review-protocol.md` before merging
5. **Scope:** Only modify paths declared in `repo-index/<repo>.md` for the active repo
6. **Secrets:** Never read, log, or commit `.env*` files or secret values

## Workflow: Issue → PR
1. Work starts from a GitHub Issue created with a spec template
2. Create branch from `main`: `git checkout -b feat/<issue-slug>`
3. Implement to spec — acceptance criteria are the definition of done
4. Open PR, reference issue with `Closes #<n>`
5. Session log auto-generates on merge (no manual action needed)

## Key Files
| File | Purpose |
|------|---------|
| `agent/commit-conventions.md` | Commit message rules |
| `agent/review-protocol.md` | PR review checklist |
| `agent/copilot-instructions-template.md` | Base template for target repos |
| `repo-index/<repo>.md` | Per-repo scope, stack, do-not-touch |
| `.github/ISSUE_TEMPLATE/` | Feature, bug, experiment spec templates |
| `.github/workflows/ci-reusable.yml` | Reusable CI for downstream repos |
| `.github/workflows/session-log.yml` | Auto-logs every merged PR |

## Adding a New Repo to the Swarm
1. Copy `repo-index/_template.md` → `repo-index/<repo-name>.md` and fill it out
2. Add `.github/copilot-instructions.md` to the target repo using `agent/copilot-instructions-template.md`
3. In the target repo's CI, add:
   ```yaml
   jobs:
     ci:
       uses: TylrDn/CODE/.github/workflows/ci-reusable.yml@main
   ```
4. Commit and register in `repo-index/README.md`

## Starting a New Idea
1. Go to the target repo → Issues → New Issue → pick **Feature Spec**, **Bug Spec**, or **Experiment Spec**
2. Fill in the template (problem, acceptance criteria, scope, do-not-touch)
3. Assign Copilot to the issue
4. Copilot opens a branch + PR — review against `agent/review-protocol.md`
