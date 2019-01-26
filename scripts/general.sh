#!/bin/bash

echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p

# Decrease swap usage to a more reasonable level
# vm.swappiness=10


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
