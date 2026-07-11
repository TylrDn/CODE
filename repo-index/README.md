# Repo Index
<!-- last_reviewed: 2026-07-11 -->

Each file in this directory registers a repo under CODE governance.
Agents read the relevant file before starting work.

## Schema
- **Stack**: primary language/framework
- **Status**: active | paused | archived
- **Entry point**: main file the agent should orient from
- **Agent scope**: directories the agent may freely edit
- **Do not touch**: generated, native, or protected paths
- **Linked specs**: Notion or GitHub URLs

## Registry

| Repo | Status | Ruleset | Stack | Purpose |
|------|--------|---------|-------|---------|
| [CODE](CODE.md) | active | ✅ branch ruleset on `main` | Markdown / GitHub Actions | Central architecture, repo-index, session-log, agent instructions |
| [mobile-forge](mobile-forge.md) | active | pending | TypeScript / React Native / Expo / GitHub Actions | Mobile-first project scaffold and CI/CD template |
| [dev-kit](dev-kit.md) | active | pending | Zsh / VS Code / Git / Shell scripts | Developer environment dotfiles, tooling configs, agent workflow standards |
