#!/bin/bash

# DATE: 2020-01-11
# VERSION: 1.9.2

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
# Update config files                                                         #
###############################################################################

printf "⚙️ Update Zsh settings...\n"
sudo rm -rf ~/.zshrc > /dev/null 2>&1
curl https://raw.githubusercontent.com/MarioCatuogno/Clean-macOS/master/config/.zshrc -o ~/.zshrc

printf "⚙️ Update Visual Studio Code settings...\n"
sudo rm -rf ~/Library/Application\ Support/Code/User/settings.json > /dev/null 2>&1
curl https://raw.githubusercontent.com/MarioCatuogno/Clean-macOS/master/config/settings.json -o ~/Library/Application\ Support/Code/User/settings.json

printf "⚙️ Update Git settings...\n"
sudo rm -rf ~/.gitignore > /dev/null 2>&1
curl https://raw.githubusercontent.com/MarioCatuogno/Clean-macOS/master/config/.gitignore -o ~/.gitignore

###############################################################################
# Update apps                                                                 #
###############################################################################

printf "📦 Update macOS...\n"
brew doctor && brew update && brew cleanup && brew upgrade && brew cask upgrade && mas upgrade
