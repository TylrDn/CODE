# Repo Index

One file per registered repo. Each file defines stack, entry points, agent scope, and no-touch zones.
Copilot reads this before starting work in any downstream repo.

## Schema

```markdown
## <repo-name>

- **Repo:** TylrDn/<repo-name>
- **Stack:** <language / framework / runtime>
- **Status:** active | paused | archived
- **Entry point:** <main file Copilot should start from>
- **Agent scope:** <directories/files Copilot is allowed to modify>
- **Do not touch:** <directories/files that are off-limits>
- **Linked specs:** <Notion URL or issue links>
- **Notes:** <anything else the agent needs to know>
```

## Registered Repos

| Repo | Stack | Status |
|---|---|---|
| [CODE](CODE.md) | Markdown / Shell / GitHub Actions | active |

Add a new `.md` file here when bootstrapping a new repo (`bootstrap.sh` does this automatically).
