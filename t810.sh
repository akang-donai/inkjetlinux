#!/bin/bash

## P-Touch for Ubuntu 16-18 LTS 64bit ##
## Doni Kuswaryadi - BICID ##

# Updating the system
sudo apt update && apt upgrade -y

# Preparing the setup
sudo apt install lib32z1 -y
cd Downloads/
wget https://download.brother.com/welcome/dlf006645/brscan4-0.4.8-1.amd64.deb
wget https://download.brother.com/welcome/dlf103624/mfct810wpdrv-1.0.0-0.i386.deb
wget https://download.brother.com/welcome/dlf006893/linux-brprinter-installer-2.2.1-1.gz

# Installing the configuration
sudo gunzip linux-brprinter-installer-2.2.1-1.gz
sudo bash linux-brprinter-installer-2.2.1-1
mkdir /var/spool/lpd
sudo dpkg -i --force-all mfct810wpdrv-1.0.0-0.i386.deb
sudo dpkg -i --force-all brscan4-0.4.8-1.amd64.deb
