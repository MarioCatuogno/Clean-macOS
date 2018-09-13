#!/bin/bash

#Entering as Root
echo "Enter root password..."
sudo -v

#Keep alive Root
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

#Installing XCode Command Line Tools
echo "Installing XCode CL tools..."
xcode-select --install

#Installing Brew
echo "Installing Brew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#Check Brews
brew doctor

#Installing Repositories
echo "Installing Brew repositories..."
brew install cask
brew tap buo/cask-upgrade

#Installing Git
echo "Installing Git..."
brew install git
curl https://raw.githubusercontent.com/github/gitignore/master/Global/macOS.gitignore -o ~/.gitignore

#Installing Commands
echo "Installing Commands..."
brew install archey
brew install ed --with-default-names
brew install findutils --with-default-names
brew install gnu-indent --with-default-names
brew install gnu-sed --with-default-names
brew install gnu-tar --with-default-names
brew install gnu-which --with-default-names
brew install gnutls
brew install grep --with-default-names
brew install tree
brew install wget

#Installing MAS
echo "Installing MAS..."
brew install mas

#Installing Cask
echo "Installing Brew Cask..."
brew cask install --appdir="/Applications" cakebrew

#Installing Utility apps
echo "Installing Utility apps..."
brew cask install --appdir="/Applications" alfred
brew cask install --appdir="/Applications" appcleaner
brew cask install --appdir="/Applications" cheatsheet
brew cask install --appdir="/Applications" dropbox
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
brew cask install --appdir="/Applications" kap

#Installing Gaming apps
echo "Installing Gaming apps..."
#brew cask install --appdir="/Applications" battle-net
#brew cask install --appdir="/Applications" steam
brew cask install --appdir="/Applications" steermouse

#Installing Developing tools
echo "Installing Developing tools..."
brew cask install --appdir="/Applications" boostnote
brew cask install --appdir="/Applications" docker
brew cask install --appdir="/Applications" github
brew cask install --appdir="/Applications" kitematic
brew cask install --appdir="/Applications" iterm2
brew cask install --appdir="/Applications" sublime-text
brew cask install --appdir="/Applications" tableplus
brew cask install --appdir="/Applications" virtualbox

#Installing Security apps
echo "Installing Security apps..."
brew cask install --appdir="/Applications" 1password
brew cask install --appdir="/Applications" expressvpn

#Installing Mac App Store apps
echo "Installing MAS apps..."
#Install Magnet
mas install 441258766
#Install Spark
mas install 1176895641
#Install Amphetamine
mas install 937984704

#Installing Shell
echo "Installing Shell..."
brew install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
chsh -s $(which zsh)
brew install zsh-completions 
brew install zsh-autosuggestions 
brew install zsh-syntax-highlighting
#Creating a shortcut for Sublime Text app (subl)
ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl

#Installing Quick Look plugins
#echo "Installing QL Plugins..."
#brew cask install qlcolorcode
#brew cask install qlstephen
#brew cask install qlmarkdown
#brew cask install qlimagesize
#brew cask install qlvideo

#Installing R
#echo "Installing R..."
#brew install R
#brew cask install --appdir="/Applications" rstudio
#defaults write org.R-project.R force.LANG en_US.UTF-8

#Installing Python
#echo "Installing Python..."
#brew install python3
#brew cask install --appdir="/Applications" rodeo
#brew cask install --appdir="/Applications" miniconda
#pip3 install jupyter
#pip3 install numpy
#pip3 install pandas
#pip3 install matplotlib

# Cleanup
brew cleanup --force
brew cask cleanup
brew upgrade && brew update

#Exit script
exit
