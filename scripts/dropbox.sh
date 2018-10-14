#!/bin/bash

echo '\nInstall & Configure Dropbox\n'

# cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
# to start dropbox
# sh ~/.dropbox-dist/dropboxd

read -p 'Have you signed into Dropbox and allowed it to sync? (y/n)' install
if [ $install = 'y' ]; then
  rm -rf ~/Documents && ln -s ~/Dropbox/Documents ~/Documents
  rm -rf ~/Pictures && ln -s ~/Dropbox/Pictures ~/Pictures
fi
