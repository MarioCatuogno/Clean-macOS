#!/bin/bash

# DATE: 2019-10-31
# VERSION: 1.8.0

###############################################################################
# Install Applications                                                        #
###############################################################################

# 🛠️ Developer Tools
printf "🛠️  Install DBeaver.app...\n"
brew cask install --appdir="/Applications" dbeaver-community

printf "🛠️  Install Docker.app...\n"
brew cask install --appdir="/Applications" docker

# 🍿 Entertainment
printf "🍿  Install Handbrake.app...\n"
brew cask install --appdir="/Applications" handbrake

# 🎲 Games

# 🏞️ Graphics & Design
printf "🏞️  Install Imageoptim.app...\n"
brew cask install --appdir="/Applications" imageoptim

# 🧭 Navigation
printf "🧭  Install Firefox.app...\n"
brew cask install --appdir="/Applications" firefox

# 📝 Productivity
printf "📝  Install Spark.app...\n"
mas install 1176895641

# 🔑 Security

# 🥳 Social
printf "🥳  Install Franz.app...\n"
brew cask install --appdir="/Applications" franz

# 🧮 Utilities
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
