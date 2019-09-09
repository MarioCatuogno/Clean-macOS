#!/bin/bash

# DATE: 2019-10-31
# VERSION: 1.8.0

###############################################################################
# Install Applications                                                        #
###############################################################################

# 🛠️ Developer Tools
printf "🛠️  Install Docker.app...\n"
brew cask install --appdir="/Applications" docker

# 🍿 Entertainment
printf "🍿  Install Handbrake.app...\n"
brew cask install --appdir="/Applications" handbrake

printf "🍿  Install Helium.app...\n"
mas install 1054607607

printf "🍿  Install Iina.app...\n"
brew cask install --appdir="/Applications" iina

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

# 📝 Productivity
printf "📝  Install Notion.app...\n"
brew cask install --appdir="/Applications" notion

printf "📝  Install Spark.app...\n"
mas install 1176895641

# 🔑 Security
printf "🔑  Install ExpressVpn.app...\n"
brew cask install --appdir="/Applications" expressvpn

printf "🔑  Install Wipr.app...\n"
mas install 1320666476

# 🥳 Social
printf "🥳  Install Franz.app...\n"
brew cask install --appdir="/Applications" franz

# 🧮 Utilities
printf "🧮  Install DaisyDisk.app...\n"
mas install 411643860

printf "🧮  Install Magnet.app...\n"
mas install 441258766

printf "🧮  Install Popclip.app...\n"
mas install 445189367

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
