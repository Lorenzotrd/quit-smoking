#!/usr/bin/env bash
set -euo pipefail

# Detect shell for rc file updates
if [ -n "${ZSH_VERSION:-}" ]; then
  SHELL_RC="$HOME/.zshrc"
elif [ -n "${BASH_VERSION:-}" ]; then
  SHELL_RC="$HOME/.bashrc"
elif [ -f "$HOME/.zshrc" ]; then
  SHELL_RC="$HOME/.zshrc"
elif [ -f "$HOME/.bashrc" ]; then
  SHELL_RC="$HOME/.bashrc"
else
  SHELL_RC="$HOME/.profile"
fi

ROOT="$(cd "$(dirname "$0")" && pwd)"

echo "Installing Quit Smoking..."

mkdir -p "$HOME/.local/bin"
cp "$ROOT/scripts/quit-smoking" "$HOME/.local/bin/quit-smoking"
chmod +x "$HOME/.local/bin/quit-smoking"

mkdir -p "$HOME/.claude/skills/quit-smoking"
cp "$ROOT/claude-skill/quit-smoking/SKILL.md" "$HOME/.claude/skills/quit-smoking/SKILL.md"

mkdir -p "$HOME/.codex/skills/quit_smoking"
cp "$ROOT/codex-skill/quit_smoking/SKILL.md" "$HOME/.codex/skills/quit_smoking/SKILL.md"

if [ -f "$ROOT/assets/lungs/lungs.glb" ]; then
  mkdir -p "$HOME/.quit-smoking/assets"
  cp "$ROOT/assets/lungs/lungs.glb" "$HOME/.quit-smoking/assets/lungs.glb"
fi

ALIAS_BLOCK='
# Quit Smoking aliases
alias qclaude="quit-smoking claude"
alias qcodex="quit-smoking codex"
alias quitcheck="quit-smoking check"
alias quitdash="quit-smoking dashboard"
'

if [ -f "$HOME/.zshrc" ] && ! grep -q "Quit Smoking aliases" "$HOME/.zshrc"; then
  printf "%s\n" "$ALIAS_BLOCK" >> "$HOME/.zshrc"
fi

if [ -f "$HOME/.bashrc" ] && ! grep -q "Quit Smoking aliases" "$HOME/.bashrc"; then
  printf "%s\n" "$ALIAS_BLOCK" >> "$HOME/.bashrc"
fi

echo ""
echo "Installed Quit Smoking."
echo "Run:"
echo "  source $SHELL_RC"
echo "  quitcheck"
echo "  qclaude ."
echo "  qcodex"
echo "  quitdash"
