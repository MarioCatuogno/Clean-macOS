# Clean macOS

This document describes how to set up a clean environment of macOS.

## Table of content

* [Installation](#installation)
  * [Install basic stuff](#install-basic-stuff)
  * [Configure VS Code](#configure-vs-code)
  * [Configure iTerm2](#configure-iterm2)

## Installation

### Install basic stuff

The first thing to do is to update the OS. For that go to __Apple Icon > Software Update__. 
After this you can run the script /Clean-macOS/script/__macOs.sh__ using the command `./clnmacos.sh install`, this will:
1. Install XCode
2. Install [Homebrew](https://brew.sh)
3. Install [Cask](http://caskroom.io)
4. Install various application [see list](https://github.com/MarioCatuogno/Clean-macOS/blob/release/doc/apps_list.md)
5. Install and configure GIT
6. Install and configure Python
7. Install and configure Visual Studio Code
8. Install and configure iTerm2 and ZSH

### Configure VS Code

Open __Visaul Studio Code__ app and press `ALT+CMD+P` then do the following steps:
* _theme > Preferences: Color Theme > Material Theme_
* _theme > Preferences: File Icon Theme > Material Icon Theme_
* _shell > Shell Command: Install 'code' command in PATH_

### Configure iTerm2

Open __iTerm2__ appl and go to _Preferences > Profiles > Windows_ and change the size to __125__ for Columns and __35__ for Rows.
