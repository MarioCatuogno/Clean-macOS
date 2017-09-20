#!/bin/bash

#Entering as Root
echo "Enter root password..."
sudo su

#Installing Brew
echo "Installing Brew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#Installing Cask
echo "Installing Brew Cask..."
brew tap caskroom/cask

#Installing XCode Command Line Tools
echo "Installing XCode CL tools..."
xcode-select --install

#Installing Utility apps
echo "Installing Utility apps..."
brew cask install appcleaner
brew cask install cheatsheet
brew cask install dropbox
brew cask install teamviewer
brew cask install the-unarchiver
brew cask install transmission

#Installing Social apps
echo "Installing Social apps..."
brew cask install franz
brew cask install skype
brew cask install spotify

#Installing Multimedia apps
echo "Installing Multimedia apps..."
brew cask install vlc

#Installing Developing tools
echo "Installing Developing tools..."
brew cask install github-desktop
brew cask install iterm2
brew cask install virtualbox
brew cask install visual-studio-code

#Installing Shell
echo "Installing Shell..."
brew install zsh
curl -L http://install.ohmyz.sh | sh

#Installing R
echo "Installing R..."
brew tap homebrew/science
brew install R
brew cask install rstudio
defaults write org.R-project.R force.LANG en_US.UTF-8

#Exit script
exit