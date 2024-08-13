#!/bin/bash

###############################################################################
# Set variables                                                               #
###############################################################################

BIN="${HOME}/Clean-macOS/bin"                # shell scripts
CONFIG="${HOME}/Clean-macOS/config"          # configuration files directory
SETUP="${HOME}/Clean-macOS"                  # root folder of Clean-macOS
SUDO_USER="$(whoami)"                        # sudo user variable

###############################################################################
# Routine                                                                     #
###############################################################################

# Exit script immediately if any command fails
set -e

# Prompt for root password
echo "Enter root password..."
sudo -v

# Keep alive Root
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Clear Bash Terminal history
echo "🗑️ Clear Bash history...\n"
rm -f ~/.bash_history

# Clear ZSH Terminal history
echo "🗑️ Clear ZSH history...\n"
rm -f ~/.zsh_history

# Clear Diagnostic logs
echo "🗑️ Clear Diagnostic logs...\n"
sudo rm -rfv /private/var/db/diagnostics/*
sudo rm -rfv /private/var/db/uuidtext/*

# Clear System logs
echo "🗑️ Clear System logs...\n"
sudo rm -rfv /private/var/log/asl/*
sudo rm -fv /private/var/log/asl.log
sudo rm -fv /private/var/log/asl.db
sudo rm -fv /private/var/log/install.log
sudo rm -rfv /private/var/log/*
sudo rm -rfv /Library/Logs/*
rm -rfv $HOME/Library/Logs/*

# Clear User Activity logs
echo "🗑️ Clear User Activity logs...\n"
sudo rm -rfv /private/var/audit/*

# Clear Mainteinance logs
echo "🗑️ Clear Maintenance logs...\n"
sudo rm -fv /private/var/log/daily.out
sudo rm -fv /private/var/log/weekly.out
sudo rm -fv /private/var/log/monthly.out

# Clear Homebrew cache
echo "🍺 Clear Homebrew cache"
if type "brew" &>/dev/null; then
    brew cleanup -s &>/dev/null
    rm -rfv $(brew --cache) &>/dev/null
    brew tap --repair &>/dev/null
fi

# Clear System cache
echo "🗑️ Clear System cache...\n"
sudo rm -rfv /Library/Caches/* &>/dev/null
sudo rm -rfv /System/Library/Caches/* &>/dev/null
sudo rm -rfv ~/Library/Caches/* &>/dev/null

# Clear DNS cache
echo "🛜 Clear DNS cache...\n"
sudo dscacheutil -flushcache
sudo killall -HUP mDNSResponder

# Clear inactive memory
echo "📉 Clear inactive memory...\n"
sudo purge

# Exit script
exit
