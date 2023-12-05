#!/bin/bash

###############################################################################
# Set variables                                                               #
###############################################################################

# Set variables
CONFIG="${HOME}/Clean-macOS/config"             # configuration files directory
PROJECTS_DIR=${HOME}/Projects                   # projects directory
ZSH_CUSTOM=${ZSH_CUSTOM:-~/.oh-my-zsh/custom}   # ZSH directory

###############################################################################
# Configure                                                                   #
###############################################################################

# Exit script immediately if any command fails
set -e

# Prompt for root password
echo "Enter root password..."
sudo -v

# Keep root session alive
while true; do
  sudo -n true
  sleep 60
  kill -0 "$$" || exit
done 2>/dev/null &

# Install Oh-My-Zsh
echo "📦 Install Oh-My-Zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install Zsh plugins
echo "📦 Install Zsh plugins..."
git clone https://github.com/zsh-users/zsh-completions $ZSH_CUSTOM/plugins/zsh-completions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions

# Update Zsh settings
echo "⚙️ Update Zsh settings..."
sudo rm -rf ${HOME}/.zshrc > /dev/null 2>&1
cp "$CONFIG/.zshrc" ${HOME}/.zshrc

# Install iTerm2 themes
echo "📦 Install iTerm2 themes..."
open "$CONFIG/ayu-dark.itermcolors"
open "$CONFIG/ayu-light.itermcolors"
open "$CONFIG/ayu-mirage.itermcolors"
open "$CONFIG/nord.itermcolors"
open "$CONFIG/nord.terminal"

# Update Git settings
echo "⚙️ Update Git settings..."
sudo rm -rf ${HOME}/.gitconfig > /dev/null 2>&1
sudo rm -rf ${HOME}/.gitignore > /dev/null 2>&1
cp "$CONFIG/.gitignore" ${HOME}/.gitignore
cp "$CONFIG/.gitconfig" ${HOME}/.gitconfig

# Create Projects directory
echo "⚙️ Create Projects directory..."
mkdir "$PROJECTS_DIR"
chmod 777 "$PROJECTS_DIR"

# Configure macOS Desktop
printf "⚙️ Configure Desktop...\n"
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowMountedServersOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

# Configure macOS Finder
printf "⚙️ Configure Finder...\n"
defaults write -g AppleShowAllExtensions -bool true
defaults write com.apple.finder AppleShowAllFiles true
defaults write com.apple.finder _FXShowPosixPathInTitle -bool YES
defaults write com.apple.finder ShowPathbar -bool true
chflags nohidden ~/Library
/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user

# Configure macOS Screen Capture
printf "⚙️ Save screenshots in PNG format...\n"
mkdir ~/Pictures/Screenshots
defaults write com.apple.screencapture location -string "${HOME}/Pictures/Screenshots"
defaults write com.apple.screencapture type -string "png"

# Configure macOS Keyboard
printf "⚙️ Configure Keyboard...\n"
defaults write -g NSAutomaticSpellingCorrectionEnabled -bool false
defaults write -g NSAutomaticPeriodSubstitutionEnabled -bool false
defaults write -g NSAutomaticDashSubstitutionEnabled -bool false
defaults write -g NSAutomaticQuoteSubstitutionEnabled -bool false
defaults write NSGlobalDomain KeyRepeat -int 1
defaults write NSGlobalDomain InitialKeyRepeat -int 10
defaults write com.apple.messageshelper.MessageController SOInputLineSettings -dict-add "continuousSpellCheckingEnabled" -bool false

# Configure macOS Safari
printf "⚙️ Configure Safari...\n"
defaults write com.apple.Safari UniversalSearchEnabled -bool false
defaults write com.apple.Safari SuppressSearchSuggestions -bool true
defaults write com.apple.Safari WebAutomaticSpellingCorrectionEnabled -bool false
defaults write com.apple.Safari AutoOpenSafeDownloads -bool false
defaults write com.apple.Safari ShowFavoritesBar -bool true
defaults write com.apple.Safari IncludeDevelopMenu -bool true

# Configure macOS TextEdit
printf "⚙️ Configure TextEdit...\n"
defaults write com.apple.TextEdit RichText -int 0
defaults write com.apple.TextEdit PlainTextEncoding -int 4
defaults write com.apple.TextEdit PlainTextEncodingForWrite -int 4

# Configure macOS Trackpad
printf "⚙️ Configure Trackpad...\n"
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false

# Configure macOS
printf "⚙️ Various configuration...\n"
defaults write com.apple.gamed Disabled -bool true
sudo /usr/libexec/ApplicationFirewall/socketfilterfw --setglobalstate on
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true

printf "⚙️ Configure energy saving...\n"
sudo pmset -a displaysleep 15
sudo pmset -c sleep 0
sudo pmset -a hibernatemode 0

# Change name if you do not own a MacBook
printf "⚙️ Configure computer name...\n"
sudo scutil --set ComputerName "MecBuk"
sudo scutil --set HostName "MecBuk"
sudo scutil --set LocalHostName "MecBuk"
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "MecBuk"

# Cleanup and final touches
echo "⚙️ Cleanup and final touches..."
brew -v update && brew -v upgrade && brew -v cleanup --prune=2 && brew doctor && brew -v upgrade --casks --greedy

# Exit script
exit
