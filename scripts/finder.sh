#!/bin/bash

echo 'Show Library folder'
chflags nohidden ~/Library

echo 'Show hidden files'
defaults write com.apple.finder AppleShowAllFiles YES

echo 'Show path bar'
defaults write com.apple.finder ShowPathbar -bool true

echo 'Show status bar'
defaults write com.apple.finder ShowStatusBar -bool true
