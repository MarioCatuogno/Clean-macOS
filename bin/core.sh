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
printf "🛠️  Install Docker.app...\n"
brew cask install --appdir="/Applications" docker

printf "🛠️  Install iTerm2.app...\n"
brew cask install --appdir="/Applications" iterm2

printf "🛠️  Install Visual Studio Code.app...\n"
brew cask install --appdir="/Applications" visual-studio-code

# 🍿 Entertainment
printf "🍿  Install Handbrake.app...\n"
brew cask install --appdir="/Applications" handbrake

printf "🍿  Install Helium.app...\n"
mas install 1054607607

printf "🍿  Install Iina.app...\n"
brew cask install --appdir="/Applications" iina

# 💬 Fonts
printf "💬  Install Comic-Neue font...\n"
brew cask install font-comic-neue

printf "💬  Install Fantasque Sans Mono font...\n"
brew cask install font-fantasque-sans-mono

printf "💬  Install Fira-code font...\n"
brew cask install font-fira-code

printf "💬  Install Hack font...\n"
brew cask install font-hack

printf "💬  Install Heavy-Data Nerd font...\n"
brew cask install font-heavydata-nerd-font

printf "💬  Install Lato font...\n"
brew cask install font-lato

printf "💬  Install Roboto font...\n"
brew cask install font-roboto

printf "💬  Install Ubuntu-mono Nerd font...\n"
brew cask install font-ubuntumono-nerd-font

# 🎲 Games
printf "🎲  Install Battle Net.app...\n"
brew cask install --appdir="/Applications" battle-net

printf "🎲  Install Steam.app...\n"
brew cask install --appdir="/Applications" steam

printf "🎲  Install Steermouse.app...\n"
brew cask install --appdir="/Applications" steermouse

# 🏞️ Graphics & Design
printf "🏞️  Install Imageoptim.app...\n"
brew cask install --appdir="/Applications" imageoptim

printf "🏞️  Install Pixelmator.app...\n"
mas install 407963104

# 🧭 Navigation
printf "🧭  Install Ecosia.app...\n"
mas install 1463400445

printf "🧭  Install Google Chrome.app...\n"
brew cask install --appdir="/Applications" google-chrome

printf "🧭  Install Transmission.app...\n"
brew cask install --appdir="/Applications" transmission

# 📝 Productivity
printf "📝  Install Keynote.app...\n"
mas install 409183694

printf "📝  Install Numbers.app...\n"
mas install 409203825

printf "📝  Install Pages.app...\n"
mas install 409201541

printf "📝  Install Spark.app...\n"
mas install 1176895641

# 🔑 Security
printf "🔑  Install Bitwarden.app...\n"
brew cask install --appdir="/Applications" bitwarden

printf "🔑  Install ExpressVpn.app...\n"
brew cask install --appdir="/Applications" expressvpn

printf "🔑  Install Wipr.app...\n"
mas install 1320666476

# 🥳 Social

# 🧮 Utilities
printf "🧮  Install Alfred.app...\n"
brew cask install --appdir="/Applications" alfred

printf "🧮  Install Amphetamine.app...\n"
mas install 937984704

printf "🧮  Install App Cleaner.app...\n"
brew cask install --appdir="/Applications" appcleaner

printf "🧮  Install Cheatsheet.app...\n"
brew cask install --appdir="/Applications" cheatsheet

printf "🧮  Install DaisyDisk.app...\n"
mas install 411643860

printf "🧮  Install Google Backup and Sync.app...\n"
brew cask install --appdir="/Applications" google-backup-and-sync

printf "🧮  Install gSwitch.app...\n"
brew cask install --appdir="/Applications" gswitch

printf "🧮  Install Magnet.app...\n"
mas install 441258766

printf "🧮  Install Popclip.app...\n"
mas install 445189367

printf "🧮  Install The Unarchiever.app...\n"
mas install 425424353

###############################################################################
# Configure Terminal                                                          #
###############################################################################

# 🎛️ Install Git [1/2]
printf "🎛️  Install Git...\n"
brew install git

# 🎛️ Update Git settings [2/2]
printf "🎛️  Update Git settings...\n"
sudo rm -rf ~/.gitconfig > /dev/null 2>&1
sudo rm -rf ~/.gitignore > /dev/null 2>&1
curl https://raw.githubusercontent.com/MarioCatuogno/Clean-macOS/master/config/.gitignore -o ~/.gitignore
curl https://raw.githubusercontent.com/MarioCatuogno/Clean-macOS/master/config/.gitconfig -o ~/.gitconfig

# 🎛️ Install Zsh [1/3]
printf "🎛️  Install Zsh...\n"
chsh -s $(which zsh)
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

# 🎛️ Download Visual Studio Code plugins [1/2]
printf "🎛️  Download Visual Studio Code plugins...\n"
code --install-extension 77qingliu.sas-syntax
code --install-extension DavidAnson.vscode-markdownlint
code --install-extension GrapeCity.gc-excelviewer
code --install-extension HookyQR.beautify
code --install-extension JaimeOlivares.yuml
code --install-extension Tyriar.sort-lines
code --install-extension formulahendry.code-runner
code --install-extension mikestead.dotenv
code --install-extension ms-python.python
code --install-extension pnp.polacode
code --install-extension teabyii.ayu
code --install-extension yzhang.markdown-all-in-one

# 🎛️ Update Visual Studio Code settings [2/2]
printf "🎛️  Update Visual Studio Code settings...\n"
sudo rm -rf ~/Library/Application\ Support/Code/User/settings.json > /dev/null 2>&1
curl https://raw.githubusercontent.com/MarioCatuogno/Clean-macOS/master/config/settings.json -o ~/Library/Application\ Support/Code/User/settings.json

###############################################################################
# Install Python                                                              #
###############################################################################

# ⚙️ Install Python [1/2]
printf "⚙️  Install Python3...\n"
brew install python3

# ⚙️ Download Python packages [2/2]
printf "⚙️  Download Python packages...\n"
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
