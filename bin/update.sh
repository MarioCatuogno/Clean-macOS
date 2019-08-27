#!/bin/bash

# NAME: Clean macOS UPDATE script
# DESC: Update script for clean macOS
# DATE: 2019-09-30
# VERSION: 1.7.0

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

brew doctor && brew update && brew upgrade && brew cleanup && mas upgrade

###############################################################################
# Config                                                                      #
###############################################################################

#Download GIT settings
printf "Git: update preferences\n"
curl https://raw.githubusercontent.com/MarioCatuogno/Clean-macOS/master/config/.gitignore -o ~/.gitignore

#Download Visual Studio Code settings
printf "Visual Studio Code: update preferences\n"
curl https://raw.githubusercontent.com/MarioCatuogno/Clean-macOS/master/config/settings.json -o ~/Library/Application\ Support/Code/User/settings.json

#Download ZSH settings
printf "ZSH: update preferences\n"
curl https://raw.githubusercontent.com/MarioCatuogno/Clean-macOS/master/config/.zshrc -o ~/.zshrc

#Exit script
exit
