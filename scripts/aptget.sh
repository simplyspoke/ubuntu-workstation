#!/bin/bash

echo '\nInstall Additional Applications\n'

apt install \
ubuntu-restricted-extras
flatpak
gnome-software-plugin-flatpak

cask 'docker-toolbox'
cask 'dropbox'
cask 'filezilla'
cask 'flux'
cask 'gimp'
cask 'gitkraken'
cask 'google-chrome'
cask 'macpass'
cask 'numi'
cask 'postman'
cask 'robo-3t'
cask 'slack'
cask 'spotify'
cask 'textmate'
cask 'time-out'
cask 'tomighty'

EOF
