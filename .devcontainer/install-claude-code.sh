#!/bin/bash
set -euo pipefail

if ! command -v claude; then
    npm install -g @anthropic-ai/claude-code
fi
