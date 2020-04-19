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

1. Update macOS via Mac App Store and signin with your AppleID
2. Open __Terminal.app__ and download the project with the following command `git clone https://github.com/MarioCatuogno/Clean-macOS.git ~/cleanMacOS`
3. Install command line developer tool if asked by clicking on `Install`
4. If you want to change the apps that will be installed edit the `Brewfile` file
5. Launch the command `chmod -R 777 ~/cleanMacOS/`
6. Open __Terminal.app__ and run the following command `~/cleanMacOS/cleanMacOS.sh`, the following promtp will appear from which you can choose one of the options:

<p align="center">
  <a href="https://github.com/MarioCatuogno/Clean-macOS">
  <img width=600px src="https://raw.githubusercontent.com/MarioCatuogno/Clean-macOS/master/img/scrn_cleanmacos_terminal.png" alt="Clean-macOS terminal"><br></a>
</p>

7. Input number __1__ (`Install Homebrew`) to install Homebrew package and dependencies
8. Input number __2__ (`Install Applications`) to install binaries, cask and Mac Apple Store application listed in `Brewfile` file
9. Input number __3__ (`Configure macOS`) to configure macOS with useful commands
10. Go to __Keyboard > Text >__ Disable "Correct spelling automatically"
11. Go to __Security and Privacy > Firewall >__ On
12. Go to __Security and Privacy > General >__ App Store and identified developers
13. Go to __File Sharing >__ Off
14. Input number __4__ (`Update`) to update brews, casks and MAS applications and formulaes
15. Restart macOS
