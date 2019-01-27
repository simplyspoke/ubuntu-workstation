#!/bin/bash

echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p

# Decrease swap usage to a more reasonable level
# vm.swappiness=10

gsettings set org.gnome.settings-daemon.peripherals.keyboard numlock-state 'on'

sudo snap set system refresh.retain=2

sudo update-alternatives --config x-terminal-emulator

sudo ln -s /etc/profile.d/vte-2.91.sh /etc/profile.d/vte.sh

echo '\nSetup SSH Configurations\n'

cd ~/
ssh-keygen -t rsa -C $USEREMAIL
nano .ssh/config

ssh-public-keys
# ssh-add -k ~/.ssh/somekey


echo '\nSetup Git Configurations\n'

cp -f ./files/.gitconfig ~/.gitconfig
cp -f ./files/.gitignore ~/.gitignore

git config --global core.excludesfile ~/.gitignore

read -p 'Would you like to configure Github? (y/n)' github
if [ $github = 'y' ]; then
  echo 'Please enter your Github username:'
  read githubUsername
  git config --global github.user $githubUsername
fi
