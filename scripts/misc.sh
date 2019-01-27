#!/bin/bash

downloads="$HOME/Downloads"

echo '\nInstall Additional Applications\n'

wget https://prerelease.keybase.io/keybase_amd64.deb -O $downloads
sudo dpkg -i $downloads/keybase_amd64.deb

wget https://release.gitkraken.com/linux/gitkraken-amd64.deb -O $downloads
sudo dpkg -i $downloads/gitkraken-amd64.deb

wget https://atom.io/download/deb  -O "$downloads/atom-amd64.deb"
sudo dpkg -i $downloads/atom-amd64.deb

wget "https://downloads.slack-edge.com/linux_releases/slack-desktop-3.3.7-amd64.deb" -O $downloads/slack.deb
sudo dpkg -i $downloads/slack.deb

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update
sudo apt-get install spotify-client

echo '\nInstall Heroku\n'

curl https://cli-assets.heroku.com/install-ubuntu.sh | sh

heroku login

## Fix any broken Packages
sudo apt-get install -f

## Configure apps

echo 'What is your atom sync github token:'
read token
echo 'What is your sync gist id:'
read gistId

apm install sync-settings

GITHUB_TOKEN=$token GIST_ID=$gistId atom
