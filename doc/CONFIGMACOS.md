# Configure macOS

A list of terminal commands to configure macOS, some of them are launched in the `config.sh` script during the initial setup of __Clean-macOS__.

---

## Configure Dock

### Set Dock icon size

```sh
defaults write com.apple.dock tilesize -int 40
```

### Remove Dock animation

```sh
defaults write com.apple.dock autohide-time-modifier -float 0
defaults write com.apple.dock autohide-delay -float 0
```

---

## Configure Finder

### Show file extension in Finder

```sh
defaults write -g AppleShowAllExtensions -bool true
```

### Show hidden files in Finder

```sh
defaults write com.apple.finder AppleShowAllFiles true
```

### Show Library folder

```sh
chflags nohidden ~/Library
```

### Show path bar in Finder window

```sh
defaults write com.apple.finder ShowPathbar -bool true
```

### Set current folder as default search

```sh
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"
```

### Set list view by default

```sh
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"
```

### Keep folders on top in Finder

```sh
defaults write com.apple.finder _FXSortFoldersFirst -bool true
```

### Disable creation of metadata files on Network and USB

```sh
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true
```

### Remove open-with duplicates

```sh
/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user
```

### Save screenshots in PNG format

```sh
mkdir ~/Pictures/Screenshots
defaults write com.apple.screencapture location -string "~/Pictures/Screenshots"
defaults write com.apple.screencapture type -string "png"
```

### Show HD icons on Desktop

```sh
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true
```

### Set sidebar icon size to medium

```sh
defaults write NSGlobalDomain NSTableViewDefaultSizeMode -int 2
```

### Show full path

```sh
defaults write com.apple.finder _FXShowPosixPathInTitle -bool YES
```

### Turn off window opening animation

```sh
defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool false
```

### Turn off file info animation

```sh
defaults write com.apple.finder DisableAllAnimations -bool true
```

###############################################################################
# Configure macOS: Keyboard                                                   #
###############################################################################

printf "⚙️ Configuring Keyboard...\n"
printf "⚙️ Keyboard: disable auto-correct\n"
defaults write -g NSAutomaticSpellingCorrectionEnabled -bool false
printf "⚙️ Keyboard: enable key-repeat\n"
defaults write -g ApplePressAndHoldEnabled -bool false
printf "⚙️ Keyboard: set repeat rate to 2\n"
defaults write -g KeyRepeat -int 2
printf "⚙️ Keyboard: disable automatic capitalization\n"
defaults write -g NSAutomaticCapitalizationEnabled -bool false
printf "⚙️ Keyboard: disable automatic period substitution\n"
defaults write -g NSAutomaticPeriodSubstitutionEnabled -bool false
printf "⚙️ Keyboard: disable smart dashes\n"
defaults write -g NSAutomaticDashSubstitutionEnabled -bool false
printf "⚙️ Keyboard: disable smart quotes\n"
defaults write -g NSAutomaticQuoteSubstitutionEnabled -bool false
printf "⚙️ Keyboard: disable cotninuous spell checking\n"
defaults write com.apple.messageshelper.MessageController SOInputLineSettings -dict-add "continuousSpellCheckingEnabled" -bool false

###############################################################################
# Configure macOS: Various                                                    #
###############################################################################

printf "⚙️ Configuring various stuff...\n"
printf "⚙️ AppStore: check for software updates daily\n"
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1
printf "⚙️ Game Center: disable Game Center\n"
defaults write com.apple.gamed Disabled -bool true
printf "⚙️ Monitor: fix blurry fonts on lower resolution monitor\n"
defaults -currentHost write -globalDomain AppleFontSmoothing -int 2
printf "⚙️ SSD: Disable hibernation\n"
sudo pmset -a hibernatemode 0
printf "⚙️ Security: Enable firewall\n"
sudo /usr/libexec/ApplicationFirewall/socketfilterfw --setglobalstate on
printf "⚙️ TimeMachine: prevent from prompting to use new hard drives as backup volume\n"
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true

###############################################################################
# Configure macOS: TextEdit                                                   #
###############################################################################

printf "⚙️ Configuring TextEdit.app...n"
printf "⚙️ TextEdit: use plain text mode for new documents\n"
defaults write com.apple.TextEdit RichText -int 0
printf "⚙️ TextEdit: open and save files as UTF-8 encoding\n"
defaults write com.apple.TextEdit PlainTextEncoding -int 4
defaults write com.apple.TextEdit PlainTextEncodingForWrite -int 4

###############################################################################
# Configure macOS: Safari                                                     #
###############################################################################

printf "⚙️ Configuring Safari.app...\n"
printf "⚙️ Safari: disable Apple send queries\n"
defaults write com.apple.Safari UniversalSearchEnabled -bool false
defaults write com.apple.Safari SuppressSearchSuggestions -bool true
printf "⚙️ Safari: disable auto-correct\n"
defaults write com.apple.Safari WebAutomaticSpellingCorrectionEnabled -bool false
printf "⚙️ Safari: don't open safe files\n"
defaults write com.apple.Safari AutoOpenSafeDownloads -bool false
printf "⚙️ Safari: show favorites bar\n"
defaults write com.apple.Safari ShowFavoritesBar -bool true
printf "⚙️ Safari: enable develop menu\n"
defaults write com.apple.Safari IncludeDevelopMenu -bool true

###############################################################################
# Configure macOS: Trackpad                                                   #
###############################################################################

printf "⚙️ Configuring Trackpad...\n"
printf "⚙️ Trackpad: enable tap to click\n"
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
printf "⚙️ Trackpad: disable Natural scrolling\n"
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false