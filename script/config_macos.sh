#!/bin/bash

#Close System Preferences panes
osascript -e 'tell application "System Preferences" to quit'

#Entering as Root
echo "Enter root password..."
sudo -v

#Keep alive Root
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

#1. Various configuration
echo "Various setup..."

#Remove duplicates from "Open with" menu
/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user

#Reveal useful info in login window
sudo defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName

#Disable automatic capitalization
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false

#Disable smart dashes
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

#Disable automatic period substitution
defaults write NSGlobalDomain NSAutomaticPeriodSubstitutionEnabled -bool false

#Disable auto-correct
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

#2. Keyboard and Trackpad configuration
echo "Keyboard and Trackpad setup..."

#Trackpad: enable tap to click for this user and for the login screen
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

#Keyboard: set fast keyboard repeat rate
defaults write NSGlobalDomain KeyRepeat -int 1
defaults write NSGlobalDomain InitialKeyRepeat -int 10

#Save screenshots in PNG format
defaults write com.apple.screencapture type -string "png"

#3. Finder configuration
echo "Finder setup..."

#Show icons for HD on the desktop
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool true

#Finder: show filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

#Finder: show hidden files
defaults write com.apple.finder AppleShowAllFiles -bool true

#Finder: show status and path bar
defaults write com.apple.finder ShowStatusBar -bool false
defaults write com.apple.finder ShowPathbar -bool true

#Finder: keep folders on top
defaults write com.apple.finder _FXSortFoldersFirst -bool true

#Finder: search the current folder by default
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

#Finder: avoid creating .DS_Store files on USB volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

#Finder: list view by default
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"

#Finder: show hidden Library folder
chflags nohidden ~/Library

#Show item info near icons on the desktop and in other icon views
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:showItemInfo true" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :FK_StandardViewSettings:IconViewSettings:showItemInfo true" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:showItemInfo true" ~/Library/Preferences/com.apple.finder.plist

#Show item info to the right of the icons on the desktop
/usr/libexec/PlistBuddy -c "Set DesktopViewSettings:IconViewSettings:labelOnBottom false" ~/Library/Preferences/com.apple.finder.plist

#Enable snap-to-grid for icons on the desktop and in other icon views
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :FK_StandardViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist

#Increase grid spacing for icons on the desktop and in other icon views
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:gridSpacing 100" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :FK_StandardViewSettings:IconViewSettings:gridSpacing 100" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:gridSpacing 100" ~/Library/Preferences/com.apple.finder.plist

#Increase the size of icons on the desktop and in other icon views
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:iconSize 56" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :FK_StandardViewSettings:IconViewSettings:iconSize 56" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:iconSize 56" ~/Library/Preferences/com.apple.finder.plist

#Disable Dashboard
defaults write com.apple.dashboard mcx-disabled -bool true

#4. Safari configuration
echo "Safari setup..."

#Safari: don't send queries to Apple
defaults write com.apple.Safari UniversalSearchEnabled -bool false
defaults write com.apple.Safari SuppressSearchSuggestions -bool true

#Safari: don't open safe files
defaults write com.apple.Safari AutoOpenSafeDownloads -bool false

#Safari: show favorites bar
defaults write com.apple.Safari ShowFavoritesBar -bool true

#Safari: enable develop menu
defaults write com.apple.Safari IncludeDevelopMenu -bool true

#Safari: disable autocorrect
defaults write com.apple.Safari WebAutomaticSpellingCorrectionEnabled -bool false

#Safari: enable do-not-track
defaults write com.apple.Safari SendDoNotTrackHTTPHeader -bool true

#5. Mail configuration
echo "Mail setup..."

#Mail: disable inline attachments
defaults write com.apple.mail DisableInlineAttachmentViewing -bool true

#Mail: disable autocorrect
defaults write com.apple.mail SpellCheckingBehavior -string "NoSpellCheckingEnabled"

#6. Spotlight configuration
echo "Spotlight setup..."

#Spotlight configuration
defaults write com.apple.spotlight orderedItems -array \
	'{"enabled" = 1;"name" = "APPLICATIONS";}' \
	'{"enabled" = 1;"name" = "SYSTEM_PREFS";}' \
	'{"enabled" = 1;"name" = "DIRECTORIES";}' \
	'{"enabled" = 1;"name" = "PDF";}' \
	'{"enabled" = 1;"name" = "FONTS";}' \
	'{"enabled" = 0;"name" = "DOCUMENTS";}' \
	'{"enabled" = 0;"name" = "MESSAGES";}' \
	'{"enabled" = 0;"name" = "CONTACT";}' \
	'{"enabled" = 0;"name" = "EVENT_TODO";}' \
	'{"enabled" = 0;"name" = "IMAGES";}' \
	'{"enabled" = 0;"name" = "BOOKMARKS";}' \
	'{"enabled" = 0;"name" = "MUSIC";}' \
	'{"enabled" = 0;"name" = "MOVIES";}' \
	'{"enabled" = 0;"name" = "PRESENTATIONS";}' \
	'{"enabled" = 0;"name" = "SPREADSHEETS";}' \
	'{"enabled" = 0;"name" = "SOURCE";}' \
	'{"enabled" = 0;"name" = "MENU_DEFINITION";}' \
	'{"enabled" = 0;"name" = "MENU_OTHER";}' \
	'{"enabled" = 0;"name" = "MENU_CONVERSION";}' \
	'{"enabled" = 0;"name" = "MENU_EXPRESSION";}' \
	'{"enabled" = 0;"name" = "MENU_WEBSEARCH";}' \
	'{"enabled" = 0;"name" = "MENU_SPOTLIGHT_SUGGESTIONS";}'

#Load new settings before rebuilding the index
killall mds > /dev/null 2>&1
#Make sure indexing is enabled for the main volume
sudo mdutil -i on / > /dev/null
#Rebuild the index from scratch
sudo mdutil -E / > /dev/null

#7. Activity Monitor configuration
echo "Activity Monitor setup..."

#Activity Monitor configuration
defaults write com.apple.ActivityMonitor OpenMainWindow -bool true
defaults write com.apple.ActivityMonitor IconType -int 5
defaults write com.apple.ActivityMonitor ShowCategory -int 0
defaults write com.apple.ActivityMonitor SortColumn -string "CPUUsage"
defaults write com.apple.ActivityMonitor SortDirection -int 0

#Exit script
echo "Done. Some of these changes require a restart to take effect."
exit