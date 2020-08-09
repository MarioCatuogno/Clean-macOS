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

---

## Configure Keyboard

### Disable auto-correct

```sh
defaults write -g NSAutomaticSpellingCorrectionEnabled -bool false
```

### Enable key-repeat

```sh
defaults write -g ApplePressAndHoldEnabled -bool false
```

### Set repeat rate to 2

```sh
defaults write -g KeyRepeat -int 2
```

### Disable automatic capitalization

```sh
defaults write -g NSAutomaticCapitalizationEnabled -bool false
```

### Disable automatic period substitution

```sh
defaults write -g NSAutomaticPeriodSubstitutionEnabled -bool false
```

### Disable smart dashes

```sh
defaults write -g NSAutomaticDashSubstitutionEnabled -bool false
```

### Disable smart quotes

```sh
defaults write -g NSAutomaticQuoteSubstitutionEnabled -bool false
```

### Disable cotninuous spell checking

```sh
defaults write com.apple.messageshelper.MessageController SOInputLineSettings -dict-add "continuousSpellCheckingEnabled" -bool false
```

---

## Configure Safari

### Disable Apple send queries

```sh
defaults write com.apple.Safari UniversalSearchEnabled -bool false
defaults write com.apple.Safari SuppressSearchSuggestions -bool true
```

### Disable auto-correct

```sh
defaults write com.apple.Safari WebAutomaticSpellingCorrectionEnabled -bool false
```

### Don't open safe files

```sh
defaults write com.apple.Safari AutoOpenSafeDownloads -bool false
```

### Show favorites bar

```sh
defaults write com.apple.Safari ShowFavoritesBar -bool true
```

### Enable develop menu

```sh
defaults write com.apple.Safari IncludeDevelopMenu -bool true
```

---

## Configure TextEdit

### Use plain text mode for new documents

```sh
defaults write com.apple.TextEdit RichText -int 0
```

### Open and save files as UTF-8 encoding

```sh
defaults write com.apple.TextEdit PlainTextEncoding -int 4
defaults write com.apple.TextEdit PlainTextEncodingForWrite -int 4
```

---

## Configure Trackpad

### Enable tap to click

```sh
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
```

### Disable Natural scrolling

```sh
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false
```

---

## Various configuration

### AppStore: check for software updates daily

```sh
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1
```

### Game Center: disable Game Center

```sh
defaults write com.apple.gamed Disabled -bool true
```

### Monitor: fix blurry fonts on lower resolution monitor

```sh
defaults -currentHost write -globalDomain AppleFontSmoothing -int 2
```

### SSD: Disable hibernation

```sh
sudo pmset -a hibernatemode 0
```

### Security: Enable firewall

```sh
sudo /usr/libexec/ApplicationFirewall/socketfilterfw --setglobalstate on
```

### TimeMachine: prevent from prompting to use new hard drives as backup volume

```sh
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true
```
