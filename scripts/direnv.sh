#!/bin/bash


echo '\nInstall Direnv\n'

sudo apt -y install direnv

# direnv
eval "$(direnv hook $SHELL)"
