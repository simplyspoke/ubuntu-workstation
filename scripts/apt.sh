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
gir1.2-clutter-1.0 \
gir1.2-clutter-gst-3.0 \
gir1.2-gtkclutter-1.0 \
gir1.2-gtop-2.0 \
gir1.2-networkmanager-1.0  \
git \
git-flow \
gnome-disk-utility \
gnome-nettool \
gnome-tweak-tool \
gnome-tweaks \
gnupg \
keepassxc \
libpq-dev \
openjdk-8-jdk \
openssh-server \
seahorse-nautilus \
software-properties-common \
ssh \
synaptic \
tilix \


sudo apt -y remove gnome-shell-extension-ubuntu-dock
sudo apt -y autoremove
sudo apt -y autoclean
