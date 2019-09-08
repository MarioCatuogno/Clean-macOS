#!/bin/bash

# DATE: 2019-10-31
# VERSION: 1.8.0

###############################################################################
# Install Applications                                                        #
###############################################################################

# 🛠️ Developer Tools

# 🍿 Entertainment

# 🎲 Games

# 🏞️ Graphics & Design

# 🧭 Navigation
printf "🧭  Install Ecosia.app...\n"
mas install 1463400445

# 📝 Productivity

# 🔑 Security

# 🥳 Social
printf "🥳  Install Telegram.app...\n"
brew cask install --appdir="/Applications" telegram
printf "🥳  Install Whatsapp.app...\n"
brew cask install --appdir="/Applications" whatsapp

# 🧮 Utilities

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


