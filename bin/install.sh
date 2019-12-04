#!/bin/bash

# DATE: 2019-12-31
# VERSION: 1.9.0

###############################################################################
# Set variables                                                               #
###############################################################################

SETUP=~/cleanMacOS/setup
PROFILE=$1

###############################################################################
# Launch script                                                               #
###############################################################################

# Entering as Root
printf "Enter root password...\n"
sudo -v

# Keep alive Root
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

###############################################################################
# Install dependencies                                                        #
###############################################################################

# Install XCode Command Line Tools
printf "🥡 Installing XCode CL tools...\n"
xcode-select --install

# Install Brew
printf "🥡 Check Brew...\n"
if test ! $(which brew); then
  printf "🥡 Installing Homebrew...\n"
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  brew doctor && brew update && brew upgrade
  exit
fi

# Check Brews
brew doctor && brew update && brew upgrade

# Tap Repositories
printf "🥡 Installing Brew Cask and MAS...\n"
brew install mas
brew tap homebrew/cask-fonts

###############################################################################
# Install apps                                                                #
###############################################################################

# Install Homebrew apps
while IFS="" read -r p || [ -n "$p" ]
do
  printf '%s\n' "🍺 Installing $p..."
  brew install --appdir="/Applications" $p
done < $SETUP/$PROFILE_config_brew.txt

# Install Homebrew Cask apps
while IFS="" read -r p || [ -n "$p" ]
do
  printf '%s\n' "🍻 Installing $p..."
  brew cask install --appdir="/Applications" $p
done < $SETUP/$PROFILE_config_cask.txt

# Install MAS apps
while IFS="" read -r p || [ -n "$p" ]
do
  printf '%s\n' "🍎 Installing $p..."
  mas install $p
done < $SETUP/$PROFILE_config_mas.txt
