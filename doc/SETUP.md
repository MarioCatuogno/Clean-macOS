# Setup

This is a detailed list of instruction to setup a fresh macOS environment as fast and efficient as possible.

## Table of content

- [Setup](#setup)
  - [Table of content](#table-of-content)
  - [Instructions](#instructions)

## Instructions

You need an active internet connection and one of the following macOS version:

* macOS 10.12 "Sierra"
* macOS 10.13 "High Sierra"
* macOS 10.14 "Mojave"
* macOS 10.15 "Catalina"

Do a fresh install of macOS (version 10.12+) and after your first access to macOS follow the instructions below:

1. Open __Terminal.app__ and download the project with the following command `git clone https://github.com/MarioCatuogno/Clean-macOS.git ~/cleanMacOS`
2. Choose a configuration file from `~/cleanMacOS/config`, copy it into `~/cleanMacOS/` and rename it as `Brewfile`
3. Launch the command `chmod 777 ~/cleanMacOS/setup/install.sh`
4. Open __Terminal.app__ and run the following command `./~/cleanMacOS/setup/install.sh`, the following promtp will appear from which you can choose one of the options:

<p align="center">
  <a href="https://github.com/MarioCatuogno/Clean-macOS">
  <img width=600px src="https://raw.githubusercontent.com/MarioCatuogno/Clean-macOS/master/img/scrn_cleanmacos_terminal.png" alt="Clean-macOS terminal"><br></a>
</p>

5. Input number __1__ (`Install Homebrew`) to install Homebrew package and dependencies
6. Launch the command `mas signin YOUREMAIL`
7. Input number __2__ (`Install Applications`) to install binaries, cask and Mac Apple Store application listed in `Brewfile` file
8. Input number __3__ (`Configure macOS`) to configure macOS with useful commands
9. Go to __Keyboard > Text >__ Disable "Correct spelling automatically"
10. Go to __Security and Privacy > Firewall >__ On
11. Go to __Security and Privacy > General >__ App Store and identified developers
12. Go to __File Sharing >__ Off
13. Input number __4__ (`Update`) to update brews, casks and MAS applications and formulaes
14. Restart macOS