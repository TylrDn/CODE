# dev-kit

> Personal developer environment, tooling configs, and agent workflow standards.

## Purpose

`dev-kit` centralizes dotfiles, editor settings, git configuration, and agent workflow documents so that any machine or coding session can be bootstrapped to a consistent, productive state in one command.

## Stack

| Layer     | Choice                                     |
|-----------|--------------------------------------------|
| Shell     | Zsh + custom `.zshrc`                      |
| Editor    | VS Code (settings + recommended extensions)|
| Git       | `.gitconfig` aliases + global `.gitignore` |
| Runtime   | nvm (Node), rbenv (Ruby) via shell hooks   |
| Agents    | GitHub Copilot / Codex prompt templates    |

## Structure

```
dev-kit/
├── README.md
├── git/
│   ├── .gitconfig              # Aliases, signing config template
│   └── .gitignore_global       # Global ignore rules
├── vscode/
│   ├── extensions.json         # Recommended extensions list
│   └── settings.json           # Workspace defaults (Prettier, ESLint, Copilot)
├── dotfiles/
│   ├── .zshrc                  # Shell aliases, PATH, nvm/rbenv hooks
│   └── .env.example            # Template for local secrets (no real values)
├── agent/
│   ├── agent-init-block.md     # Reusable Copilot/Codex session start prompt
│   ├── review-protocol.md      # Diff review checklist before merging
│   └── commit-conventions.md   # Conventional commits: feat/fix/chore/docs
└── scripts/
    ├── setup.sh                # Symlink dotfiles, install extensions
    └── health-check.sh         # Verify tools: node, git, gh CLI, expo
```

## Entry Points

- **Repo**: `https://github.com/TylrDn/dev-kit`
- **Setup**: `scripts/setup.sh` — symlinks dotfiles and installs VS Code extensions
- **Health check**: `scripts/health-check.sh` — verifies node, git, gh CLI, expo are present
- **Agent init**: `agent/agent-init-block.md` — paste at the start of any Copilot/Codex session

## Status

`active` — repo created; bootstrap from CODE using `bash bootstrap.sh TylrDn/dev-kit --register`.
