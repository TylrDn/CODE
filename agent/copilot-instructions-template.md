# Copilot Instructions Template

> Copy this file to `.github/copilot-instructions.md` in any new repo to immediately inherit TylrDn governance conventions.

---

<!--
  USAGE:
  1. Copy this file to .github/copilot-instructions.md in your target repo.
  2. Replace {{REPO_NAME}} with your repository name (e.g. TylrDn/mobile-forge).
  3. Remove this comment block.
-->

## Governance

This repository is part of the **TylrDn** account.
All conventions, agent workflow standards, and architecture decisions are maintained in the central governance repo:

> 📐 **[TylrDn/CODE](https://github.com/TylrDn/CODE)** — source of truth for all TylrDn repos

When in doubt, defer to TylrDn/CODE. Do not introduce conventions that conflict with it.

---

## Commit Conventions

All commits must follow **[Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/)**.
Full reference: [`agent/commit-conventions.md`](https://github.com/TylrDn/CODE/blob/main/agent/commit-conventions.md)

### Format

```
<type>(<optional scope>): <short description>

[optional body]

[optional footer(s)]
```

### Rules

- Subject line: ≤ 72 characters, imperative mood, no period at end
- Body: wrap at 80 characters; explain *what* and *why*, not *how*
- Footer: reference issues/PRs (`Closes #12`, `Refs #34`)

### Types

| Type       | When to use                                             |
|------------|---------------------------------------------------------|
| `feat`     | A new feature or capability                             |
| `fix`      | A bug fix                                               |
| `chore`    | Build process, tooling, dependency updates, scaffolding |
| `docs`     | Documentation only changes                              |
| `refactor` | Code change that neither fixes a bug nor adds a feature |
| `test`     | Adding or updating tests                                |
| `ci`       | Changes to CI/CD workflows (`.github/workflows/`)       |
| `style`    | Formatting, whitespace — no logic change                |
| `perf`     | Performance improvement                                 |
| `revert`   | Reverting a previous commit                             |

### Breaking Changes

Append `!` after the type/scope and add a `BREAKING CHANGE:` footer:

```
feat(api)!: rename /users endpoint to /accounts

BREAKING CHANGE: all clients must update base URL from /users to /accounts
```

---

## Branch Naming

Branch names mirror the commit type:

```
<type>/<short-description>
```

| Pattern         | Purpose                    | Example                    |
|-----------------|----------------------------|----------------------------|
| `feat/<slug>`   | New feature                | `feat/add-auth`            |
| `fix/<slug>`    | Bug fix                    | `fix/crash-on-login`       |
| `chore/<slug>`  | Tooling / maintenance      | `chore/update-deps`        |
| `docs/<slug>`   | Documentation update       | `docs/add-readme`          |
| `hotfix/<slug>` | Emergency production patch | `hotfix/null-user-crash`   |
| `release/<ver>` | Release preparation        | `release/1.2.0`            |

### Rules

- Use lowercase kebab-case for `<slug>`
- Keep slugs short and descriptive (≤ 5 words)
- No direct pushes to `main` — all changes go through Pull Requests

---

## Pull Request Standards

- PR title must follow the same Conventional Commits format as the primary commit
- One logical change per PR — no scope creep
- Reference the related issue in the PR description where applicable
- Run the pre-merge checklist in [`agent/review-protocol.md`](https://github.com/TylrDn/CODE/blob/main/agent/review-protocol.md) before merging

---

## Session Logging

After any agent-driven session, create a log entry in `session-log/` with the filename format:

```
YYYY-MM-DD-<short-slug>.md
```

Example: `session-log/2025-07-11-add-auth-flow.md`
