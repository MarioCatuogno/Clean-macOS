#!/bin/bash

# DATE: 2019-12-31
# VERSION: 1.9.0

###############################################################################
# Set variables                                                               #
###############################################################################

CONFIG=~/cleanMacOS/config
SETUP=~/cleanMacOS

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
  printf "🥡 Homebrew is already installed...\n"
  exit
fi

# Check Brews
brew doctor && brew update && brew upgrade

# 
printf "🥡 Installing Brew Cask and MAS...\n"
brew install mas
brew -v
sudo chown -R $USER /usr/local/Cellar

###############################################################################
# Configure MAS                                                              #
###############################################################################

###############################################################################
# Final touches                                                               #
###############################################################################

# Cleanup
printf "🥡 Cleanup and final touches...\n"
brew doctor && brew update && brew cleanup && brew upgrade && brew cask upgrade && mas upgrade

#Exit script
printf "Done. Some of these changes require a restart to take effect\n"
sudo shutdown -r +1

#Exit script
exit
