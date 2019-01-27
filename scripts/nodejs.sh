#!/bin/bash

echo '\nSetup Node.js Configurations\n'
cd $HOME/Downloads
curl -L https://git.io/n-install | bash -s -- -y

echo '\nInstall Node.js v8.10 as it is the latest available in AWS Lambda\n'
n 8.10

npm -g install \
@angular/cli \
aws-cdk \
aws-sdk \
commitizen \
cz-conventional-changelog \
firebase-tools \
jest-cli \
npm-check-updates \
prettier \
serverless \
terminalizer \

echo '{ "path": "cz-conventional-changelog" }' > ~/.czrc

echo '\nInstalling Yarn\n'
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update && sudo apt-get install --no-install-recommends yarn


echo '\nFirebase Auth\n'
firebase login
