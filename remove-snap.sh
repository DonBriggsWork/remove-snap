#!/bin/bash

# remove-snap             | By Don! Briggs <DonBriggsWork@gmail.com>
#
# Completely remove SNAP from Ubuntu. This includes files, Linux services,
# configuration files, filesystem mounts, etc.
#

printf "\n"
printf "                  Completely removing SNAP Support\n"
printf "======================================================================\n"

printf "  - Stopping snapd service\n"
sudo systemctl disable --now snapd
sudo systemctl stop --now snapd

# Uninstall
sudo apt purge -y snapd

# Tidy up dirs
sudo rm -rf /snap /var/snap /var/lib/snapd /var/cache/snapd /usr/lib/snapd ~/snap

# Stop it from being reinstalled by 'mistake' when installing other packages
cat << EOF | sudo tee -a /etc/apt/preferences.d/no-snap.pref
Package: snapd
Pin: release a=*
Pin-Priority: -10
EOF

sudo chown root:root /etc/apt/preferences.d/no-snap.pref

# done
echo "Snap removed"
