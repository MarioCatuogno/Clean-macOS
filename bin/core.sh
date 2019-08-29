#!/bin/bash

# SCRIPT: XXX
# DATE: AAAA-MM-DD
# VERSION: X.X.X

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
fi

# Check Brews
brew doctor && brew update && brew upgrade

# Tap Repositories
printf "🏗️  Install Brew Cask and MAS..."
brew install mas
brew tap homebrew/cask-fonts

###############################################################################
# Install Binaries                                                            #
###############################################################################

# ️⚙️ Binary
printf "⚙️  Install Binaries...\n"
brew install ack
brew install bash
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

###############################################################################
# Install Brews                                                               #
###############################################################################

# 🛠️ Developer Tools
printf "🛠️  Install iTerm2.app...\n"
brew cask install --appdir="/Applications" iterm2

printf "🛠️  Install Visual Studio Code.app...\n"
brew cask install --appdir="/Applications" visual-studio-code

# 🍿 Entertainment
printf "🍿  Install Iina.app...\n"
brew cask install --appdir="/Applications" iina

# 💬 Fonts
printf "💬  Install Comic-Neue font...\n"
brew cask install font-comic-neue

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
printf "🎲  Install XXX.app...\n"

# 🏞️ Graphics & Design
printf "🏞️  Install XXX.app...\n"

# 🧭 Navigation
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

printf "📝  Install Popclip.app...\n"
mas install 445189367

# 🔑 Security
printf "🔑  Install XXX.app...\n"

# 🥳 Social
printf "🥳  Install Franz.app...\n"
brew cask install --appdir="/Applications" franz

# 🧮 Utilities
printf "🧮  Install Alfred.app...\n"
brew cask install --appdir="/Applications" alfred

printf "🧮  Install Amphetamine.app...\n"
mas install 937984704

printf "🧮  Install App Cleaner.app...\n"
brew cask install --appdir="/Applications" appcleaner

printf "🧮  Install Cheatsheet.app...\n"
brew cask install --appdir="/Applications" cheatsheet

printf "🧮  Install The Unarchiever.app...\n"
mas install 425424353

###############################################################################
# Install Dotfiles                                                            #
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
brew install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
chsh -s $(which zsh)

# 🎛️ Download Zsh plugins [2/3]
printf "🎛️  Download Zsh plugins...\n"
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# 🎛️ Update Zsh settings [3/3]
printf "🎛️  Update Zsh settings...\n"
sudo rm -rf ~/.zshrc > /dev/null 2>&1
curl https://raw.githubusercontent.com/MarioCatuogno/Clean-macOS/master/config/.zshrc -o ~/.zshrc
