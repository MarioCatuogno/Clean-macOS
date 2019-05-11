#!/bin/bash

# NAME: Clean macOS SETUP script
# DESC: Setup script for clean macOS configuration
# DATE: 13-02-2019
# VERSION: 1.6.0

###############################################################################
# Launch script                                                               #
###############################################################################

#Entering as Root
printf "Enter root password...\n"
sudo -v

#Keep alive Root
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

###############################################################################
# Installing HomeBrew                                                         #
###############################################################################

#Installing XCode Command Line Tools
printf "Installing XCode CL tools...\n"
xcode-select --install

#Installing Brew
printf "Installing Brew...\n"
if test ! $(which brew); then
  echo "Installing Homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

#Check Brews
brew doctor && brew update && brew upgrade

#Installing Repositories
printf "Installing Brew Cask and MAS..."
brew install cask
brew tap buo/cask-upgrade
brew tap cjbassi/gotop
brew install mas

###############################################################################
# Installing Applications                                                     #
###############################################################################

#Installing Developing tools
printf "Installing Docker.app...\n"
brew cask install --appdir="/Applications" docker
printf "Installing Github.app...\n"
brew cask install --appdir="/Applications" github
printf "Installing iTerm2.app...\n"
brew cask install --appdir="/Applications" iterm2
printf "Installing Kitematic.app...\n"
brew cask install --appdir="/Applications" kitematic
printf "Installing Lepton.app...\n"
brew cask install --appdir="/Applications" lepton
printf "Installing Tableplus.app...\n"
brew cask install --appdir="/Applications" tableplus

#Installing Editor apps
printf "Installing Typora.app...\n"
brew cask install --appdir="/Applications" typora
printf "Installing Visual Studio Code.app...\n"
brew cask install --appdir="/Applications" visual-studio-code

#Installing Games apps
printf "Installing Steam.app...\n"
brew cask install --appdir="/Applications" steam
printf "Installing Steermouse.app...\n"
brew cask install --appdir="/Applications" steermouse

#Installing Multimedia and Graphics apps
printf "Installing Handbrake.app...\n"
brew cask install --appdir="/Applications" handbrake
printf "Installing Iina.app...\n"
brew cask install --appdir="/Applications" iina
printf "Installing Imageoptim.app...\n"
brew cask install --appdir="/Applications" imageoptim
printf "Installing Pixelmator.app...\n"
mas install 407963104
printf "Installing Sip.app...\n"
brew cask install --appdir="/Applications" sip

#Installing Internet and Networking apps
printf "Installing Google Chrome.app...\n"
brew cask install --appdir="/Applications" google-chrome
printf "Installing Microsoft Remote Desktop.app...\n"
mas install 1295203466
printf "Installing Transmission.app...\n"
brew cask install --appdir="/Applications" transmission
printf "Installing Wipr.app...\n"
mas install 1320666476

#Installing Productivity apps
printf "Installing Magnet.app...\n"
mas install 441258766
printf "Installing Popclip.app...\n"
mas install 445189367
printf "Installing Spark.app...\n"
mas install 1176895641

#Installing Security apps
printf "Installing SonicWall Mobile Connect.app...\n"
mas install 822514576
printf "Installing Expressvpn.app...\n"
brew cask install --appdir="/Applications" expressvpn

#Installing Social apps
printf "Installing Franz.app...\n"
brew cask install --appdir="/Applications" franz

#Installing Utility apps
printf "Installing Alfred.app...\n"
brew cask install --appdir="/Applications" alfred
printf "Installing Amphetamine.app...\n"
mas install 937984704
printf "Installing App Cleaner.app...\n"
brew cask install --appdir="/Applications" appcleaner
printf "Installing Cakebrew.app...\n"
brew cask install --appdir="/Applications" cakebrew
printf "Installing Cheatsheet.app...\n"
brew cask install --appdir="/Applications" cheatsheet
printf "Installing DaisyDisk.app...\n"
mas install 411643860
printf "Installing Google Drive.app...\n"
brew cask install --appdir="/Applications" google-drive-file-stream
printf "Installing The Unarchiever.app...\n"
brew cask install --appdir="/Applications" the-unarchiver

###############################################################################
# Installing binary commands                                                  #
###############################################################################

#Installing Commands
printf "Installing Binary commands...\n"
brew install ack
brew install bash
brew install gotop
brew install gzip
brew install htop
brew install nano
brew install neofetch
brew install prettyping
brew install tree
brew install wget
brew install wifi-password

###############################################################################
# Fonts                                                                       #
###############################################################################

#Installing fonts
printf "Installing Comic-Neue font...\n"
brew cask install caskroom/fonts/font-comic-neue
printf "Installing Fira-code font...\n"
brew cask install caskroom/fonts/font-fira-code
printf "Installing Hack font...\n"
brew cask install caskroom/fonts/font-hack
printf "Installing Lato font...\n"
brew cask install caskroom/fonts/font-lato
printf "Installing Roboto font...\n"
brew cask install caskroom/fonts/font-roboto

###############################################################################
# Installing Quicklook plugins                                                #
###############################################################################

#Installing Quick Look plugins
printf "Installing QL Plugins...\n"
brew cask install qlcolorcode
brew cask install qlstephen
brew cask install qlmarkdown
brew cask install quicklook-json
brew cask install qlvideo

###############################################################################
# Installing GIT                                                              #
###############################################################################

#Installing Git
printf "Installing Git...\n"
brew install git

#Download settings
printf "Git: update preferences\n"
curl https://raw.githubusercontent.com/MarioCatuogno/Clean-macOS/master/config/.gitignore -o ~/.gitignore
curl https://raw.githubusercontent.com/MarioCatuogno/Clean-macOS/master/config/.gitconfig -o ~/.gitconfig

###############################################################################
# Installing Python                                                           #
###############################################################################

#Installing Python
printf "Installing Python3...\n"
brew install python3
printf "Installing Python packages...\n"
pip3 install autopep8
pip3 install numpy
pip3 install organize-tool
pip3 install pandas
pip3 install pylint
pip3 install requests
pip3 install virtualenv

###############################################################################
# Setup Visual Studio Code                                                    #
###############################################################################

#Install packages
printf "Installing Visual Studio Code packages...\n"
code --install-extension HookyQR.beautify
code --install-extension DavidAnson.vscode-markdownlint
code --install-extension GrapeCity.gc-excelviewer
code --install-extension teabyii.ayu
code --install-extension 77qingliu.sas-syntax
code --install-extension ms-python.python
code --install-extension Tyriar.sort-lines
code --install-extension pnp.polacode
code --install-extension formulahendry.code-runner
code --install-extension mikestead.dotenv
code --install-extension formulahendry.code-runner
code --install-extension yzhang.markdown-all-in-one
code --install-extension JaimeOlivares.yuml

#Download settings
printf "Visual Studio Code: update preferences\n"
curl https://raw.githubusercontent.com/MarioCatuogno/Clean-macOS/master/config/settings.json -o ~/Library/Application\ Support/Code/User/settings.json

###############################################################################
# Setup iTerm2                                                                #
###############################################################################

#Download color schema
printf "Downloading iTerm color schema ayu-dark...\n"
curl https://raw.githubusercontent.com/MarioCatuogno/Clean-macOS/master/config/ayu-dark.itermcolors -o ~/Downloads/ayu-dark.itermcolors && open ~/Downloads/ayu-dark.itermcolors
printf "Downloading iTerm color schema ayu-light...\n"
curl https://raw.githubusercontent.com/MarioCatuogno/Clean-macOS/master/config/ayu-light.itermcolors -o ~/Downloads/ayu-light.itermcolors && open ~/Downloads/ayu-light.itermcolors
printf "Downloading iTerm color schema ayu-mirage...\n"
curl https://raw.githubusercontent.com/MarioCatuogno/Clean-macOS/master/config/ayu-mirage.itermcolors -o ~/Downloads/ayu-mirage.itermcolors && open ~/Downloads/ayu-mirage.itermcolors

#Install ZSH
printf "Installing ZSH...\n"
brew install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
chsh -s $(which zsh)

#Install plugins
printf "Installing ZSH packages...\n"
brew install zsh-completions
brew install zsh-autosuggestions
brew install zsh-syntax-highlighting

#Download settings
printf "ZSH: update preferences\n"
curl https://raw.githubusercontent.com/MarioCatuogno/Clean-macOS/master/config/.zshrc -o ~/.zshrc

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
