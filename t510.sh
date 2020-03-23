#!/bin/bash

## Brother Inkjet for Ubuntu 16-18 LTS 64bit ##
## Doni Kuswaryadi - BICID ##

# Updating the system
sudo apt update && apt upgrade -y

# Preparing the setup
sudo apt install lib32z1 -y
cd Downloads/
wget https://download.brother.com/welcome/dlf006893/linux-brprinter-installer-2.2.1-1.gz

# Installing the configuration
mkdir /var/spool/lpd
sudo gunzip linux-brprinter-installer-2.2.1-1.gz
sudo bash linux-brprinter-installer-2.2.1-1
