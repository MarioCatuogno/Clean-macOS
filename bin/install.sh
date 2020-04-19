#!/bin/bash

# DATE: 2020-04-19
# VERSION: 1.10.0

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
printf "📦 Installing Apps...\n"
brew bundle --file=$SETUP/Brewfile

###############################################################################
# Install Miniconda                                                           #
###############################################################################

wget https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-x86_64.sh -O ~/miniconda.sh
zsh ~/miniconda.sh -b -p $HOME/miniconda
source $HOME/miniconda/bin/activate
conda init zsh
conda deactivate

###############################################################################
# Final touches                                                               #
###############################################################################

# Cleanup
printf "📦 Cleanup and final touches...\n"
brew doctor && brew update && brew cleanup && brew upgrade && brew cask upgrade && mas upgrade

#Exit script
exit
