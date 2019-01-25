#!/bin/bash

# NAME: Clean macOS script
# DESC: Setup a PRODUCTIVITY setup for macOS
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

#Installing Multimedia apps
printf "Installing Drawio.app...\n"
brew cask install --appdir="/Applications" drawio
printf "Installing Handbrake.app...\n"
brew cask install --appdir="/Applications" handbrake
printf "Installing Imageoptim.app...\n"
brew cask install --appdir="/Applications" imageoptim
printf "Installing Nucleo.app...\n"
brew cask install --appdir="/Applications" nucleo

###############################################################################
# Fonts                                                                       #
###############################################################################

#Installing fonts
printf "Installing Bebas-Neue font...\n"
brew cask install caskroom/fonts/font-bebas-neue
printf "Installing Comic-Neue font...\n"
brew cask install caskroom/fonts/font-comic-neue
printf "Installing Fira-code font...\n"
brew cask install caskroom/fonts/font-fira-code
printf "Installing Hack font...\n"
brew cask install caskroom/fonts/font-hack
printf "Installing Lato font...\n"
brew cask install caskroom/fonts/font-lato
printf "Installing Roboto font...\n"
brew cask install caskroom/fonts/font-roboto

###############################################################################
# Installing Quicklook plugins                                                #
###############################################################################

#Installing Quick Look plugins
printf "Installing QL Plugins...\n"
brew cask install qlcolorcode
brew cask install qlstephen
brew cask install qlmarkdown
brew cask install quicklook-json
brew cask install qlvideo
