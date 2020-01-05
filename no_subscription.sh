#!/usr/bin/env bash
sed -i.bak "s/data.status !== 'Active'/false/g" /usr/share/javascript/proxmox-widget-toolkit/proxmoxlib.js && systemctl restart pveproxy.service
cp -f /etc/apt/sources.list /etc/apt/sources.list.bak
wget -q https://raw.githubusercontent.com/ras434/pve/master/sources.list -O /etc/apt/sources.list
