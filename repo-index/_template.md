# repo-index: <repo-name>

> Copy this file to `<repo-name>.md` and fill in every field.
> Copilot reads this at session start. Be precise — vague entries waste agent cycles.

## Identity

- **Repo**: `TylrDn/<repo-name>`
- **Stack**: <!-- e.g. Next.js 14 / TypeScript / Tailwind / Supabase -->
- **Status**: <!-- active | maintenance | archived | experimental -->
- **Owner**: TylrDn

## Entry Points

- **App root**: <!-- e.g. `src/app/` or `App.tsx` -->
- **API root**: <!-- e.g. `src/app/api/` or `server/routes/` -->
- **Config**: <!-- e.g. `next.config.ts`, `.env.example` -->
- **Tests**: <!-- e.g. `__tests__/`, `*.test.ts` -->

## Agent Scope

### ✅ Safe to modify
```
# List directories/files the agent is allowed to touch
src/
components/
lib/
```

### 🚫 Do not touch
```
# List generated, vendor, or protected paths
node_modules/
.next/
ios/
android/
prisma/migrations/  # migration files only — schema changes via new migration
```

## Key Conventions

- <!-- e.g. "Use server components by default; client components only when hooks are needed" -->
- <!-- e.g. "All DB queries go through `lib/db/` — no raw SQL in components" -->
- <!-- e.g. "Tailwind utility classes only — no custom CSS files" -->

## Environment

```
# Required env vars (no values — just keys)
NEXT_PUBLIC_SUPABASE_URL=
NEXT_PUBLIC_SUPABASE_ANON_KEY=
SUPABASE_SERVICE_ROLE_KEY=
```

## Linked Specs

- Notion: <!-- https://notion.so/... -->
- Figma: <!-- https://figma.com/... -->
- Open issues: <!-- https://github.com/TylrDn/<repo>/issues?q=label:copilot -->

## Notes

<!-- Anything else the agent should know before starting work -->
