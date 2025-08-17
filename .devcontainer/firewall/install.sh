#!/bin/bash
set -euo pipefail

if [ "$(id -u)" -ne 0 ]; then
    echo -e 'Script must be run as root. Use sudo, su, or add "USER root" to your Dockerfile before running this script.'
    exit 1
fi

if [ -z "${USERNAME}"]; then
    echo -e "USERNAME environment variable must be set"
    exit 1
fi

apt-get update && apt-get install -y --no-install-recommends \
    iptables \
    ipset \
    iproute2 \
    dnsutils

apt-get clean

rm -rf /var/lib/apt/lists/*

cp "$(dirname "$0")/init-firewall.sh" /usr/local/bin/init-firewall.sh

chmod +x /usr/local/bin/init-firewall.sh

echo "${USERNAME} ALL=(root) NOPASSWD: /usr/local/bin/init-firewall.sh" > /etc/sudoers.d/${USERNAME}-firewall

chmod 0440 /etc/sudoers.d/${USERNAME}-firewall
