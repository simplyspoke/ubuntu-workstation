#!/bin/bash

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
