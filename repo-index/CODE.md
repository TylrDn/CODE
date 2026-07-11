## CODE

- **Repo:** TylrDn/CODE
- **Stack:** Markdown / Shell / GitHub Actions
- **Status:** active
- **Entry point:** README.md
- **Agent scope:** agent/, repo-index/, session-log/, .github/, bootstrap.sh
- **Do not touch:** CODEOWNERS (edit manually only)
- **Linked specs:** N/A — this repo IS the spec
- **Notes:** This is the governance repo. Changes here propagate to all downstream repos via `bootstrap.sh` and the reusable CI workflow. Be conservative — any breaking change to `agent/copilot-instructions-template.md` or `bootstrap.sh` affects every registered repo.
