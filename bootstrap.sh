#!/usr/bin/env bash
# bootstrap.sh — Copy TylrDn Copilot instructions into a target repo
#
# Usage:
#   ./bootstrap.sh <owner/repo-name> [target-dir]
#
# Examples:
#   ./bootstrap.sh TylrDn/mobile-forge
#   ./bootstrap.sh TylrDn/mobile-forge ~/projects/mobile-forge
#
# If target-dir is omitted, the script writes into ./<repo-name>/.github/
# (creating it if needed). Run from any directory.

set -euo pipefail

TEMPLATE_URL="https://raw.githubusercontent.com/TylrDn/CODE/main/agent/copilot-instructions-template.md"
TEMPLATE_LOCAL="$(dirname "$0")/agent/copilot-instructions-template.md"

# ── Args ────────────────────────────────────────────────────────────────────

if [[ $# -lt 1 ]]; then
  echo "Usage: $0 <owner/repo-name> [target-dir]" >&2
  exit 1
fi

REPO_NAME="$1"                              # e.g. TylrDn/mobile-forge
REPO_SLUG="${REPO_NAME##*/}"                # e.g. mobile-forge
TARGET_DIR="${2:-$(pwd)/$REPO_SLUG}"        # default: ./<repo-slug>
DEST="$TARGET_DIR/.github/copilot-instructions.md"

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
  /^<!--/{skip=1}
  !skip{print}
  /^-->/{skip=0; next}
')"

# ── Write output ─────────────────────────────────────────────────────────────

mkdir -p "$TARGET_DIR/.github"

if [[ -f "$DEST" ]]; then
  echo "⚠  $DEST already exists. Overwrite? [y/N] " >&2
  read -r REPLY
  if [[ ! "$REPLY" =~ ^[Yy]$ ]]; then
    echo "Aborted." >&2
    exit 0
  fi
fi

echo "$OUTPUT" > "$DEST"

echo "✓ Written: $DEST"
echo ""
echo "Next steps:"
echo "  1. cd $TARGET_DIR"
echo "  2. git add .github/copilot-instructions.md"
echo "  3. git commit -m 'chore: add copilot instructions from TylrDn/CODE'"
