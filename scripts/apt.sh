#!/bin/bash

echo '\nInstall Apt-Get Applications\n'

sudo apt -y install \
apt-transport-https \
autoconf \
bash-completion \
build-essential \
ca-certificates \
chrome-gnome-shell \
curl \
dkms \
git \
git-flow \
gksudo \
gnome-disk-utility \
gnome-nettool \
gnome-tweak-tool \
gnome-tweaks \
gnupg \
keepassxc \
seahorse-nautilus \
software-properties-common \
ssh \
synaptic \
tilix \


sudo apt-get remove gnome-shell-extension-ubuntu-dock
