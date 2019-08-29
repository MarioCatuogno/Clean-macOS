###############################################################################
# Installing Python                                                           #
###############################################################################

#Installing Python
printf "Installing Python3...\n"
brew install python3
printf "Installing Python packages...\n"
pip3 install autopep8
pip3 install jupyter
pip3 install numpy
pip3 install organize-tool
pip3 install pandas
pip3 install pylint
pip3 install requests
pip3 install speedtest-cli
pip3 install virtualenv

###############################################################################
# Configure macOS: Dock                                                       #
###############################################################################

printf "Configuring Dock...\n"
printf "Dock: set icon size\n"
defaults write com.apple.dock tilesize -int 40
printf "Dock: disable dashboard\n"
defaults write com.apple.dashboard mcx-disabled -bool true
defaults write com.apple.dock dashboard-in-overlay -bool true
printf "Dock: automatically hide\n"
defaults write com.apple.dock autohide -bool true
printf "Dock: remove animation\n"
defaults write com.apple.dock autohide-time-modifier -float 0
defaults write com.apple.dock autohide-delay -float 0
printf "Dock: show only active apps\n"
defaults write com.apple.dock static-only -bool true

###############################################################################
# Configure macOS: Finder                                                     #
###############################################################################

printf "Configuring Finder...\n"
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
printf "Finder: turn off window opening animation\n"
defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool false
printf "Finder: turn off file info animation\n"
defaults write com.apple.finder DisableAllAnimations -bool true

###############################################################################
# Configure macOS: Keyboard                                                   #
###############################################################################

printf "Configuring Keyboard...\n"
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
# Configure macOS: Mail                                                       #
###############################################################################

printf "Configuring Mail.app...\n"
printf "Mail: show attachments as icons\n"
defaults write com.apple.mail DisableInlineAttachmentViewing -bool yes
printf "Mail: disable autocorrect\n"
defaults write com.apple.mail SpellCheckingBehavior -string "NoSpellCheckingEnabled"

###############################################################################
# Configure macOS: Safari                                                     #
###############################################################################

printf "Configuring Safari.app...\n"
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
# Configure macOS: TextEdit                                                   #
###############################################################################

printf "Configuring TextEdit.app...n"
printf "TextEdit: use plain text mode for new documents\n"
defaults write com.apple.TextEdit RichText -int 0
printf "TextEdit: open and save files as UTF-8 encoding\n"
defaults write com.apple.TextEdit PlainTextEncoding -int 4
defaults write com.apple.TextEdit PlainTextEncodingForWrite -int 4

###############################################################################
# Configure macOS: Trackpad                                                   #
###############################################################################

printf "Configuring Trackpad...\n"
printf "Trackpad: enable tap to click\n"
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
printf "Trackpad: disable Natural scrolling\n"
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false

###############################################################################
# Configure macOS: Various                                                    #
###############################################################################

printf "Configuring various stuff...\n"
printf "AppStore: check for software updates daily\n"
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1
printf "Game Center: disable Game Center\n"
defaults write com.apple.gamed Disabled -bool true
printf "Monitor: fix blurry fonts on lower resolution monitor\n"
defaults -currentHost write -globalDomain AppleFontSmoothing -int 2
printf "SSD: Disable hibernation\n"
sudo pmset -a hibernatemode 0
printf "Security: Enable firewall\n"
sudo /usr/libexec/ApplicationFirewall/socketfilterfw --setglobalstate on
printf "TimeMachine: prevent from prompting to use new hard drives as backup volume\n"
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true
printf "Notifications: set banner time to 3 seconds\n"
defaults write com.apple.notificationcenterui bannerTime 3
printf "FileVault: Enable encryption\n"
sudo fdesetup enable

###############################################################################
# Final touches                                                               #
###############################################################################

# Cleanup
printf "Cleanup and final touches...\n"
brew update && brew upgrade && brew cleanup && brew doctor && mas upgrade

#Exit script
printf "Done. Some of these changes require a restart to take effect\n"
sudo shutdown -r +1

#Exit script
exit
