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

printf "Sublime Text: update preferences\n"
curl https://raw.githubusercontent.com/MarioCatuogno/Clean-macOS/master/config/subl.settings -o ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings
printf "Sublime Text: update packages\n"
curl https://raw.githubusercontent.com/MarioCatuogno/Clean-macOS/master/config/sublpkg.settings -o ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Package\ Control.sublime-settings
printf "Visual Studio Code: update preferences\n"
curl https://raw.githubusercontent.com/MarioCatuogno/Clean-macOS/master/config/vscode.settings -o ~/Library/Application\ Support/Code/User/settings.json

###############################################################################
# Update                                                                      #
###############################################################################
mas upgrade
brew upgrade && brew update && brew cleanup && brew cask cleanup && brew prune
brew doctor

#Exit script
exit
