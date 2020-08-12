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

__Clean-macOS__ is a simple script that can be used after a clean installation of macOS to configure and install all the apps that you need. It uses _dotfiles_ and _shell scripts_ in order to speed up the configuration of macOS.

## Table of content

- [Table of content](#table-of-content)
- [Getting Started](#getting-started)
- [Requirements](#requirements)
- [Setup](#setup)
- [Contributing](#contributing)
- [Useful links](#useful-links)
- [Credits](#credits)

## Getting Started

You need an active internet connection and one of the following macOS version already installed:

- ✔️ macOS 10.15 "Catalina"
- ✔️ macOS 11.00 "Big Sur"

## Requirements

1. Fresh installation of macOS (version 10.15+)
2. Signed to Apple Store with your iCloud account
3. Cloned the repo with the command `git clone https://github.com/MarioCatuogno/Clean-macOS.git ~/Clean-macOS`

## Setup

Open __Terminal.app__ and run the command `chmod -R 777 ~/Clean-macOS && ~/Clean-macOS/Clean-macOS.sh`, the following promtp will appear from which you can choose one of the options:

<p align="center">
  <a href="https://github.com/MarioCatuogno/Clean-macOS">
  <img width=600px src="https://raw.githubusercontent.com/MarioCatuogno/Clean-macOS/master/img/scrn_cleanmacos_terminal.png" alt="Clean-macOS terminal"><br></a>
</p>

1. `Install`: install Homebrew package, binaries, casks, dependencies and Mac Apple Store application listed in `Brewfile` file
2. `Configure`: configure macOS with useful commands and update `zsh` and `Visual Studio Code` plugins and preferences
3. `Update`: update brews, casks and MAS applications and formulaes

For a step-by-step guide click [__here__](https://github.com/MarioCatuogno/Clean-macOS/blob/master/doc/SETUP.md).

## Contributing

You are encouraged to fork this repository and to open issue to discuss the change you wish to make. If you want to actively contribute, click [__here__](https://github.com/MarioCatuogno/Clean-macOS/blob/master/doc/CONTRIBUTING.md) for guidelines.

If you find it useful, please star or tell others about this repo.

## Useful links

Click [__here__](https://github.com/MarioCatuogno/Clean-macOS/blob/master/doc/APPLIST.md) to find a collection of various apps I've personally tested or used in the past on macOS.

Click [__here__](https://github.com/MarioCatuogno/Clean-macOS/blob/master/doc/CHANGELOG.md) to find the full changelog history.

Click [__here__](https://github.com/MarioCatuogno/Clean-macOS/projects/8) to find the current status and the upcoming milestones of the Clean-macOS project.

## Credits

- [@mathiasbynens](https://github.com/mathiasbynens) for his amazing [dotfiles](https://github.com/mathiasbynens/dotfiles)
- [@robbyrussell](https://github.com/robbyrussell) for the guides of [Oh My Zsh](https://github.com/robbyrussell/oh-my-zsh)

---

<p align="center">
  <a href="https://github.com/MarioCatuogno/Clean-macOS">
  <img width=600px src="https://raw.githubusercontent.com/MarioCatuogno/Clean-macOS/master/img/scrn_mydesktop.png" alt="Clean-macOS desktop"><br></a>
</p>
