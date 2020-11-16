#!/bin/bash

###############################################################################
# Set variables                                                               #
###############################################################################

BIN=~/Clean-macOS/bin                # shell scripts
CONFIG=~/Clean-macOS/config          # configuration files directory
SETUP=~/Clean-macOS                  # root folder of Clean-macOS

###############################################################################
# Update                                                                      #
###############################################################################

# Entering as Root
printf "Enter root password...\n"
sudo -v

# Keep alive Root
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Update Visual Studio Code settings
printf "⚙️ Update Visual Studio Code settings...\n"
sudo rm -rf ~/Library/Application\ Support/Code/User/settings.json > /dev/null 2>&1
curl https://raw.githubusercontent.com/MarioCatuogno/Clean-macOS/master/config/settings.json -o ~/Library/Application\ Support/Code/User/settings.json

# Update Git settings
printf "⚙️ Update Git settings...\n"
sudo rm -rf ~/.gitignore > /dev/null 2>&1
curl https://raw.githubusercontent.com/MarioCatuogno/Clean-macOS/master/config/.gitignore -o ~/.gitignore

# Cleanup
printf "⚙️ Cleanup and final touches...\n"
brew -v update && brew -v upgrade && mas upgrade && brew -v cleanup --prune=2 && brew doctor && brew -v upgrade --casks --greedy 

#Exit script
exit
