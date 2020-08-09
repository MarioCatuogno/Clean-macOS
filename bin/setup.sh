#!/bin/bash

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
# Install dependencies                                                        #
###############################################################################

# Install XCode Command Line Tools
printf "📦 Installing XCode CL tools...\n"
xcode-select --install

# Install Brew
printf "📦 Check Brew...\n"
if test ! $(which brew); then
  printf "📦 Installing Homebrew...\n"
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  printf "📦 Homebrew is already installed...\n"
  exit
fi
# Change permissions
brew -v
sudo chown -R $USER /usr/local/Cellar

# Check Brews
brew doctor && brew update && brew upgrade

# Install MAS
printf "📦 Installing Brew Cask and MAS...\n"
brew install mas

###############################################################################
# Final touches                                                               #
###############################################################################

# Cleanup
printf "📦 Cleanup and final touches...\n"
brew doctor && brew update && brew cleanup && brew upgrade && brew cask upgrade && mas upgrade

#Exit script
exit
