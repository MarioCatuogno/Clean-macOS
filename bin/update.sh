#!/bin/bash

###############################################################################
# Set variables                                                               #
###############################################################################

BIN="${HOME}/Clean-macOS/bin"                # shell scripts
CONFIG="${HOME}/Clean-macOS/config"          # configuration files directory
SETUP="${HOME}/Clean-macOS"                  # root folder of Clean-macOS
SUDO_USER=$(whoami)                          # sudo user variable

###############################################################################
# Update                                                                      #
###############################################################################

# Check if Homebrew is installed
if ! command -v brew &> /dev/null
then
    echo "Homebrew is not installed. Aborting."
    exit 1
fi

# Entering as Root
printf "Enter root password...\n"
sudo -v

# Keep alive Root
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Update Homebrew
printf "⚙️ Updating Homebrew...\n"
brew update-reset

# Cleanup
printf "⚙️ Cleaning up Homebrew...\n"
brew cleanup -s && brew doctor && brew upgrade --cask --greedy

# Exit script
exit
