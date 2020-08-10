#!/bin/bash

###############################################################################
# Set variables                                                               #
###############################################################################

BIN=~/cleanMacOS/bin                # shell scripts
CONFIG=~/cleanMacOS/config          # configuration files directory
SETUP=~/cleanMacOS                  # root folder of cleanMacOS

###############################################################################
# Launch script                                                               #
###############################################################################

# Entering as Root
printf "Enter root password...\n"
sudo -v

# Keep alive Root
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

###############################################################################
# Install apps                                                                #
###############################################################################

# Install Homebrew apps
printf "📦 Installing Apps...\n"
brew bundle --file=$SETUP/Brewfile

###############################################################################
# Final touches                                                               #
###############################################################################

# Cleanup
printf "📦 Cleanup and final touches...\n"
brew -v update && brew -v upgrade && brew cask upgrade && mas upgrade && brew -v cleanup --prune=5 && brew doctor

#Exit script
exit
