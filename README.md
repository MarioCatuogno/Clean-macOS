# Clean macOS

This document describes how to set up a clean environment of macOS.

## Table of content

* [Installation](#installation)
  * [Install basic stuff](#install-basic-stuff)
  * [Configure VS Code](#configure-vs-code)
  * [Configure Sublime Text](#configure-sublime-text)
  * [Configure iTerm2](#configure-iterm2)
  * [Configure Git](#configure-git)

## Installation

### Install basic stuff

The first thing to do is to update the OS. For that go to __Apple Icon > Software Update__.
After this you can run the script /Clean-macOS/script/__macOs.sh__ using the command `./cmx.sh install`, this will:

- Install XCode
- Install [Homebrew](https://brew.sh)
- Install [Cask](http://caskroom.io)
- Install various application ([see list](https://github.com/MarioCatuogno/Clean-macOS/blob/release/doc/apps_list.md))
- Install and configure GIT
- Install and configure Python
- Install and configure Visual Studio Code
- Install and configure iTerm2 and ZSH

### Configure VS Code

Open __Visaul Studio Code__ app and press `ALT+CMD+P` then do the following steps:

- _theme > Preferences: Color Theme > Material Theme_
- _theme > Preferences: File Icon Theme > Material Icon Theme_
- _shell > Shell Command: Install 'code' command in PATH_

### Configure Sublime Text

Open __Sublime Text__ app and press `ALT+CMD+P` then to manually install packages, follow this steps:

- _install > Package Control: Install Package > A File Icon_
- _install > Package Control: Install Package > Git_
- _install > Package Control: Install Package > GitGutter_
- _install > Package Control: Install Package > Markdown Extended_
- _install > Package Control: Install Package > MarkdownLivePreview_
- _install > Package Control: Install Package > MarkdownPreview_
- _install > Package Control: Install Package > SAS Syntax and Theme_
- _install > Package Control: Install Package > Tomorrow Night Italics Color Scheme_

### Configure iTerm2

Open __iTerm2__ appl and go to _Preferences > Profiles > Windows_ and change the size to __125__ for Columns and __35__ for Rows.

### Configure Git

Open ~/.gitconfig and put the email into `email` field.
