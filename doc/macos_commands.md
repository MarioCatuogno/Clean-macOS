# macOS commands

This document contains some useful commands I use in macOS.

## Useful commands

* [Access hosts file](#access-hosts-file)
* [Enable TRIM for SSD](#enable-trim-for-ssd)
* [Hide or show hidden variables](#hide-or-show-hidden-variable)
* [Install Xcode command line tool](#install-xcode-command-line-tool)
* [Show Library folder](#show-library-folder)
* [Remove DS_Store files](#remove-ds_store-files)
* [Disable creation of metadata files](#disable-creation-of-metadata-files)
* [Update all Brew and Cask formulae](#update-all-brew-and-cask-formulae)

#### Access hosts file

```
sudo nano /private/etc/hosts
```

#### Enable TRIM for SSD

```
sudo trimforce enable
```

#### Hide or show hidden files

```
defaults write com.apple.finder AppleShowAllFiles YES
```

#### Install Xcode command line tool

```
xcode-select —install
```

#### Show Library folder

With the __Finder__ as the foremost application, press `shift-command-H`, `command-2`, and then `command-J`, which will bring up a window that configures Finder view options. Check the “_Show Library Folder_” and close the window.

#### Remove DS_Store files

```
sudo find / -name .DS_Store -delete; killall Finder
```

#### Disable creation of metadata files

To avoid the creation of __.DS_Store__ files on Network and USB volumes.
```
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true
```

#### Update all Brew and Cask formulae

```
brew update && brew cleanup && brew cask cleanup
```

