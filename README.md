<p align="center">
  <a href="https://github.com/MarioCatuogno/Clean-macOS">
 <img width=200px src="https://raw.githubusercontent.com/MarioCatuogno/Clean-macOS/master/img/logo_clean_macos.png" alt="Clean-macOS logo"></a>
</p>

<h2 align="center">Clean macOS</h2>

<div align="center">

[![Status](https://img.shields.io/github/last-commit/MarioCatuogno/Clean-macOS.svg?style=flat-square)](https://github.com/MarioCatuogno/Clean-macOS/commits/master)
[![GitHub Issues](https://img.shields.io/github/issues/MarioCatuogno/Clean-macOS.svg?style=flat-square)](https://github.com/MarioCatuogno/Clean-macOS/issues)
[![License](https://img.shields.io/badge/license-MIT-orange.svg?style=flat-square)](https://github.com/MarioCatuogno/Clean-macOS/blob/master/LICENSE)
[![Version](https://img.shields.io/github/v/release/MarioCatuogno/Clean-macOS.svg?style=flat-square)](https://github.com/MarioCatuogno/Clean-macOS/releases)

</div>

---

<p align="center">
💻 A shell script to install and configure macOS.
  <br>
</p>

## Table of content

- [Table of content](#table-of-content)
- [About](#about)
- [Getting Started](#getting-started)
- [Prerequisites](#prerequisites)
- [Installing](#installing)
- [Useful links](#useful-links)
- [Contributing](#contributing)
- [Acknowledgements](#acknowledgements)

## About

__Clean-macOS__ is a simple script that can be used after a clean installation of macOS to configure and install all the apps. It uses _dotfiles_ and _shell scripts_ in order to speed up the configuration of macOS.

There are many repositories of various developers on Github, and every single one of them seemed to be very "unique". The reason for this is that _dotfiles_ are very personal and there is no "best setup".

The basic idea behind this project is that the setup and configuration of a new Mac should be as smooth, simple and fast as possible. For this reason there is just one script that prompts a menu from which you chose what kind of profile you want to install on your Mac. Each profile has different apps, options, dependencies and binaries. So no matter if you're a developer or a graphic designer, your Mac will run just fine.

## Getting Started

You need an active internet connection and one of the following macOS version:

- ❌ ~~macOS 10.12 "Sierra"~~
- ❌ ~~macOS 10.13 "High Sierra"~~
- ❌ ~~macOS 10.14 "Mojave"~~
- ✔️ macOS 10.15 "Catalina"
- ✔️ macOS 11.00 "Big Sur"

## Prerequisites

1. Do a fresh install of macOS (version 10.15+)
2. Sign in Apple Store with your iCloud account
3. Open __Terminal.app__ and download the project with the following command `git clone https://github.com/MarioCatuogno/Clean-macOS.git ~/Clean-macOS`
4. If you want to change the apps that will be installed edit the `Brewfile` file

## Installing

Open __Terminal.app__ and run the following command `chmod -R 777 ~/Clean-macOS && ~/Clean-macOS/Clean-macOS.sh`, the following promtp will appear from which you can choose one of the options:

<p align="center">
  <a href="https://github.com/MarioCatuogno/Clean-macOS">
  <img width=600px src="https://raw.githubusercontent.com/MarioCatuogno/Clean-macOS/master/img/scrn_cleanmacos_terminal.png" alt="Clean-macOS terminal"><br></a>
</p>

1. `Install`: install Homebrew package, binaries, casks, dependencies and Mac Apple Store application listed in `Brewfile` file
2. `Configure`: configure macOS with useful commands and update `zsh` and `Visual Studio Code` plugins and preferences
3. `Update`: update brews, casks and MAS applications and formulaes

If you have done a fresh install, run all the commands in the sequence listed above. For a detailed list on how to run the script click [__here__](https://github.com/MarioCatuogno/Clean-macOS/blob/master/doc/SETUP.md).

## Useful links

Click [__here__](https://github.com/MarioCatuogno/Clean-macOS/blob/master/doc/APPLIST.md) to find a collection of various apps I've personally tested or used in the past on macOS.

Click [__here__](https://github.com/MarioCatuogno/Clean-macOS/blob/master/doc/CHANGELOG.md) to find the full changelog history.

Click [__here__](https://github.com/MarioCatuogno/Clean-macOS/projects/8) to find the current status and the upcoming milestones of the Clean-macOS project.

## Contributing

You are encouraged to fork this repository and to open issue to discuss the change you wish to make. If you want to actively contribute, click [__here__](https://github.com/MarioCatuogno/Clean-macOS/blob/master/doc/CONTRIBUTING.md) for guidelines.

If you find it useful, please star or tell others about this repo.

## Acknowledgements

- [@mathiasbynens](https://github.com/mathiasbynens) for his amazing [dotfiles](https://github.com/mathiasbynens/dotfiles)
- [@robbyrussell](https://github.com/robbyrussell) for the guides of [Oh My Zsh](https://github.com/robbyrussell/oh-my-zsh)

---

<p align="center">
  <a href="https://github.com/MarioCatuogno/Clean-macOS">
  <img width=600px src="https://raw.githubusercontent.com/MarioCatuogno/Clean-macOS/master/img/scrn_mydesktop.png" alt="Clean-macOS desktop"><br></a>
</p>
