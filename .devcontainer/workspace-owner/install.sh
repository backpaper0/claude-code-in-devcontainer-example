#!/bin/bash
set -euo pipefail

cp "$(dirname "$0")/update-workspace-owner.sh" /usr/local/bin/update-workspace-owner.sh

chmod +x /usr/local/bin/update-workspace-owner.sh

echo "vscode ALL=(root) NOPASSWD: /usr/local/bin/update-workspace-owner.sh" > /etc/sudoers.d/vscode-workspace-owner

chmod 0440 /etc/sudoers.d/vscode-workspace-owner
