#!/bin/bash

###############################################################################
# Set variables                                                               #
###############################################################################

BIN=~/cleanMacOS/bin                # shell scripts
CONFIG=~/cleanMacOS/config          # configuration files directory
SETUP=~/cleanMacOS                  # root folder of cleanMacOS

###############################################################################
# Launch script                                                               #
###############################################################################

# Entering as Root
printf "Enter root password...\n"
sudo -v

# Keep alive Root
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

###############################################################################
# Configure Terminal                                                          #
###############################################################################

# ⚙️ Install Oh-My-Zsh [1/4]
printf "⚙️ Install Zsh...\n"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# ⚙️ Download Zsh plugins [2/4]
printf "⚙️ Download Zsh plugins...\n"
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# ⚙️ Update Zsh settings [3/4]
printf "⚙️ Update Zsh settings...\n"
sudo rm -rf ~/.zshrc > /dev/null 2>&1
cp $CONFIG/.zshrc ~/.zshrc

# ⚙️ Download iTerm2 plugins [4/4]
printf "⚙️ Download iTerm2 plugins...\n"
open $CONFIG/ayu-dark.itermcolors
open $CONFIG/ayu-light.itermcolors
open $CONFIG/ayu-mirage.itermcolors

###############################################################################
# Configure Text Editor                                                       #
###############################################################################

# ⚙️ Download Visual Studio Code plugins [1/2]
printf "⚙️ Put Visual Studio Code in quarantine to install plugins...\n"
xattr -dr com.apple.quarantine /Applications/Visual\ Studio\ Code.app
printf "⚙️ Download Visual Studio Code plugins...\n"
open -a "Visual Studio Code"
code --install-extension 77qingliu.sas-syntax
code --install-extension DavidAnson.vscode-markdownlint
code --install-extension formulahendry.code-runner
code --install-extension HookyQR.beautify
code --install-extension ivangabriele.vscode-git-add-and-commit
code --install-extension JaimeOlivares.yuml
code --install-extension mikestead.dotenv
code --install-extension ms-python.python
code --install-extension teabyii.ayu
code --install-extension Tyriar.sort-lines
code --install-extension yzhang.markdown-all-in-one

# ⚙️ Update Visual Studio Code settings [2/2]
printf "⚙️ Update Visual Studio Code settings...\n"
sudo rm -rf ~/Library/Application\ Support/Code/User/settings.json > /dev/null 2>&1
cp $CONFIG/settings.json ~/Library/Application\ Support/Code/User/settings.json

###############################################################################
# Configure Git                                                               #
###############################################################################

# ⚙️ Update Git settings [1/1]
printf "⚙️ Update Git settings...\n"
sudo rm -rf ~/.gitconfig > /dev/null 2>&1
sudo rm -rf ~/.gitignore > /dev/null 2>&1
cp $CONFIG/.gitignore ~/.gitignore
cp $CONFIG/.gitconfig ~/.gitconfig

###############################################################################
# Configure macOS                                                             #
###############################################################################

printf "⚙️ Configure Finder...\n"
defaults write -g AppleShowAllExtensions -bool true
defaults write com.apple.finder AppleShowAllFiles true
defaults write com.apple.finder _FXShowPosixPathInTitle -bool YES
defaults write com.apple.finder ShowPathbar -bool true
chflags nohidden ~/Library
/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user

printf "⚙️ Save screenshots in PNG format...\n"
mkdir ~/Pictures/Screenshots
defaults write com.apple.screencapture location -string "~/Pictures/Screenshots"
defaults write com.apple.screencapture type -string "png"

printf "⚙️ Configure Keyboard...\n"
defaults write -g NSAutomaticSpellingCorrectionEnabled -bool false
defaults write -g NSAutomaticPeriodSubstitutionEnabled -bool false
defaults write -g NSAutomaticDashSubstitutionEnabled -bool false
defaults write -g NSAutomaticQuoteSubstitutionEnabled -bool false
defaults write com.apple.messageshelper.MessageController SOInputLineSettings -dict-add "continuousSpellCheckingEnabled" -bool false

printf "⚙️ Configure Safari...\n"
defaults write com.apple.Safari UniversalSearchEnabled -bool false
defaults write com.apple.Safari SuppressSearchSuggestions -bool true
defaults write com.apple.Safari WebAutomaticSpellingCorrectionEnabled -bool false
defaults write com.apple.Safari AutoOpenSafeDownloads -bool false
defaults write com.apple.Safari ShowFavoritesBar -bool true
defaults write com.apple.Safari IncludeDevelopMenu -bool true

printf "⚙️ Configure TextEdit...\n"
defaults write com.apple.TextEdit RichText -int 0
defaults write com.apple.TextEdit PlainTextEncoding -int 4
defaults write com.apple.TextEdit PlainTextEncodingForWrite -int 4

printf "⚙️ Configure Trackpad...\n"
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false

printf "⚙️ Various configuration...\n"
defaults write com.apple.gamed Disabled -bool true
sudo /usr/libexec/ApplicationFirewall/socketfilterfw --setglobalstate on
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true

###############################################################################
# Final touches                                                               #
###############################################################################

# Cleanup
printf "Cleanup and final touches...\n"
brew -v update && brew -v upgrade && brew cask upgrade && mas upgrade && brew -v cleanup --prune=5 && brew doctor

#Exit script
exit