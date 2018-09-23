# Clean macOS

This document describes how to set up a clean environment for macOS.
I use this repository to keep track of the software and steps required to have a functioning system after each annual fresh install.

This keeps the system to perform at top speed, installing only necessary stuff and having an up-and-running system in about __50__ minutes.

You are encouraged to fork this and modify it to your own needs.

If you find it useful, please leave a comment or tell others about this repo.

<img src="https://raw.githubusercontent.com/MarioCatuogno/Clean-MacOS-X/master/img/scrn_mydesktop.png" align="middle" />

## Table of content

* [Installation](#installation)
  * [Install basic stuff](#install-basic-stuff)
  * [Configure VS Code](#configure-vs-code)
  * [Configure iTerm2](#configure-iterm2)
  * [Configure Git](#configure-git)
  * [Configure Alfred](#configure-alfred)
* [Thanks to](#thanks-to)

## Installation

### Install basic stuff

Download the last release .zip from [this](https://github.com/MarioCatuogno/Clean-macOS/releases) link, copy it and unzip into your __Documents__ folder.

After this you can run the script /Clean-macOS/src/__cmx.sh__ using the command `./cmx.sh install` from __Terminal.app__, this will:

* Install XCode
* Install [Homebrew](https://brew.sh)
* Install [Cask](http://caskroom.io)
* Install various application (list [here](https://github.com/MarioCatuogno/Clean-macOS/blob/release/doc/apps_list.md))
* Install and configure GIT
* Install and configure Python
* Install and configure Visual Studio Code
* Install and configure iTerm2 and ZSH

After this you can also config macOS with a list of commands (link [here](https://github.com/MarioCatuogno/Clean-macOS/blob/master/doc/macos_commands.md)), simply use the command `./cmx.sh config`.

### Configure VS Code

Open __Visaul Studio Code__ app and press `ALT+CMD+P` then do the following steps:

* _theme > Preferences: Color Theme > Ayu Mirage_
* _theme > Preferences: File Icon Theme > Ayu_
* _shell > Shell Command: Install 'code' command in PATH_

### Configure iTerm2

Open __iTerm2__ app and go to _Preferences > Profiles > Windows_ and change the size to __125__ for Columns and __35__ for Rows.

### Configure Git

Open ~/.gitconfig and change the Github email into `email` field.

### Configure Alfred

Open __Alfred__ app and go to _Preferences > Advanced > Syncing_ and set the folder `~/Dropbox/AppSettings/Alfred`.
Open this [link](https://github.com/stuartcryan/custom-iterm-applescripts-for-alfred) and copy the Apple Script to use __iTerm__ as default terminal in Alfred. Paste the content into _Preferences > Features > Terminal/Shell > Application: Custom_.
Go to _System Preferences > Keyboard > Shortcuts > Spotlight_ and remove the keybind `CMD+SPACE`; then open Alfred and go to _Preferences > General_ and select `CMD+SPACE` as default keybind.

These are the workflows I think are the most useful:

* [Colors](http://www.packal.org/workflow/colors): Color tools for developers
* [Open-with-VSCode](https://github.com/alexchantastic/alfred-open-with-vscode-workflow): Open files or folders with Visual Studio Code
* [Playsong](https://github.com/caleb531/play-song): Make playing music in iTunes extremely quick and convenient

## Thanks to

* [@mathiasbynens](https://github.com/mathiasbynens) for his amazing [dotfiles](https://github.com/mathiasbynens/dotfiles)
* [@robbyrussell](https://github.com/robbyrussell) for the amazing guides of [Oh My Zsh](https://github.com/robbyrussell/oh-my-zsh)
