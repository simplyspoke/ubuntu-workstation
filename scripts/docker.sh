#!/bin/bash

echo '\nSetup Docker Configurations\n'

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository    "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get install docker-ce
sudo docker run hello-world
sudo groupadd docker
sudo usermod -aG docker $USER
sudo apt install docker
docker
kitematic
kitematic --help
man kitematic
sudo kitematic
