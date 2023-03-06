<p align="center">
  <a href="https://github.com/MarioCatuogno/Clean-macOS">
 <img width=150px src="https://raw.githubusercontent.com/MarioCatuogno/Clean-macOS/master/img/logo_clean_macos.png" alt="Clean-macOS logo"></a>
</p>

<h2 align="center">Clean-macOS</h2>

<div align="center">

[![Status](https://img.shields.io/github/last-commit/MarioCatuogno/Clean-macOS.svg?style=flat-square)](https://github.com/MarioCatuogno/Clean-macOS/commits/master)
[![GitHub
Issues](https://img.shields.io/github/issues/MarioCatuogno/Clean-macOS.svg?style=flat-square)](https://github.com/MarioCatuogno/Clean-macOS/issues)
[![License](https://img.shields.io/badge/license-MIT-orange.svg?style=flat-square)](https://github.com/MarioCatuogno/Clean-macOS/blob/master/LICENSE)
[![Version](https://img.shields.io/github/v/release/MarioCatuogno/Clean-macOS.svg?style=flat-square)](https://github.com/MarioCatuogno/Clean-macOS/releases)

</div>

---

__Clean-macOS__ is a script that automates the configuration of a new macOS installation. By using _dotfiles_ and _shell scripts_, Clean-macOS can quickly configure macOS and install all the necessary apps.

## Table of content

- [Table of content](#table-of-content)
- [Getting Started](#getting-started)
- [Requirements](#requirements)
- [Usage](#usage)
- [Contributing](#contributing)
- [Useful links](#useful-links)
- [Credits](#credits)

## Getting Started

To get started with Clean-macOS, clone this repository using the command:

  ```shell
  git clone https://github.com/MarioCatuogno/Clean-macOS.git ${HOME}/Clean-macOS
  ```

## Requirements

Clean-macOS requires the following:

1. An active internet connection
2. macOS 10.15.0 or newer
3. Signed in to Apple Store with your iCloud account

## Usage

To use Clean-macOS, open Terminal.app and run the command:

  ```shell
  chmod -R 755 ${HOME}/Clean-macOS && ${HOME}/Clean-macOS/Clean-macOS.sh
  ```

This will bring up a prompt with the following options: 

<p align="center">
  <a href="https://github.com/MarioCatuogno/Clean-macOS">
  <img width=600px src="https://raw.githubusercontent.com/MarioCatuogno/Clean-macOS/master/img/scrn_cleanmacos_terminal.png" alt="Clean-macOS terminal"><br></a>
</p>

1. `Install`: Install Homebrew packages, binaries, casks, dependencies, and Mac Apple Store applications listed in the `Brewfile` file.
2. `Configure`: Configure macOS with useful commands, update `zsh`, and preferences.
3. `Update`: Update brews, casks, and MAC applications and formulas.

A step-by-step guide for setting up Clean-macOS can be found [__here__](https://github.com/MarioCatuogno/Clean-macOS/blob/master/doc/SETUP.md).

## Contributing

You are welcome to contribute to Clean-macOS by forking this repository and opening an issue to discuss the changes you want to make. Please read our [contributing guidelines](https://github.com/MarioCatuogno/Clean-macOS/blob/master/doc/CONTRIBUTING.md) before contributing.

## Useful links

* [__APPLIST__](https://github.com/MarioCatuogno/Clean-macOS/blob/master/doc/APPLIST.md): a collection of various apps I've personally tested or used. These apps are included in my Brewfile, which allows you to quickly and easily install them on your own machine using Homebrew.
* [__CHANGELOG__](https://github.com/MarioCatuogno/Clean-macOS/blob/master/doc/CHANGELOG.md): the full changelog history.

## Credits

- [@mathiasbynens](https://github.com/mathiasbynens) for his amazing
  [dotfiles](https://github.com/mathiasbynens/dotfiles)
- [@robbyrussell](https://github.com/robbyrussell) for the guides of [Oh My
  Zsh](https://github.com/robbyrussell/oh-my-zsh)

---

<p align="center">
  <a href="https://github.com/MarioCatuogno/Clean-macOS">
  <img width=600px src="https://raw.githubusercontent.com/MarioCatuogno/Clean-macOS/master/img/scrn_mydesktop.png" alt="Clean-macOS desktop"><br></a>
</p>
