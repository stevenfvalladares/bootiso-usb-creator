#! /bin/bash

# Download bootiso  
curl -L https://git.io/bootiso -O

# Grant permissions to bootiso
chmod +x bootiso

# Installation of utilities
sudo apt-get update -y
sudo apt install wimtools syslinux extlinux -y

#
# Command block to prepare bootable USB
#

read -p "Please enter the path to the ISO image you want to make bootable: " isopath
./bootiso $isopath

# Remove the boot file
rm bootiso

