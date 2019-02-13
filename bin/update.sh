#!/bin/bash

# NAME: Clean macOS UPDATE script
# DESC: Update script for clean macOS
# DATE: 13-02-2019
# VERSION: 1.6.0

###############################################################################
# Launch script                                                               #
###############################################################################

#Entering as Root
printf "Enter root password...\n"
sudo -v

#Keep alive Root
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

###############################################################################
# Update                                                                      #
###############################################################################

brew update && brew upgrade && brew cleanup && brew doctor && mas upgrade

###############################################################################
# Config                                                                      #
###############################################################################

#Download GIT settings
printf "Git: update preferences\n"
curl https://raw.githubusercontent.com/MarioCatuogno/Clean-macOS/master/config/.gitignore -o ~/.gitignore
curl https://raw.githubusercontent.com/MarioCatuogno/Clean-macOS/master/config/.gitconfig -o ~/.gitconfig

#Download Visual Studio Code settings
printf "Visual Studio Code: update preferences\n"
curl https://raw.githubusercontent.com/MarioCatuogno/Clean-macOS/master/config/settings.json -o ~/Library/Application\ Support/Code/User/settings.json

#Download ZSH settings
printf "ZSH: update preferences\n"
curl https://raw.githubusercontent.com/MarioCatuogno/Clean-macOS/master/config/.zshrc -o ~/.zshrc

#Exit script
exit
