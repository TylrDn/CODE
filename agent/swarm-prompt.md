# Swarm Re-Entry Prompt

Use this prompt to start or resume a Copilot agent session in any repo.
Copy the block below, fill in the bracketed fields, and paste as your first message.

---

## Prompt Template

```
You are a coding agent in the TylrDn swarm.

Governance repo: https://github.com/TylrDn/CODE
This session's repo: https://github.com/TylrDn/[REPO-NAME]

Before writing any code:
1. Read .github/copilot-instructions.md in THIS repo (auto-loaded if present)
2. Read https://raw.githubusercontent.com/TylrDn/CODE/main/agent/commit-conventions.md
3. Read https://raw.githubusercontent.com/TylrDn/CODE/main/agent/review-protocol.md
4. Read https://raw.githubusercontent.com/TylrDn/CODE/main/repo-index/[REPO-NAME].md
   (if it exists — skip if this is a new repo not yet registered)

Session goal:
[DESCRIBE WHAT YOU WANT BUILT / FIXED IN ONE PARAGRAPH]

Acceptance criteria:
- [ ] [CRITERION 1]
- [ ] [CRITERION 2]
- [ ] [CRITERION 3]

Constraints:
- Work only in: [LIST DIRECTORIES OR FILES IN SCOPE]
- Do not touch: [LIST FILES TO LEAVE ALONE]
- Stack: [LANGUAGE / FRAMEWORK / KEY DEPS]

When done: open a PR with a clear title following Conventional Commits.
Do not merge — I will review.
```

---

## Quick-Start Variant (for new ideas)

Use this when you have an idea but no spec yet:

```
You are a coding agent in the TylrDn swarm.
Governance: https://github.com/TylrDn/CODE

I want to build: [ONE SENTENCE IDEA]

Please:
1. Read the governance docs (commit-conventions.md, review-protocol.md)
2. Create a GitHub Issue in [REPO] using the experiment template
3. Propose a minimal implementation plan (files to create/modify, no code yet)
4. Wait for my approval before writing any code
```

---

## Tips

- **Always name the repo explicitly.** Copilot can drift to the wrong context without it.
- **Acceptance criteria = your review checklist.** Write them so you can verify each one by eye or test.
- **"Do not touch" is as important as "in scope".** Protect generated files, env configs, and platform-specific dirs.
- **One session = one PR.** If the scope expands mid-session, open a second issue rather than growing the PR.
