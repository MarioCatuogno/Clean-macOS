#!/bin/bash

# DATE: 2019-12-31
# VERSION: 1.9.0

###############################################################################
# Set variables                                                               #
###############################################################################

SETUP=~/cleanMacOS

###############################################################################
# Launch script                                                               #
###############################################################################

# Entering as Root
printf "Enter root password...\n"
sudo -v

# Keep alive Root
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

###############################################################################
# Install apps                                                                #
###############################################################################

# Install Homebrew apps
while IFS="" read -r p || [ -n "$p" ]
do
  printf '%s\n' "🍺 Installing $p..."
  brew install $p
done < $SETUP/???_brew.txt

# Install Homebrew Cask apps
while IFS="" read -r p || [ -n "$p" ]
do
  printf '%s\n' "🍻 Installing $p..."
  brew cask install $p
done < $SETUP/???_cask.txt

# Install MAS apps
while IFS="" read -r p || [ -n "$p" ]
do
  printf '%s\n' "🍎 Installing $p..."
  mas install $p
done < $SETUP/???_mas.txt

###############################################################################
# Final touches                                                               #
###############################################################################

# Cleanup
printf "🥡 Cleanup and final touches...\n"
brew doctor && brew update && brew cleanup && brew upgrade && brew cask upgrade && mas upgrade

#Exit script
printf "Done. Some of these changes require a restart to take effect\n"
sudo shutdown -r +1

#Exit script
exit
