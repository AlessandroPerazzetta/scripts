#!/bin/bash
apt-get remove --purge cloud-* lxd* popularity-contest snapd sosreport iw lxcfs wireless-regdb fuse ntfs-3g open-iscsi open-vm-tools pastebinit
apt-get clean && apt-get autoclean && apt-get autoremove
apt-get update && apt-get -f dist-upgrade
