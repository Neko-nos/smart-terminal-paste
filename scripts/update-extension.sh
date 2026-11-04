#!/usr/bin/env bash
set -euo pipefail

if [[ "$(git branch --show-current)" != main || "${GIT_REFLOG_ACTION:-}" != "pull origin main" ]]; then
    exit 0
fi

npm ci
npm run package -- --out smart-terminal-paste.vsix
code --install-extension smart-terminal-paste.vsix --force

printf '%s\n' 'Smart Terminal Paste updated. Reload VS Code to use it.'
