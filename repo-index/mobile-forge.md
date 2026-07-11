# mobile-forge

> Mobile-first project scaffold and CI/CD template repository.

## Purpose

`mobile-forge` is the canonical starting point for all new mobile projects under the TylrDn account. It encodes the preferred stack, branching model, CI/CD pipelines, and release process so that every new project starts from the same solid foundation.

## Stack

| Layer        | Choice                   |
|--------------|--------------------------|
| Language     | TypeScript               |
| Framework    | React Native + Expo SDK  |
| CI/CD        | GitHub Actions           |
| Package mgr  | npm / Expo CLI           |
| Linting      | ESLint + Prettier        |

## Structure

```
mobile-forge/
├── README.md
├── .github/
│   ├── workflows/
│   │   ├── ci.yml              # Lint + test on PR
│   │   └── release.yml         # Tag → build → deploy pipeline
│   └── PULL_REQUEST_TEMPLATE.md
├── docs/
│   ├── stack.md
│   ├── branching.md
│   ├── release-checklist.md
│   └── hotfix-runbook.md
└── scripts/
    ├── bootstrap.sh
    └── env-check.sh
```

## Branching Conventions

| Branch      | Purpose                      |
|-------------|------------------------------|
| `main`      | Production-ready code        |
| `dev`       | Integration branch           |
| `feature/*` | New features                 |
| `hotfix/*`  | Emergency production patches |

## Entry Points

- **Repo**: `https://github.com/TylrDn/mobile-forge`
- **Bootstrap**: `scripts/bootstrap.sh` — run once to init a new project from this template
- **CI**: `.github/workflows/ci.yml` — lint + test on every PR
- **Release**: `.github/workflows/release.yml` — triggered by semver tag push

## Status

`active` — repo created; bootstrap from CODE using `bash bootstrap.sh TylrDn/mobile-forge --register`.
