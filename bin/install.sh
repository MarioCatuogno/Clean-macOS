#!/bin/bash

set -e

###############################################################################
# Set variables                                                               #
###############################################################################

BIN="${HOME}/Clean-macOS/bin"                # shell scripts
CONFIG="${HOME}/Clean-macOS/config"          # configuration files directory
SETUP="${HOME}/Clean-macOS"                  # root folder of Clean-macOS
SUDO_USER="$(whoami)"                        # sudo user variable

###############################################################################
# Functions                                                                   #
###############################################################################

install_homebrew() {
  # Install Homebrew
  echo "📦 Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> "/Users/${SUDO_USER}/.zprofile"
  eval "$(/opt/homebrew/bin/brew shellenv)"
}

install_apps() {
  # Install Homebrew apps
  echo "📦 Installing Apps..."
  sudo -u "${SUDO_USER}" brew bundle --file="${SETUP}/Brewfile"
}

update_brew() {
  # Update and cleanup Homebrew
  echo "⚙️ Update and cleanup Homebrew..."
  brew -v update
  brew -v upgrade
  brew -v cleanup --prune=2
  brew doctor
  brew -v upgrade --casks --greedy
}

###############################################################################
# Install                                                                     #
###############################################################################

# Entering as Root
echo "Enter root password..."
sudo -v

# Keep alive Root
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Check if Homebrew is installed
if ! command -v brew >/dev/null 2>&1; then
  # Install Homebrew if not installed
  echo "📦 Homebrew is not installed."
  echo "📦 Installing XCode CL tools..."
  xcode-select --install
  install_homebrew
  update_brew
  install_apps
  echo "⚙️ Disabling Homebrew Analytics"
  brew analytics off
else
  echo "📦 Homebrew is already installed."
fi

exit
