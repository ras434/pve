#!/usr/bin/env bash
sed -i.bak "s/data.status !== 'Active'/false/g" /usr/share/javascript/proxmox-widget-toolkit/proxmoxlib.js && systemctl restart pveproxy.service
cp -f /etc/apt/sources.list /etc/apt/sources.list.bak
curl https://raw.githubusercontent.com/ras434/pve/master/sources.list > /etc/apt/sources.list
