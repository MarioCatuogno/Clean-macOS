#!/bin/bash

#Entering as Root
echo "Enter root password..."
sudo -v

#Keep alive Root
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

#Installing XCode Command Line Tools
echo "Installing XCode CL tools..."
xcode-select --install

#Installing Brew
echo "Installing Brew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#Installing Archey
echo "Installing Achey..."
brew install archey

#Installing Cask
echo "Installing Brew Cask..."
brew cask install --appdir="/Applications" cakebrew

#Installing Utility apps
echo "Installing Utility apps..."
brew cask install --appdir="/Applications" appcleaner
brew cask install --appdir="/Applications" cheatsheet
brew cask install --appdir="/Applications" dropbox
brew cask install --appdir="/Applications" the-unarchiver
brew cask install --appdir="/Applications" transmission

#Installing Social apps
echo "Installing Social apps..."
brew cask install --appdir="/Applications" skype
brew cask install --appdir="/Applications" spotify
brew cask install --appdir="/Applications" franz

#Installing Multimedia apps
echo "Installing Multimedia apps..."
brew cask install --appdir="/Applications" iina
brew cask install --appdir="/Applications" handbrake

#Installing Gaming apps
echo "Installing Gaming apps..."
brew cask install --appdir="/Applications" steam
brew cask install --appdir="/Applications" usb-overdrive

#Installing Developing tools
echo "Installing Developing tools..."
brew cask install --appdir="/Applications" docker
brew cask install --appdir="/Applications" github
brew cask install --appdir="/Applications" kitematic
brew cask install --appdir="/Applications" iterm2
brew cask install --appdir="/Applications" virtualbox
brew cask install --appdir="/Applications" visual-studio-code

#Installing Security apps
echo "Installing Security apps..."
brew cask install --appdir="/Applications" expressvpn

#Installing Shell
echo "Installing Shell..."
brew install zsh
curl -L http://install.ohmyz.sh | sh

#Installing Quick Look plugins
echo "Installing QL Plugins..."
brew cask install qlcolorcode
brew cask install qlstephen
brew cask install qlmarkdown
brew cask install qlimagesize
brew cask install qlvideo

#Installing Packages
echo "Installing Packages..."
brew install wget

#Installing R
echo "Installing R..."
brew install R
brew cask install --appdir="/Applications" rstudio
defaults write org.R-project.R force.LANG en_US.UTF-8

#Installing Python
echo "Installing Python..."
brew install python3
brew cask install --appdir="/Applications" rodeo
brew cask install --appdir="/Applications" miniconda
pip3 install jupyter
pip3 install numpy
pip3 install pandas
pip3 install matplotlib

# Cleanup
brew cleanup --force

#Exit script
exit
