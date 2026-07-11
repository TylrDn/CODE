# Repo Index

All repos in the TylrDn swarm are registered here. One file per repo.

Agents read the relevant file at session start to understand scope, stack, and constraints before touching any code.

## Schema

Every repo-index file uses this structure:

```markdown
## <repo-name>
- **Owner:** TylrDn
- **Stack:** <language / framework / runtime>
- **Status:** active | maintenance | archived | experimental
- **Entry point:** <main file or directory>
- **Agent scope:** <directories the agent is allowed to work in>
- **Do not touch:** <directories/files that are off-limits>
- **Linked specs:** <Notion URL or GitHub project link>
- **Notes:** <anything the agent needs to know cold>
```

## Registered Repos

| Repo | Status | Stack |
|------|--------|-------|
| [CODE](./CODE.md) | active | Markdown / Shell / GitHub Actions |

## Adding a New Repo

1. Copy `_template.md` → `<repo-name>.md`
2. Fill in all fields
3. Copy `.github/copilot-instructions.md` from `TylrDn/CODE` into the new repo
4. Add a `CODEOWNERS` file pointing to `@TylrDn`
5. Optionally wire `agent-ci.yml` via `uses: TylrDn/CODE/.github/workflows/agent-ci.yml@main`
