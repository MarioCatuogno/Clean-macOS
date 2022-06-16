#!/bin/bash

###############################################################################
# Set variables                                                               #
###############################################################################

BIN=~/Clean-macOS/bin                # shell scripts
CONFIG=~/Clean-macOS/config          # configuration files directory
SETUP=~/Clean-macOS                  # root folder of Clean-macOS
SUDO_USER=$(whoami)                  # sudo user variable

###############################################################################
# Update                                                                      #
###############################################################################

# Entering as Root
printf "Enter root password...\n"
sudo -v

# Keep alive Root
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Cleanup
printf "⚙️ Cleanup and final touches...\n"
brew -v update && brew -v upgrade && mas upgrade && brew -v cleanup --prune=2 && brew doctor && brew -v upgrade --casks --greedy 

#Exit script
exit
