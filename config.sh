#!/bin/bash

# Get variable from user
echo 'Please enter your fullname: '
read fullName
echo 'Please enter your email (for git and etc.): '
read email

read -p 'Do you wish to configure this workstation? (y/n)' install
if [ $install = 'n' ]; then
  exit
fi

apt update && apt upgrade

read -p 'Do you want to overwrite your current bash_profile with the one provided in this script? (y/n)' bashProfile
if [ $bashProfile = 'y' ]; then
  cp -f ./files/.bash_profile ~/.bash_profile
fi

read -p 'Would you like to run the general finder configs? (y/n)' finder
if [ $finder = 'y' ]; then
  source scripts/finder.sh
fi

# Configure Git
source scripts/git.sh

# Install Node.js
source scripts/node-js.sh

# Install RoR
source scripts/ruby.sh

# Install AWS CLI
read -p 'Would you like to install the AWS CLI? (y/n)' awsCli
if [ $awsCli = 'y' ]; then
  source scripts/aws.sh
fi

# Install Atom
read -p 'Would you like to install Atom? (y/n)' atom
if [ $atom = 'y' ]; then
  source scripts/atom.sh
fi

read -p 'Would you like to install the additional Applications? (y/n)' applications
if [ $uiApplications = 'y' ]; then
  source scripts/ui-applications.sh
fi

source scripts/flatpack.sh

source ~/.bash_profile
