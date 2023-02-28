#!/bin/bash

###############################################################################
# Set variables                                                               #
###############################################################################

BIN="${HOME}/Clean-macOS/bin"                # shell scripts
CONFIG="${HOME}/Clean-macOS/config"          # configuration files directory
SETUP="${HOME}/Clean-macOS"                  # root folder of Clean-macOS
SUDO_USER=$(whoami)                  # sudo user variable

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

# Update Mac App Store applications
printf "⚙️ Updating Mac App Store applications...\n"
outdated_apps=$(mas outdated)
if [ ! -z "$outdated_apps" ]
then
    while IFS= read -r app; do
        app_id=$(echo "$app" | awk '{ print $1 }')
        app_name=$(echo "$app" | awk '{$1=""; print $0}')
        printf "Updating %s...\n" "$app_name"
        mas upgrade "$app_id"
    done <<< "$outdated_apps"
fi

# Cleanup
printf "⚙️ Cleaning up Homebrew...\n"
brew cleanup -s && brew doctor && brew upgrade --cask --greedy

# Exit script
exit
