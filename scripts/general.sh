#!/bin/bash

echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p

# Decrease swap usage to a more reasonable level
# vm.swappiness=10
