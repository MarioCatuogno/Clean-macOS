# Setup

This document provides detailed instructions to set up a fresh macOS environment quickly and efficiently.

## Table of content

- [Setup](#setup)
  - [Table of content](#table-of-content)
  - [Requirements](#requirements)
  - [Installation Steps](#installation-steps)
  - [Customization](#customization)
  - [Updating](#updating)

## Requirements

To use this setup guide, you need an active internet connection and a Mac with macOS 13.0 or later.

## Installation Steps

1. Do a fresh install of macOS (version 13.0 or later) and sign in with your AppleID.
2. Open Terminal.app and download the project by running the command: `git clone https://github.com/MarioCatuogno/Clean-macOS.git ${HOME}/Clean-macOS`
3. If you haven't previously installed Xcode, click Yes in the prompt that appears.
4. Edit the Brewfile file to select the apps that you want to install.
5. Run the following command in Terminal.app: `chmod -R 755 ${HOME}/Clean-macOS && ${HOME}/Clean-macOS/Clean-macOS.sh`. This will prompt you to select one of the following options:

<p align="center">
  <a href="https://github.com/MarioCatuogno/Clean-macOS">
  <img width=600px src="https://raw.githubusercontent.com/MarioCatuogno/Clean-macOS/master/img/scrn_cleanmacos_terminal.png" alt="Clean-macOS terminal"><br></a>
</p>

6. Input number __1__ (__Install__) to install Homebrew packages, Cask apps, and dependencies.
7. Input number __2__ (__Configure__) to configure macOS with useful commands, and to update zsh and Visual Studio Code plugins and preferences. After this step, Visual Studio Code will look like this:

<p align="center">
  <a href="https://github.com/MarioCatuogno/Clean-macOS">
  <img width=600px src="https://raw.githubusercontent.com/MarioCatuogno/Clean-macOS/master/img/scrn_myvscode.png" alt="Visual Studio Code"><br></a>
</p>

8. Go to Keyboard > Text > and disable "Correct spelling automatically."
9. Input number __3__ (__Update__) to update brews, casks, MAS applications, and formulae.
10. Restart macOS.

## Customization

The __Brewfile__ file contains a list of apps that will be installed during setup. You can edit this file to choose the apps you want to install.

## Updating

To update your macOS environment, run the following command in Terminal.app: `cd ${HOME}/Clean-macOS && git pull && ${HOME}/Clean-macOS/Clean-macOS.sh -u`. This will update the project files and then, when the prompt appears, you will select option number __3__ (__Update__) to update brews, casks, MAS applications, and formulae.

By following these steps, you can quickly set up a new macOS environment with all the apps and tools you need.
