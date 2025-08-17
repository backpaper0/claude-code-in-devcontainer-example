#!/bin/bash
set -euo pipefail

apt-get update && apt-get install -y --no-install-recommends \
    iptables \
    ipset \
    iproute2 \
    dnsutils

apt-get clean

rm -rf /var/lib/apt/lists/*

cp "$(dirname "$0")/init-firewall.sh" /usr/local/bin/init-firewall.sh

chmod +x /usr/local/bin/init-firewall.sh

echo "vscode ALL=(root) NOPASSWD: /usr/local/bin/init-firewall.sh" > /etc/sudoers.d/vscode-firewall

chmod 0440 /etc/sudoers.d/vscode-firewall
