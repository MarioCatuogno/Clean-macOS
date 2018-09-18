#!/bin/bash

#Close System Preferences panes
osascript -e 'tell application "System Preferences" to quit'

#Entering as Root
printf "Enter root password...\n"
sudo -v

#Keep alive Root
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

###############################################################################
# Finder                                                                      #
###############################################################################

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
printf "Finder: set list view by default\n"
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"
printf "Finder: keep folders on top\n"
defaults write com.apple.finder _FXSortFoldersFirst -bool true
printf "Finder: disable creation of metadata files on Network and USB\n"
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true
printf "Finder: remove open-with duplicates\n"
/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user
printf "Finder: save screenshots in PNG format\n"
mkdir ${HOME}/Pictures/Screenshots
defaults write com.apple.screencapture location -string "${HOME}/Pictures/Screenshots"
defaults write com.apple.screencapture type -string "png"
printf "Finder: show HD icons on Desktop\n"
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true
printf "Finder: set sidebar icon size to medium\n"
defaults write NSGlobalDomain NSTableViewDefaultSizeMode -int 2
printf "Finder: show full path\n"
defaults write com.apple.finder _FXShowPosixPathInTitle -bool YES
printf "Finder: show item info near icons on the desktop and in other icon views\n"
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:showItemInfo true" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :FK_StandardViewSettings:IconViewSettings:showItemInfo true" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:showItemInfo true" ~/Library/Preferences/com.apple.finder.plist
printf "Finder: show item info to the right of the icons on the desktop\n"
/usr/libexec/PlistBuddy -c "Set DesktopViewSettings:IconViewSettings:labelOnBottom false" ~/Library/Preferences/com.apple.finder.plist
printf "Finder: enable snap-to-grid for icons on the desktop and in other icon views\n"
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :FK_StandardViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist
printf "Finder: set grid spacing for icons on the desktop and in other icon views\n"
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:gridSpacing 100" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :FK_StandardViewSettings:IconViewSettings:gridSpacing 100" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:gridSpacing 100" ~/Library/Preferences/com.apple.finder.plist
printf "Finder: set the size of icons on the desktop and in other icon views\n"
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:iconSize 48" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :FK_StandardViewSettings:IconViewSettings:iconSize 48" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:iconSize 48" ~/Library/Preferences/com.apple.finder.plist

###############################################################################
# Dock                                                                        #
###############################################################################

printf "Configuring Dock\n"
printf "Dock: set icon size\n"
defaults write com.apple.dock tilesize -int 40
printf "Dock: disable dashboard\n"
defaults write com.apple.dashboard mcx-disabled -bool true
defaults write com.apple.dock dashboard-in-overlay -bool true
printf "Dock: remove animation\n"
defaults write com.apple.dock autohide-time-modifier -float 0
defaults write com.apple.dock autohide-delay -float 0
printf "Dock: automatically hide\n"
defaults write com.apple.dock autohide -bool true

###############################################################################
# Keyboard                                                                    #
###############################################################################

printf "Configuring Keyboard\n"
printf "Keyboard: disable auto-correct\n"
defaults write -g NSAutomaticSpellingCorrectionEnabled -bool false
printf "Keyboard: enable key-repeat\n"
defaults write -g ApplePressAndHoldEnabled -bool false
printf "Keyboard: set repeat rate to 2\n"
defaults write -g KeyRepeat -int 2
printf "Keyboard: disable automatic capitalization\n"
defaults write -g NSAutomaticCapitalizationEnabled -bool false
printf "Keyboard: disable automatic period substitution\n"
defaults write -g NSAutomaticPeriodSubstitutionEnabled -bool false
printf "Keyboard: disable smart dashes\n"
defaults write -g NSAutomaticDashSubstitutionEnabled -bool false
printf "Keyboard: disable smart quotes\n"
defaults write -g NSAutomaticQuoteSubstitutionEnabled -bool false
printf "Keyboard: disable cotninuous spell checking\n"
defaults write com.apple.messageshelper.MessageController SOInputLineSettings -dict-add "continuousSpellCheckingEnabled" -bool false

###############################################################################
# Trackpad                                                                    #
###############################################################################

printf "Configuring Trackpad\n"
printf "Trackpad: enable tap to click\n"
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
printf "Trackpad: disable Natural scrolling\n"
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false

###############################################################################
# SSD                                                                         #
###############################################################################

printf "Disable hibernation\n"
sudo pmset -a hibernatemode 0

###############################################################################
# Security                                                                    #
###############################################################################

printf "Configuring Security\n"
printf "Security: enable firewall\n"
sudo /usr/libexec/ApplicationFirewall/socketfilterfw --setglobalstate on

###############################################################################
# Mail                                                                        #
###############################################################################

printf "Configuring Mail.app\n"
printf "Mail: show attachments as icons\n"
defaults write com.apple.mail DisableInlineAttachmentViewing -bool yes
printf "Mail: disable autocorrect\n"
defaults write com.apple.mail SpellCheckingBehavior -string "NoSpellCheckingEnabled"

###############################################################################
# Safari                                                                      #
###############################################################################

printf "Configuring Safari.app\n"
printf "Safari: disable Apple send queries\n"
defaults write com.apple.Safari UniversalSearchEnabled -bool false
defaults write com.apple.Safari SuppressSearchSuggestions -bool true
printf "Safari: don't open safe files\n"
defaults write com.apple.Safari AutoOpenSafeDownloads -bool false
printf "Safari: show favorites bar\n"
defaults write com.apple.Safari ShowFavoritesBar -bool true
printf "Safari: enable develop menu\n"
defaults write com.apple.Safari IncludeDevelopMenu -bool true
printf "Safari: disable auto-correct\n"
defaults write com.apple.Safari WebAutomaticSpellingCorrectionEnabled -bool false

###############################################################################
# Various                                                                     #
###############################################################################

printf "Check for software updates daily\n"
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1
printf "Game Center: disable Game Center\n"
defaults write com.apple.gamed Disabled -bool true
printf "TimeMachine: prevent from prompting to use new hard drives as backup volume"
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true
printf "Enable FileVault encryption"
sudo fdesetup enable

#Exit script
printf "Done. Some of these changes require a restart to take effect\n"
exit
