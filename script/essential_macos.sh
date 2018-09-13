#!/bin/bash

#Close System Preferences panes
osascript -e 'tell application "System Preferences" to quit'

#Entering as Root
echo "Enter root password..."
sudo -v

#Keep alive Root
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# 01. Finder
echo "Configuring Finder"
echo "Finder: show file extension"
defaults write -g AppleShowAllExtensions -bool true
echo "Finder: show hidden files"
defaults write com.apple.finder AppleShowAllFiles true
echo "Finder: show Library folder"
chflags nohidden ~/Library
echo "Finder: show path bar"
defaults write com.apple.finder ShowPathbar -bool true
echo "Finder: set current folder as default search"
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"
echo "Finder: set list view by default"
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"
echo "Finder: keep folders on top"
defaults write com.apple.finder _FXSortFoldersFirst -bool true
echo "Finder: disable creation of metadata files on Network and USB"
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true
echo "Finder: remove open-with duplicates"
/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user
echo "Finder: save screenshots in PNG format"
defaults write com.apple.screencapture type -string "png"
echo "Finder: show HD icons on Desktop"
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool true
echo "Finder: set sidebar icon size to medium"
defaults write NSGlobalDomain NSTableViewDefaultSizeMode -int 2
echo "Finder: show full path"
defaults write com.apple.finder _FXShowPosixPathInTitle -bool YES

# 02. Keyboard
echo "Configuring Keyboard"
echo "Keyboard: disable auto-correct"
defaults write -g NSAutomaticSpellingCorrectionEnabled -bool false
echo "Keyboard: enable key-repeat"
defaults write -g ApplePressAndHoldEnabled -bool false
echo "Keyboard: set repeat rate to 2"
defaults write -g KeyRepeat -int 2
echo "Keyboard: disable automatic capitalization"
defaults write -g NSAutomaticCapitalizationEnabled -bool false
echo "Keyboard: disable automatic period substitution"
defaults write -g NSAutomaticPeriodSubstitutionEnabled -bool false
echo "Keyboard: disable smart dashes"
defaults write -g NSAutomaticDashSubstitutionEnabled -bool false

# 03. Security
echo "Configuring Security"
echo "Security: enable firewall"
sudo /usr/libexec/ApplicationFirewall/socketfilterfw --setglobalstate on

# 03. Mail
echo "Configuring Mail.app"
echo "Mail: show attachments as icons"
defaults write com.apple.mail DisableInlineAttachmentViewing -bool yes
echo "Mail: disable autocorrect"
defaults write com.apple.mail SpellCheckingBehavior -string "NoSpellCheckingEnabled"

# 04. Safari
echo "Configuring Safari.app"
echo "Safari: disable Apple send queries"
defaults write com.apple.Safari UniversalSearchEnabled -bool false
defaults write com.apple.Safari SuppressSearchSuggestions -bool true
echo "Safari: don't open safe files"
defaults write com.apple.Safari AutoOpenSafeDownloads -bool false
echo "Safari: show favorites bar"
defaults write com.apple.Safari ShowFavoritesBar -bool true
echo "Safari: enable develop menu"
defaults write com.apple.Safari IncludeDevelopMenu -bool true
echo "Safari: disable auto-correct"
defaults write com.apple.Safari WebAutomaticSpellingCorrectionEnabled -bool false

# 05. Trackpad
echo "Configuring Trackpad"
echo "Trackpad: enable tap to click"
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# 06. Installing Brew
echo "Installing XCode CL tools..."
xcode-select --install
echo "Installing Brew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
echo "Installing Achey..."
brew install archey
echo "Installing Brew Cask..."
brew cask install --appdir="/Applications" cakebrew

# 07. Installing Utility apps
echo "Installing Utility apps..."
brew cask install --appdir="/Applications" appcleaner
brew cask install --appdir="/Applications" cheatsheet
brew cask install --appdir="/Applications" dropbox
brew cask install --appdir="/Applications" the-unarchiver
brew cask install --appdir="/Applications" transmission

# 08. Installing Social apps
echo "Installing Social apps..."
brew cask install --appdir="/Applications" skype
brew cask install --appdir="/Applications" spotify
brew cask install --appdir="/Applications" franz

# 09. Installing Quick Look plugins
##echo "Installing QL Plugins..."
##brew cask install qlcolorcode
##brew cask install qlstephen
##brew cask install qlmarkdown
##brew cask install qlimagesize
##brew cask install qlvideo

#Exit script
brew cleanup --force
echo "Done. Some of these changes require a restart to take effect."
exit