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

version=$(curl https://api.github.com/repos/docker/kitematic/releases/latest |
    grep '"tag_name":' |                     # Get tag line
    sed -E 's/.*"([^"]+)".*/\1/' |
    sed 's/^.//')             # Pluck JSON value

echo $version

downloadPath="$HOME/Downloads"

echo $downloadPath

remotePath="https://github.com/docker/kitematic/releases/download/v$version/Kitematic-$version-Ubuntu.zip"

echo $remotePath

localPath="$downloadPath/Kitematic-$version-Ubuntu.zip"

wget $remotePath -O $localPath

unzip $localPath -d $downloadPath

sudo dpkg -i "$downloadPath/Kitematic-${version}_amd64.deb"
