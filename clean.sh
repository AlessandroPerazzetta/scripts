#!/bin/bash
# bash <(curl -Ls https://raw.githubusercontent.com/AlessandroPerazzetta/scripts/main/clean.sh)
systemctl disable systemd-networkd-wait-online.service
systemctl mask systemd-networkd-wait-online.service
# Remove wireless support (reinstall kernel required)
#apt-get remove --purge cloud-* lxd* popularity-contest snapd sosreport iw lxcfs wireless-regdb fuse ntfs-3g open-iscsi open-vm-tools pastebinit
apt-get remove --purge cloud-* lxd* popularity-contest snapd sosreport lxcfs fuse ntfs-3g open-iscsi open-vm-tools pastebinit
apt-get clean && apt-get autoclean && apt-get autoremove
apt-get update && apt-get -f dist-upgrade
