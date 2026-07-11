#!/usr/bin/env bash
# bootstrap.sh — Copy TylrDn Copilot instructions into a target repo
#
# Usage:
#   ./bootstrap.sh <owner/repo-name> [target-dir] [--register]
#
# Options:
#   --register   Also append the repo to repo-index/README.md in TylrDn/CODE
#                (only works when running from within the CODE repo)
#
# Examples:
#   ./bootstrap.sh TylrDn/mobile-forge
#   ./bootstrap.sh TylrDn/mobile-forge ~/projects/mobile-forge
#   ./bootstrap.sh TylrDn/mobile-forge ~/projects/mobile-forge --register
#
# If target-dir is omitted, the script writes into ./<repo-name>/.github/
# (creating it if needed). Run from any directory.

set -euo pipefail

TEMPLATE_URL="https://raw.githubusercontent.com/TylrDn/CODE/main/agent/copilot-instructions-template.md"
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
TEMPLATE_LOCAL="$SCRIPT_DIR/agent/copilot-instructions-template.md"
REPO_INDEX="$SCRIPT_DIR/repo-index/README.md"

# ── Args ────────────────────────────────────────────────────────────────────

if [[ $# -lt 1 ]]; then
  echo "Usage: $0 <owner/repo-name> [target-dir] [--register]" >&2
  exit 1
fi

REPO_NAME="$1"                              # e.g. TylrDn/mobile-forge
REPO_SLUG="${REPO_NAME##*/}"                # e.g. mobile-forge
TARGET_DIR="${2:-$(pwd)/$REPO_SLUG}"        # default: ./<repo-slug>
DEST_FILE="$TARGET_DIR/.github/copilot-instructions.md"
REGISTER=0

# Parse optional flags (can appear in any remaining position)
for arg in "${@:2}"; do
  if [[ "$arg" == "--register" ]]; then
    REGISTER=1
  fi
done

# ── Fetch template ───────────────────────────────────────────────────────────

if [[ -f "$TEMPLATE_LOCAL" ]]; then
  TEMPLATE_CONTENT="$(<"$TEMPLATE_LOCAL")"
else
  echo "→ Fetching template from TylrDn/CODE..."
  TEMPLATE_CONTENT="$(curl -fsSL "$TEMPLATE_URL")"
fi

# ── Substitute repo name ─────────────────────────────────────────────────────

OUTPUT="${TEMPLATE_CONTENT//\{\{REPO_NAME\}\}/$REPO_NAME}"

# Strip the usage comment block (lines between <!-- and --> at the top)
OUTPUT="$(echo "$OUTPUT" | awk '
  /^<!--/{skip=1; next}
  /^-->/{skip=0; next}
  !skip{print}
')"

# ── Write output ─────────────────────────────────────────────────────────────

mkdir -p "$TARGET_DIR/.github"

if [[ -f "$DEST_FILE" ]]; then
  echo "⚠  $DEST_FILE already exists. Overwrite? [y/N]" >&2
  read -r REPLY
  if [[ ! "$REPLY" =~ ^[Yy]$ ]]; then
    echo "Aborted." >&2
    exit 0
  fi
fi

echo "$OUTPUT" > "$DEST_FILE"

echo "✓ Written: $DEST_FILE"

# ── Register in repo-index (optional) ────────────────────────────────────────

if [[ "$REGISTER" -eq 1 ]]; then
  if [[ ! -f "$REPO_INDEX" ]]; then
    echo "⚠  --register: repo-index/README.md not found at $REPO_INDEX. Skipping." >&2
  elif grep -qF "[$REPO_NAME]" "$REPO_INDEX" || grep -qE "\| *${REPO_SLUG} *\|" "$REPO_INDEX"; then
    echo "ℹ  --register: $REPO_NAME already exists in repo-index/README.md. Skipping."
  else
    # Append a new row to the table — format matches existing repo-index/README.md
    TODAY=$(date -u +%Y-%m-%d)
    NEW_ROW="| [$REPO_NAME](https://github.com/$REPO_NAME) | planned | pending | TBD | Added via bootstrap.sh on $TODAY |"
    # Insert before the last blank line or at the end of the table
    echo "$NEW_ROW" >> "$REPO_INDEX"
    echo "✓ Registered $REPO_NAME in repo-index/README.md"
    echo "  → Update the row with stack, purpose, and status once the repo is created."
  fi
fi

# ── Next steps ───────────────────────────────────────────────────────────────

echo ""
echo "Next steps:"
echo "  1. cd $TARGET_DIR"
echo "  2. git add .github/copilot-instructions.md"
echo "  3. git commit -m 'chore: add copilot instructions from TylrDn/CODE'"
if [[ "$REGISTER" -eq 1 ]]; then
  echo "  4. In TylrDn/CODE: update repo-index/README.md row for $REPO_NAME with stack + purpose"
fi
