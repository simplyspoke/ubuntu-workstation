#!/bin/bash

read -p 'Do you wish to configure this workstation? (y/n)' install
if [ $install = 'n' ]; then
  exit
fi

# Get variable from user
echo 'Please enter your fullname: '
read fullName
echo 'Please enter your email (for git and etc.): '
read email

apt update && apt upgrade

# Install Packages
source scripts/apt.sh

# Install Dropbox
source scripts/dropbox.sh

# Install Direnv
source scripts/direnv.sh

# Install Docker
source scripts/docker.sh

# Install Node.js
source scripts/nodejs.sh

# Install RoR
source scripts/rbenv.sh

# Install AWS CLI
source scripts/aws.sh

# Configure Geerenal settings
source scripts/general.sh

source ~/.bash_profile

source scripts/misc.sh
