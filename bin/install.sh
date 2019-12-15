#!/bin/bash

# DATE: 2019-12-31
# VERSION: 1.9.0

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
# Install apps                                                                #
###############################################################################

# Install Homebrew apps
printf "📦 Installing apps...\n"
BUNDLE=brew bundle check
if [ $BUNDLE -eq 0 ]; then
  printf "📦 Installing Apps...\n"
  brew bundle --file=$SETUP/Brewfile
else
  printf "📦 No Brewfile...\n"
  exit
fi


###############################################################################
# Final touches                                                               #
###############################################################################

# Cleanup
printf "📦 Cleanup and final touches...\n"
brew doctor && brew update && brew cleanup && brew upgrade && brew cask upgrade && mas upgrade

#Exit script
printf "Done. Some of these changes require a restart to take effect\n"
sudo shutdown -r +1

#Exit script
exit
