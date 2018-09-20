#!/bin/bash

###############################################################################
# General                                                                     #
###############################################################################

#Run the script for INSTALL
#Entering as Root
echo "Enter root password..."
sudo -v

#Keep alive Root
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

#Installing XCode Command Line Tools
echo "Installing XCode CL tools..."
xcode-select --install

###############################################################################
# Installing and updating Homebrew                                            #
###############################################################################

#Installing Brew
if test ! $(which brew); then
  echo "Installing Homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

#Check Brews
brew doctor
brew update
brew upgrade --all

#Installing Repositories
echo "Installing Brew Cask and MAS..."
brew install cask
brew tap buo/cask-upgrade
brew install mas

###############################################################################
# Installing applications                                                     #
###############################################################################

#Installing essential apps
brew cask install --appdir="/Applications" appcleaner
brew cask install --appdir="/Applications" dropbox
brew cask install --appdir="/Applications" google-chrome
brew cask install --appdir="/Applications" skype
brew cask install --appdir="/Applications" spotify
brew cask install --appdir="/Applications" the-unarchiver
brew cask install --appdir="/Applications" transmission
brew cask install --appdir="/Applications" vlc
#Numbers
mas install 409203825
#Pages
mas install 409201541

###############################################################################
# Installing Quicklook plugins                                                #
###############################################################################

#Installing Quick Look plugins
echo "Installing QL Plugins..."
brew cask install qlcolorcode
brew cask install qlstephen
brew cask install qlmarkdown
brew cask install qlimagesize
brew cask install webpquicklook
brew cask install suspicious-package
brew cask install qlvideo

###############################################################################
# Installing binary commands                                                  #
###############################################################################

#Installing Commands
echo "Installing Binary commands..."
brew install bash
brew install htop
brew install nano
brew install tree
brew install wget --with-iri

###############################################################################
# Configure macOS                                                             #
###############################################################################

#Finder
printf "Configuring Finder\n"
printf "Finder: show file extension\n"
defaults write -g AppleShowAllExtensions -bool true
printf "Finder: show hidden files\n"
defaults write com.apple.finder AppleShowAllFiles true
printf "Finder: show Library folder\n"
chflags nohidden ~/Library
printf "Finder: show path bar\n"
defaults write com.apple.finder ShowPathbar -bool true
printf "Finder: set current folder as default search\n"
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"
printf "Finder: keep folders on top\n"
defaults write com.apple.finder _FXSortFoldersFirst -bool true
printf "Finder: disable creation of metadata files on Network and USB\n"
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true
printf "Finder: remove open-with duplicates\n"
/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user
printf "Finder: save screenshots in PNG format\n"
defaults write com.apple.screencapture type -string "png"
printf "Finder: show HD icons on Desktop\n"
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true
printf "Finder: set sidebar icon size to medium\n"
defaults write NSGlobalDomain NSTableViewDefaultSizeMode -int 2

#Trackpad
printf "Configuring Trackpad\n"
printf "Trackpad: enable tap to click\n"
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
printf "Trackpad: disable Natural scrolling\n"
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false

#Safari
printf "Safari: disable Apple send queries\n"
defaults write com.apple.Safari UniversalSearchEnabled -bool false
defaults write com.apple.Safari SuppressSearchSuggestions -bool true
printf "Safari: don't open safe files\n"
defaults write com.apple.Safari AutoOpenSafeDownloads -bool false
printf "Safari: show favorites bar\n"
defaults write com.apple.Safari ShowFavoritesBar -bool true

#Others
printf "Disable hibernation\n"
sudo pmset -a hibernatemode 0
printf "Security: enable firewall\n"
sudo /usr/libexec/ApplicationFirewall/socketfilterfw --setglobalstate on
printf "Check for software updates daily\n"
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1
printf "Game Center: disable Game Center\n"
defaults write com.apple.gamed Disabled -bool true
printf "TimeMachine: prevent from prompting to use new hard drives as backup volume"
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true

###############################################################################
# Final touches                                                               #
###############################################################################

# Cleanup
brew upgrade && brew update && brew cleanup && brew cask cleanup

#Exit script
exit
