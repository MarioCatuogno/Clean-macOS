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
# Installing binary commands                                                  #
###############################################################################

#Installing Commands
brew install binutils
brew install diffutils

###############################################################################
# Installing applications                                                     #
###############################################################################

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
#Numbers
mas install 409203825
#Pages
mas install 409201541
#Install Pixelmator
mas install 407963104
#Install Popclip
mas install 445189367
#Install Spark
mas install 1176895641
#Install Wipr
mas install 1320666476
#VirtualBox
brew cask install --appdir="/Applications" virtualbox
#Battle-net
brew cask install --appdir="/Applications" battle-net
