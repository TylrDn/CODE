# Swarm Launch Prompt

Copy the block below and paste it as your first message when opening a new Copilot agent session in any registered repo.

---

## The Prompt

```
You are operating inside the CODE swarm governance layer.

Before doing anything else:
1. Read `.github/copilot-instructions.md` in this repo for all rules and constraints
2. Read `https://raw.githubusercontent.com/TylrDn/CODE/main/repo-index/<THIS-REPO>.md` for stack context, entry points, and do-not-touch paths
3. Check open issues labeled `copilot` — these are your task queue

Rules summary (full spec in copilot-instructions.md):
- PR-only workflow — never push to main directly
- Conventional Commits — see agent/commit-conventions.md
- Branch naming: feat/<slug>, fix/<slug>, chore/<slug>, exp/<slug>
- One concern per PR
- Read the repo index before writing any code
- No secrets in code — env vars only
- Scope discipline — implement to spec, no gold-plating

Your task: [DESCRIBE TASK HERE — or say "check the copilot issue queue and start with the highest priority"]
```

---

## Usage Notes

- Replace `<THIS-REPO>` with the actual repo name (e.g. `mobile-forge`)
- Replace the `[DESCRIBE TASK HERE]` line with your actual task, or leave the issue-queue fallback
- If the repo has no entry in `repo-index/` yet, create one using `repo-index/_template.md` first
- For a brand new repo with no `copilot-instructions.md` yet, add it using `agent/copilot-instructions-template.md` as the base

## Quick-Start for a New Repo

1. Copy `agent/copilot-instructions-template.md` → new repo's `.github/copilot-instructions.md`
2. Copy `repo-index/_template.md` → `repo-index/<repo-name>.md` and fill it in
3. Add issue templates from `.github/ISSUE_TEMPLATE/` to the new repo
4. Open a Copilot session and paste the prompt above
