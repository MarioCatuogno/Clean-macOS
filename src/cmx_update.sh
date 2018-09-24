#!/bin/bash

###############################################################################
# General                                                                     #
###############################################################################

#Run the script for INSTALL
#Entering as Root
echo "Enter root password..."
sudo -v

#Keep alive Root
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

###############################################################################
# Configuration                                                               #
###############################################################################

#Git
printf "Git: update preferences\n"
curl https://raw.githubusercontent.com/MarioCatuogno/Clean-macOS/master/config/.gitignore -o ~/.gitignore

#Visual Studio Code
printf "Visual Studio Code: update preferences\n"
curl https://raw.githubusercontent.com/MarioCatuogno/Clean-macOS/master/config/settings.json -o ~/Library/Application\ Support/Code/User/settings.json

#ZSH
printf "ZSH: update preferences\n"
curl https://raw.githubusercontent.com/MarioCatuogno/Clean-macOS/master/config/.zshrc -o ~/.zshrc

###############################################################################
# Update                                                                      #
###############################################################################

brew update && brew upgrade && brew cleanup && brew cleanup && brew doctor

#Exit script
exit
