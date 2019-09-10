#!/bin/bash

echo '\nInstall & Configure Dropbox\n'

sudo add-apt-repository \
  "deb http://linux.dropbox.com/ubuntu \
  $(lsb_release -cs) \
  main"

sudo sudo apt-key adv --keyserver pgp.mit.edu --recv-keys 1C61A2656FB57B7E4DE0F4C1FC918B335044912E
sudo apt -y install dropbox


read -p 'Have you signed into Dropbox and allowed it to sync? (y/n)' install
if [ $install = 'y' ]; then
  rm -rf ~/Documents && ln -s ~/Dropbox/Documents ~/Documents
  rm -rf ~/Pictures && ln -s ~/Dropbox/Pictures ~/Pictures
  rm -rf ~/projects/.config && ln -s ~/Dropbox/projects/.config/ ~/.projects/.config
fi
