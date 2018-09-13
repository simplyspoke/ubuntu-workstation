#!/bin/bash

echo '\nInstall AWS CLI\n'
brew install awscli

if [ ! -d ~/.aws ]; then
  echo '\nCreate ~/.aws directory\n'
  mkdir ~/.aws
fi

if [ ! -f ~/.aws/config ]; then
  echo '\Setup AWS default configuration\n'
  echo 'What is the default AWS region you would like to use:'
  read region
  echo '[default]\n
  region = $region\n
  output = json\n
  \n
  \n' > ~/.aws/config
fi

if [ ! -f ~/.aws/credentials ]; then
  echo '\Setup AWS default credentials\n'
  echo 'What is your AWS access key ID:'
  read id
  echo 'What is your AWS secret access key:'
  read key
  echo '[default]\n
  aws_access_key_id = $id\n
  aws_secret_access_key = $key\n
  \n
  \n' > ~/.aws/credentials
fi
