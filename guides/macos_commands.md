# macOS commands

This document contains some useful commands I use in macOS.

## Useful commands

* [Access hosts file](#access-hosts-file)
* [Enable TRIM for SSD](#enable-trim-for-ssd)
* [Hide or show hidden variables](#hide-or-show-hidden-variable)
* [Install Xcode command line tool](#install-xcode-command-line-tool)

#### Access hosts file

```
sudo nano /private/etc/hosts
```

#### Enable TRIM for SSD

```
sudo trimforce enable
```

#### Hide or show hidden variables

```
defaults write com.apple.finder AppleShowAllFiles YES
```

#### Install Xcode command line tool

```
xcode-select —install
```
