#!/bin/bash

# NAME: Clean macOS script
# DESC: Setup a DEV setup for macOS
# DATE: 26-09-2018
# VERSION: 1.5.0

###############################################################################
# Launch script                                                               #
###############################################################################

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

#Installing Utility apps
echo "Installing Utility apps..."
brew cask install --appdir="/Applications" appcleaner
brew cask install --appdir="/Applications" cheatsheet

#Installing MAS
echo "Installing MAS..."
brew install mas

###############################################################################
# Installing Python                                                           #
###############################################################################

#Installing Python
echo "Installing Python..."
brew install python
brew install python3
echo "Installing Python packages..."
pip3 install autopep8
pip3 install numpy
pip3 install pandas
pip3 install pylint
pip3 install requests
pip3 install virtualenv

###############################################################################
# Setup Visual Studio Code                                                    #
###############################################################################

#Installing Visual Studio Code
echo "Installing VSCode..."
brew cask install --appdir="/Applications" visual-studio-code

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

###############################################################################
# Final touches                                                               #
###############################################################################

# Cleanup
brew update && brew upgrade && brew cleanup && brew cleanup && brew doctor

#Exit script
exit
