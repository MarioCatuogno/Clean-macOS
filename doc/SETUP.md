# Setup

This is a detailed list of instructions to setup a fresh macOS environment as fast and efficient as possible.

## Table of content

- [Setup](#setup)
  - [Table of content](#table-of-content)
  - [Requirements](#requirements)

## Requirements

You need an active internet connection and one of the following macOS version:

- ❌ ~~macOS 10.12 "Sierra"~~ (use [1.10.0-RELEASE](https://github.com/MarioCatuogno/Clean-macOS/releases/tag/1.10.0))
- ❌ ~~macOS 10.13 "High Sierra"~~ (use [1.10.0-RELEASE](https://github.com/MarioCatuogno/Clean-macOS/releases/tag/1.10.0))
- ❌ ~~macOS 10.14 "Mojave"~~ (use [1.10.0-RELEASE](https://github.com/MarioCatuogno/Clean-macOS/releases/tag/1.10.0))
- ✔️ macOS 10.15 "Catalina"
- ✔️ macOS 11.00 "Big Sur"
- ✔️ macOS 12.00 "Monterey"

Do a fresh install of macOS (version 10.15+) and after your first access to macOS follow the instructions below:

1. Update macOS via Mac App Store and signin with your AppleID
2. Open __Terminal.app__ and download the project with the following command `git clone https://github.com/MarioCatuogno/Clean-macOS.git ~/Clean-macOS`
3. If you haven't previously installed `X-code` then click __Yes__ in the prompt
4. Edit the `Brewfile` file choosing the apps that you want to install
5. Open __Terminal.app__ and run the following command `chmod -R 777 ~/Clean-macOS && ~/Clean-macOS/Clean-macOS.sh`, the following promtp will appear from which you can choose one of the options:

<p align="center">
  <a href="https://github.com/MarioCatuogno/Clean-macOS">
  <img width=600px src="https://raw.githubusercontent.com/MarioCatuogno/Clean-macOS/master/img/scrn_cleanmacos_terminal.png" alt="Clean-macOS terminal"><br></a>
</p>

7. Input number __1__ (`Install`) to install Homebrew packages, Cask apps and dependencies
8. Input number __2__ (`Configure`) to configure macOS with useful commands and to update `zsh` and `Visual Studio Code` plugins and preferences. After that Visual Studio Code will look like this:

<p align="center">
  <a href="https://github.com/MarioCatuogno/Clean-macOS">
  <img width=600px src="https://raw.githubusercontent.com/MarioCatuogno/Clean-macOS/master/img/scrn_myvscode.png" alt="Visual Studio Code"><br></a>
</p>

9. Go to __Keyboard > Text >__ Disable "Correct spelling automatically"
10. Input number __3__ (`Update`) to update brews, casks and MAS applications and formulaes
11. Restart macOS
