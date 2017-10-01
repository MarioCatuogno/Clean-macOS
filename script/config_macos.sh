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

#Exit script
echo "Done. Some of these changes require a restart to take effect."
exit