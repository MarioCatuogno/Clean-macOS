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

__Clean-macOS__ is a simple script that can be used after a clean installation
of macOS to configure and install all the apps you need. It uses _dotfiles_ and
_shell scripts_ to speed up the configuration of macOS.

## Table of content

- [Table of content](#table-of-content)
- [Getting Started](#getting-started)
- [Requirements](#requirements)
- [Usage](#usage)
- [Contributing](#contributing)
- [Useful links](#useful-links)
- [Credits](#credits)

## Getting Started

## Requirements

1. An active internet connection
2. macOS 10.15.0 or newer
3. Signed to Apple Store with your iCloud account

## Usage

1. Clone this repo with the following command:

  ```shell
  git clone https://github.com/MarioCatuogno/Clean-macOS.git ~/Clean-macOS
  ```

2. Open __Terminal.app__ and run the command:

  ```shell
  chmod -R 755 ~/Clean-macOS && ~/Clean-macOS/Clean-macOS.sh
  ```

The following prompt will appear from which you can choose one of the options:

<p align="center">
  <a href="https://github.com/MarioCatuogno/Clean-macOS">
  <img width=600px src="https://raw.githubusercontent.com/MarioCatuogno/Clean-macOS/master/img/scrn_cleanmacos_terminal.png" alt="Clean-macOS terminal"><br></a>
</p>

1. `Install`: install Homebrew package, binaries, casks, dependencies, and Mac
   Apple Store application listed in `Brewfile` file
2. `Configure`: configure macOS with useful commands, update `zsh`, and `Visual
   Studio Code` plugins and preferences
3. `Update`: update brews, casks, and MAC applications and formulaes

Find a step-by-step guide
[__here__](https://github.com/MarioCatuogno/Clean-macOS/blob/master/doc/SETUP.md).

## Contributing

You are encouraged to fork this repository and open an issue to discuss the
change you wish to make. If you want to contribute, please read our
[contributing guidelines](https://github.com/MarioCatuogno/Clean-macOS/blob/master/doc/CONTRIBUTING.md).

## Useful links

Click
[__here__](https://github.com/MarioCatuogno/Clean-macOS/blob/master/doc/APPLIST.md)
to find a collection of various apps I've personally tested or used in the past
on macOS.

Click
[__here__](https://github.com/MarioCatuogno/Clean-macOS/blob/master/doc/CHANGELOG.md)
to find the full changelog history.

Click [__here__](https://github.com/MarioCatuogno/Clean-macOS/projects/8) to
find the current status and the upcoming milestones of the Clean-macOS project.

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
