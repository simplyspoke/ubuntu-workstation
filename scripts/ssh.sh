#!/bin/bash

echo '\nSetup SSH Configurations\n'

cd ~/
ssh-keygen -t rsa -C $USEREMAIL
nano .ssh/config
