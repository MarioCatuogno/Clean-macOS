<h2 align="center">Clean mac-OS</h2>

<div align="center">

[![Status](https://img.shields.io/github/last-commit/MarioCatuogno/Clean-macOS.svg?style=flat-square)](https://github.com/MarioCatuogno/Clean-macOS/commits/master)
[![GitHub Issues](https://img.shields.io/github/issues/MarioCatuogno/Clean-macOS.svg?style=flat-square)](https://github.com/MarioCatuogno/Clean-macOS/issues)
[![License](https://img.shields.io/badge/license-MIT-orange.svg?style=flat-square)](https://github.com/MarioCatuogno/Clean-macOS/blob/master/LICENSE)
[![Version](https://img.shields.io/github/v/release/MarioCatuogno/Clean-macOS.svg?style=flat-square)](https://github.com/MarioCatuogno/Clean-macOS/releases)

</div>

---

<p align="center">
💻 A bash script to install and configure mac-OS after clean install.
  <br>
</p>

## 📝 Table of content

+ [About](#about)
+ [How it works](#working)
+ [Getting started](#getting-started)
  + [Prerequisites](#prerequisites)
  + [Installing](#installing)
+ [Roadmap](#roadmap)
+ [Contributing](#contributing)
+ [Acknowledgements](#acknowledgements)

## 🧐 About <a name = "about"></a>

## 💭 How it works <a name = "working"></a>

## 🏁 Getting Started <a name = "getting-started"></a>

### Prerequisites

### Installing

## 📅 Roadmap <a name = "roadmap"></a>

To check the current status and the upcoming milestones of the Clean-macOS project, click [__here__](https://github.com/MarioCatuogno/Clean-macOS/projects/8).

For the full changelog history, click [__here__](https://github.com/MarioCatuogno/Clean-macOS/blob/master/CHANGELOG.md).

## ✍️ Contributing <a name = "contributing"></a>

You are encouraged to fork this repository and to open issue to discuss the change you wish to make. If you want to actively contribute, click [__here__](https://github.com/MarioCatuogno/Clean-macOS/blob/master/CONTRIBUTING.md) for guidelines.

If you find it useful, please star or tell others about this repo.

## 🎉 Acknowledgements <a name = "acknowledgements"></a>

+ [@mathiasbynens](https://github.com/mathiasbynens) for his amazing [dotfiles](https://github.com/mathiasbynens/dotfiles)
+ [@mikaelgustafsson](https://mikaelgustafsson.art) for his amazing [wallpapers](https://www.instagram.com/mklgustafsson/)
+ [@robbyrussell](https://github.com/robbyrussell) for the guides of [Oh My Zsh](https://github.com/robbyrussell/oh-my-zsh)

---

This document describes how to set up a clean environment for macOS.
I use this repository to keep track of the steps required to have a an up-and-running operating system in __less then one hour__.

<img src="https://raw.githubusercontent.com/MarioCatuogno/Clean-MacOS-X/master/img/scrn_mydesktop.png" width="800" align="middle"/>

### Install basic stuff

Download the last release .zip from [this](https://github.com/MarioCatuogno/Clean-macOS/releases) link, copy and unzip into your __Documents__ folder.

You can run the script /Clean-macOS/bin/__config.sh__ from __Terminal.app__. If you run this for the first time, you have to launch first the command `(1) Install`: this will install homebrew and few others basic stuff. Feel free to explore the code of each script.

The __setup.sh__ script will:

- Install XCode
- Install [Homebrew](https://brew.sh)
- Install various application (list [here](https://github.com/MarioCatuogno/Clean-macOS/blob/master/doc/apps_list.md))
- Install and configure GIT
- Install and configure Python
- Install and configure Visual Studio Code
- Install and configure iTerm2 and ZSH
- Launch macOS commands to improve system performance

### Configure VS Code

Open __Visaul Studio Code__ app and press `ALT+CMD+P` then do the following steps:

- _theme > Preferences: Color Theme > Ayu Mirage_
- _theme > Preferences: File Icon Theme > Ayu_
- _shell > Shell Command: Install 'code' command in PATH_

<img src="https://raw.githubusercontent.com/MarioCatuogno/Clean-MacOS-X/master/img/scrn_myvscode.png" width="800" align="middle"/>

### Configure iTerm2

Open __iTerm2__ app and go to _Preferences > Profiles > Windows_ and change the size to __125__ for Columns and __35__ for Rows. I usually save my personal preferences on Dropbox, then I select the preference file from _Preferences > Load preferences from a custom folder_ and select the folder `~/Dropbox/AppSettings/iTerm2`.

<img src="https://raw.githubusercontent.com/MarioCatuogno/Clean-MacOS-X/master/img/scrn_myiterm.png" width="800" align="middle"/>

### Configure Git

Open ~/.gitconfig and change the Github email into `email` field.

### Configure Alfred

Open __Alfred__ app and go to _Preferences > Advanced > Syncing_ and select the folder `~/Dropbox/AppSettings/Alfred`.
Open this [link](https://github.com/stuartcryan/custom-iterm-applescripts-for-alfred) and copy the Apple Script to use __iTerm__ as default terminal in Alfred. Paste the content into _Preferences > Features > Terminal/Shell > Application: Custom_.
Go to _System Preferences > Keyboard > Shortcuts > Spotlight_ and remove the keybind `CMD+SPACE`; then open Alfred and go to _Preferences > General_ and select `CMD+SPACE` as default keybind.

These are the workflows I think are the most useful:

- [Open-with-VSCode](https://github.com/alexchantastic/alfred-open-with-vscode-workflow): Open files or folders with Visual Studio Code

### Configure Popclip

These are the extensions I think are the most useful:

- [Alfred](https://pilotmoon.com/popclip/extensions/page/Alfred): Activate Alfred with the selected text
- [Copy as Markdown](https://pilotmoon.com/popclip/extensions/page/CopyAsMarkdown): Copy web content as Markdown text
- [Notes](https://pilotmoon.com/popclip/extensions/page/Notes): Make a new note, or append to an existing note, in the Notes app

### More apps

Click [__here__](https://github.com/MarioCatuogno/Clean-macOS/blob/master/doc/apps_list.md) to find a collection of various apps I've personally tested or used on macOS.

Click [__here__](https://github.com/MarioCatuogno/Clean-macOS/blob/master/doc/apps_removed.md) to find the removed apps from previous script versions.
