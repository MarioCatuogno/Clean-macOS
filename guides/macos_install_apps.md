# macOS install Apps

This document contains some useful commands I use to install programs after a clean macOS installation.

## Index

* [Install XCode](#install-xcode)
* [Install Brew](#install-brew)
* [Install Apps](#install-apps)
* [Install Quick Look plugins](#install-quick-look-plugins)


#### Install XCode
```
xcode-select —install
```

#### Install Brew

To install `brew` and `cask` use the following commands. More information [here](https://brew.sh/).

```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

```
brew install cask
```

#### Install Apps
```
brew cask install appcleaner
brew cask install atom
brew cask install cheatsheet
brew cask install dropbox
brew cask install evernote
brew cask install google-chrome
brew cask install skype
brew cask install spotify
brew cask install the-unarchiver
brew cask install transmission
brew cask install vlc
```

#### Install Quick Look plugins
```
brew cask install qlcolorcode
brew cask install qlstephen
brew cask install qlmarkdown
brew cask install quicklook-json
brew cask install quicklook-csv
brew cask install qlimagesize
brew cask install qlvideo
```

#### Install Developing Tools
```
brew cask install github-desktop
brew cask install rstudio
brew cask install virtualbox
brew cask install visual-studio-code
```
