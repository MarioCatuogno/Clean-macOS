#!/bin/bash

###############################################################################
# General                                                                     #
###############################################################################

#Run the script for INSTALL
#Entering as Root
echo "Enter root password..."
sudo -v

#Keep alive Root
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

#Installing XCode Command Line Tools
echo "Installing XCode CL tools..."
xcode-select --install

###############################################################################
# Installing and updating Homebrew                                            #
###############################################################################

#Installing Brew
if test ! $(which brew); then
  echo "Installing Homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

#Check Brews
brew doctor
brew update
brew upgrade --all

#Installing Repositories
echo "Installing Brew Cask..."
brew install cask
brew tap buo/cask-upgrade
brew cask install --appdir="/Applications" cakebrew

#Installing Git
echo "Installing Git..."
brew install git
curl https://raw.githubusercontent.com/MarioCatuogno/Clean-macOS/master/config/.gitignore -o ~/.gitignore
curl https://raw.githubusercontent.com/MarioCatuogno/Clean-macOS/master/config/.gitconfig -o ~/.gitconfig

###############################################################################
# Installing applications                                                     #
###############################################################################

#Installing Developing tools
echo "Installing Developing tools..."
brew cask install --appdir="/Applications" boostnote
brew cask install --appdir="/Applications" docker
brew cask install --appdir="/Applications" github
brew cask install --appdir="/Applications" kitematic
brew cask install --appdir="/Applications" tableplus
brew cask install --appdir="/Applications" virtualbox

#Installing Utility apps
echo "Installing Utility apps..."
brew cask install --appdir="/Applications" alfred
brew cask install --appdir="/Applications" appcleaner
brew cask install --appdir="/Applications" cheatsheet
brew cask install --appdir="/Applications" dropbox
brew cask install --appdir="/Applications" google-chrome
brew cask install --appdir="/Applications" the-unarchiver
brew cask install --appdir="/Applications" transmission

#Installing Social apps
echo "Installing Social apps..."
brew cask install --appdir="/Applications" skype
brew cask install --appdir="/Applications" franz

#Installing Multimedia apps
echo "Installing Multimedia apps..."
brew cask install --appdir="/Applications" handbrake
brew cask install --appdir="/Applications" iina
brew cask install --appdir="/Applications" imageoptim
brew cask install --appdir="/Applications" nucleo

#Installing Gaming apps
echo "Installing Gaming apps..."
brew cask install --appdir="/Applications" battle-net
brew cask install --appdir="/Applications" steermouse

#Installing Security apps
echo "Installing Security apps..."
brew cask install --appdir="/Applications" expressvpn

#Installing MAS
echo "Installing MAS..."
brew install mas

#Installing Mac App Store apps
echo "Installing MAS apps..."
#Install Amphetamine
mas install 937984704
#Install Daisydisk
mas install 411643860
#Install Magnet
mas install 441258766
#Install Microsoft Remote Desktop
mas install 1295203466
#Install Pixelmator
mas install 407963104
#Install Popclip
mas install 445189367
#Install Spark
mas install 1176895641
#Install Wipr
mas install 1320666476

###############################################################################
# Installing binary commands                                                  #
###############################################################################

#Installing Commands
echo "Installing Binary commands..."
brew install ack
brew install bash
brew install binutils
brew install diffutils
brew install gzip
brew install htop
brew install nano
brew install neofetch
brew install tree
brew install wget --with-iri
brew install wifi-password

###############################################################################
# Installing Quicklook plugins                                                #
###############################################################################

#Installing Quick Look plugins
echo "Installing QL Plugins..."
brew cask install qlcolorcode
brew cask install qlstephen
brew cask install qlmarkdown
brew cask install quicklook-json
brew cask install qlimagesize
brew cask install webpquicklook
brew cask install suspicious-package
brew cask install qlvideo

###############################################################################
# Installing Python                                                           #
###############################################################################

#Installing Python
echo "Installing Python..."
brew install python
brew install python3

###############################################################################
# Fonts                                                                       #
###############################################################################

#Installing fonts
brew tap caskroom/fonts
brew cask install font-fira-code
brew cask install font-hack

###############################################################################
# Setup Visual Studio Code                                                    #
###############################################################################

#Installing Visual Studio Code
echo "Installing VSCode..."
brew cask install --appdir="/Applications" visual-studio-code

#Copying settings.json
curl https://raw.githubusercontent.com/MarioCatuogno/Clean-macOS/master/config/settings.json -o ~/Library/Application\ Support/Code/User/settings.json

#Install packages
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

###############################################################################
# Setup iTerm2                                                                #
###############################################################################

echo "Installing iTerm2..."
brew cask install --appdir="/Applications" iterm2
echo "Downloading iTerm color schema ayu-dark\n"
wget https://raw.githubusercontent.com/MarioCatuogno/Clean-macOS/master/config/ayu-dark.itermcolors \
-O ~/Downloads/ayu-dark.itermcolors && open ~/Downloads/ayu-dark.itermcolors
echo "Downloading iTerm color schema ayu-light\n"
wget https://raw.githubusercontent.com/MarioCatuogno/Clean-macOS/master/config/ayu-light.itermcolors \
-O ~/Downloads/ayu-light.itermcolors && open ~/Downloads/ayu-light.itermcolors
echo "Downloading iTerm color schema ayu-mirage\n"
wget https://raw.githubusercontent.com/MarioCatuogno/Clean-macOS/master/config/ayu-mirage.itermcolors \
-O ~/Downloads/ayu-mirage.itermcolors && open ~/Downloads/ayu-mirage.itermcolors

#Installing ZSH
echo "Installing Shell..."
brew install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
chsh -s $(which zsh)

#Installing plugins
brew install zsh-completions
brew install zsh-autosuggestions
brew install zsh-syntax-highlighting

#Downloading .zshrc config file
curl https://raw.githubusercontent.com/MarioCatuogno/Clean-macOS/master/config/.zshrc -o ~/.zshrc

###############################################################################
# Final touches                                                               #
###############################################################################

# Cleanup
brew upgrade && brew update && brew cleanup && brew cask cleanup

#Exit script
exit
