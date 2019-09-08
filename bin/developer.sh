#!/bin/bash

# DATE: 2019-10-31
# VERSION: 1.8.0

###############################################################################
# Launch script                                                               #
###############################################################################

# Entering as Root
printf "Enter root password...\n"
sudo -v

# Keep alive Root
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

###############################################################################
# Install HomeBrew                                                            #
###############################################################################

# Install XCode Command Line Tools
printf "🏗️  Install XCode CL tools...\n"
xcode-select --install

# Install Brew
printf "🏗️  Check Brew...\n"
if test ! $(which brew); then
  echo "🏗️  Install Homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Check Brews
brew doctor && brew update && brew upgrade

# Tap Repositories
printf "🏗️  Install Brew Cask and MAS..."
brew install mas
brew tap homebrew/cask-fonts

###############################################################################
# Install binary commands                                                     #
###############################################################################

printf "⚙️  Install Binary commands...\n"

###############################################################################
# Install Applications                                                        #
###############################################################################

# 🛠️ Developer Tools
printf "🛠️  Install DBeaver.app...\n"
brew cask install --appdir="/Applications" dbeaver-community

printf "🛠️  Install Docker.app...\n"
brew cask install --appdir="/Applications" docker

# 🍿 Entertainment
printf "🍿  Install Handbrake.app...\n"
brew cask install --appdir="/Applications" handbrake

printf "🍿  Install Iina.app...\n"
brew cask install --appdir="/Applications" iina

# 🎲 Games
printf "🎲  Install Steam.app...\n"
brew cask install --appdir="/Applications" steam

# 🏞️ Graphics & Design
printf "🏞️  Install Imageoptim.app...\n"
brew cask install --appdir="/Applications" imageoptim

# 🧭 Navigation
printf "🧭  Install Firefox.app...\n"
brew cask install --appdir="/Applications" firefox

# 📝 Productivity
printf "📝  Install Popclip.app...\n"
mas install 445189367

printf "📝  Install Spark.app...\n"
mas install 1176895641

# 🔑 Security

# 🥳 Social
printf "🥳  Install Franz.app...\n"
brew cask install --appdir="/Applications" franz

# 🧮 Utilities

###############################################################################
# Install Fonts                                                               #
###############################################################################

# 💬 Fonts
printf "💬  Install Comic-Neue font...\n"
brew cask install font-comic-neue

printf "💬  Install Fira-code font...\n"
brew cask install font-fira-code

printf "💬  Install Hack font...\n"
brew cask install font-hack

printf "💬  Install Heavy-Data Nerd font...\n"
brew cask install font-heavydata-nerd-font

printf "💬  Install Lato font...\n"
brew cask install font-lato

printf "💬  Install Roboto font...\n"
brew cask install font-roboto

printf "💬  Install Ubuntu-mono Nerd font...\n"
brew cask install font-ubuntumono-nerd-font

###############################################################################
# Install Python                                                              #
###############################################################################

# ⚙️ Install Python [1/2]
printf "⚙️  Install Python3...\n"
brew install python3

# ⚙️ Download Python packages [2/2]
printf "⚙️  Download Python packages...\n"
pip3 install autopep8
pip3 install jupyter
pip3 install numpy
pip3 install organize-tool
pip3 install pandas
pip3 install pylint
pip3 install requests
pip3 install speedtest-cli
pip3 install virtualenv
