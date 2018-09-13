#!/bin/bash

echo '\nSetup Node.js Configurations\n'
cd $HOME/Downloads
curl -L https://git.io/n-install | bash -s -- -y

echo '\nInstall Node.js v8.10 as it is the latest available in AWS Lambda\n'
n 8.10

npm -g install \
aws-cdk \
aws-sdk \
commitizen \
cz-conventional-changelog \
git-run \
prettier \
serverless

echo '{ "path": "cz-conventional-changelog" }' > ~/.czrc
