#!/bin/bash

echo '\nInstall Homebrew\n'
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo '\nInstall Brew Bundle\n'

# Account logins
firebase login
heroku login
