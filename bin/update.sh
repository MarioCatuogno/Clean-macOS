#!/bin/bash

# DATE: 2019-12-31
# VERSION: 1.9.0

###############################################################################
# Launch script                                                               #
###############################################################################

# Entering as Root
printf "Enter root password...\n"
sudo -v

# Keep alive Root
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

###############################################################################
# Update apps                                                                 #
###############################################################################

printf "🥡 Update macOS...\n"
brew doctor && brew update && brew cleanup && brew upgrade && brew cask upgrade && mas upgrade
