#!/bin/bash

###############################################################################
# Set variables                                                               #
###############################################################################

BIN=~/Clean-macOS/bin                # shell scripts
CONFIG=~/Clean-macOS/config          # configuration files directory
SETUP=~/Clean-macOS                  # root folder of Clean-macOS
SUDO_USER=$(whoami)                  # sudo user variable

###############################################################################
# Install                                                                     #
###############################################################################

# Entering as Root
printf "Enter root password...\n"
sudo -v

# Keep alive Root
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Install Brew
printf "⚙️ Check Brew...\n"
if test ! $(which brew); then

  # Install Homebrew
    printf "📦 Installing XCode CL tools...\n"
    xcode-select --install
    
    printf "📦 Installing Homebrew...\n"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/$SUDO_USER/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"
    
  # Install MAS
    printf "📦 Installing MAS...\n"
    brew install mas
    
  # Check Brews
    brew -v update && brew -v upgrade && mas upgrade && brew -v cleanup --prune=2 && brew doctor
    
  # Install Homebrew apps
    printf "📦 Installing Apps...\n"
    sudo -u $SUDO_USER brew bundle --file=$SETUP/Brewfile
    
  # Cleanup
    printf "⚙️ Cleanup and final touches...\n"
    brew -v update && brew -v upgrade && mas upgrade && brew -v cleanup --prune=2 && brew doctor && brew -v upgrade --casks --greedy
    
else
    # Exit script
    printf "📦 Homebrew is already installed...\n"
    
    exit

fi

exit
