#!/bin/bash

# NAME: Clean macOS script
# DESC: Install additional apps for macOS
# DATE: 26-09-2018
# VERSION: 1.5.0

###############################################################################
# Launch script                                                               #
###############################################################################

#Entering as Root
echo "Enter root password..."
sudo -v

#Keep alive Root
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

###############################################################################
# Installing Applications                                                     #
###############################################################################

#Installing extra useful apps
printf "Installing Alfred.app...\n"
brew cask install --appdir="/Applications" alfred
printf "Installing Expressvpn.app...\n"
brew cask install --appdir="/Applications" expressvpn
printf "Installing Steermouse.app...\n"
brew cask install --appdir="/Applications" steermouse

#Installing extra useful apps from Mac App Store
printf "Installing Amphetamine.app...\n"
mas install 937984704
printf "Installing Keynote.app...\n"
mas install 409183694
printf "Installing Magnet.app...\n"
mas install 441258766
printf "Installing Numbers.app...\n"
mas install 409203825
printf "Installing Pages.app...\n"
mas install 409201541
printf "Installing Popclip.app...\n"
mas install 445189367
printf "Installing Spark.app...\n"
mas install 1176895641
printf "Installing Wipr.app...\n"
mas install 1320666476
