#!/bin/bash

echo '\nInstall Docker\n'

sudo apt remove docker docker-engine docker.io

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo apt-key fingerprint 0EBFCD88

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt update
sudo apt install docker-ce

sudo docker run hello-world

echo '\nInstall Docker Compose\n'

sudo curl -L https://github.com/docker/compose/releases/download/1.18.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose

docker-compose --version

sudo groupadd docker
sudo usermod -aG docker $USER

echo '\nInstall kitematic\n'

kiteTag=$(curl https://api.github.com/repos/docker/kitematic/releases/latest |
    grep '"tag_name":' |                     # Get tag line
    sed -E 's/.*"([^"]+)".*/\1/')             # Pluck JSON value

echo $kiteTag

downloadPath="$HOME/Downloads"

echo $downloadPath

remotePath="https://github.com/docker/kitematic/releases/download/$kiteTag/Kitematic-${kiteTag:1}-Ubuntu.zip"

localPath="$downloadPath/Kitematic-${kiteTag:1}-Ubuntu.zip"

echo $remotePath

wget $remotePath -O $localPath

unzip $localPath -d $downloadPath

sudo dpkg -i "$downloadPath/Kitematic-${kiteTag:1}_amd64.deb"
