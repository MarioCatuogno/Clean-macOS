#!/bin/bash

# DATE: 2019-10-31
# VERSION: 1.8.0

###############################################################################
# Launch script                                                               #
###############################################################################

# Entering as Root
printf "Enter root password...\n"
sudo -v

# Keep alive Root
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

###############################################################################
# Install HomeBrew                                                            #
###############################################################################

# Install XCode Command Line Tools
printf "🏗️  Install XCode CL tools...\n"
xcode-select --install

# Install Brew
printf "🏗️  Check Brew...\n"
if test ! $(which brew); then
  echo "🏗️  Install Homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
exit
fi

# Check Brews
brew doctor && brew update && brew upgrade

# Tap Repositories
printf "🏗️  Install Brew Cask and MAS..."
brew install mas
brew tap homebrew/cask-fonts

###############################################################################
# Install Binaries and utils                                                  #
###############################################################################

# ️⚙️ Binary
printf "⚙️  Install Binaries...\n"
brew install ack
brew install bash
brew install coreutils
brew install dockutil
brew install gzip
brew install htop
brew install imagemagick
brew install nano
brew install neofetch
brew install prettyping
brew install tldr
brew install tree
brew install wget
brew install wifi-password
brew install youtube-dl

# ⚙️ Install Quicklook plugins
printf "⚙️  Install Quicklook plugins...\n"
brew cask install qlcolorcode
brew cask install qlmarkdown
brew cask install qlstephen
brew cask install qlvideo
brew cask install quicklook-csv
brew cask install quicklook-json

###############################################################################
# Install Brews                                                               #
###############################################################################

# 🛠️ Developer Tools
printf "🛠️  Install iTerm2.app...\n"
brew cask install --appdir="/Applications" iterm2

# 🍿 Entertainment
printf "🍿  Install VLC.app...\n"
brew cask install --appdir="/Applications" vlc

# 💬 Fonts

# 🎲 Games

# 🏞️ Graphics & Design

# 🧭 Navigation
printf "🧭  Install Ecosia.app...\n"
mas install 1463400445

printf "🧭  Install Google Chrome.app...\n"
brew cask install --appdir="/Applications" google-chrome

printf "🧭  Install Transmission.app...\n"
brew cask install --appdir="/Applications" transmission

# 📝 Productivity

# 🔑 Security

# 🥳 Social
printf "🧮  Install Whatsapp.app...\n"
brew cask install --appdir="/Applications" whatsapp

# 🧮 Utilities
printf "🧮  Install Amphetamine.app...\n"
mas install 937984704

printf "🧮  Install App Cleaner.app...\n"
brew cask install --appdir="/Applications" appcleaner

printf "🧮  Install Cheatsheet.app...\n"
brew cask install --appdir="/Applications" cheatsheet

printf "🧮  Install Google Backup and Sync.app...\n"
brew cask install --appdir="/Applications" google-backup-and-sync

printf "🧮  Install The Unarchiever.app...\n"
mas install 425424353

###############################################################################
# Configure Terminal                                                          #
###############################################################################

# 🎛️ Install Zsh [1/3]
printf "🎛️  Install Zsh...\n"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# 🎛️ Download Zsh plugins [2/3]
printf "🎛️  Download Zsh plugins...\n"
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# 🎛️ Update Zsh settings [3/3]
printf "🎛️  Update Zsh settings...\n"
sudo rm -rf ~/.zshrc > /dev/null 2>&1
curl https://raw.githubusercontent.com/MarioCatuogno/Clean-macOS/master/config/.zshrc -o ~/.zshrc

###############################################################################
# Install Config files                                                        #
###############################################################################

# 🎛️ Download iTerm2 plugins [1/1]
printf "🎛️  Download iTerm2 plugins...\n"
curl https://raw.githubusercontent.com/MarioCatuogno/Clean-macOS/master/config/ayu-dark.itermcolors -o ~/Downloads/ayu-dark.itermcolors && open ~/Downloads/ayu-dark.itermcolors
curl https://raw.githubusercontent.com/MarioCatuogno/Clean-macOS/master/config/ayu-light.itermcolors -o ~/Downloads/ayu-light.itermcolors && open ~/Downloads/ayu-light.itermcolors
curl https://raw.githubusercontent.com/MarioCatuogno/Clean-macOS/master/config/ayu-mirage.itermcolors -o ~/Downloads/ayu-mirage.itermcolors && open ~/Downloads/ayu-mirage.itermcolors

###############################################################################
# Configure macOS: Dock                                                       #
###############################################################################

printf "Configuring Dock...\n"
printf "Dock: set icon size\n"
defaults write com.apple.dock tilesize -int 40
printf "Dock: remove animation\n"
defaults write com.apple.dock autohide-time-modifier -float 0
defaults write com.apple.dock autohide-delay -float 0

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
# Configure macOS: Safari                                                     #
###############################################################################

printf "Configuring Safari.app...\n"
printf "Safari: disable Apple send queries\n"
defaults write com.apple.Safari UniversalSearchEnabled -bool false
defaults write com.apple.Safari SuppressSearchSuggestions -bool true
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
