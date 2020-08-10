# Version history

All notable changes to this project will be documented in this file. The types of changes tracked are the following ones:

* 🔥 __CHANGED__: for changes in existing functionality
* 📝 __DOCS__: for documentation and guides
* 🐛 __FIXED__: for any bug fixes
* 📦 __NEW__: for new features
* 🗑️ __REMOVED__: for removed features
* 🔑 __SECURITY__: in case of vulnerabilities

---

## __1.11.0__ ([2020-10-31](https://github.com/MarioCatuogno/Clean-macOS/milestone/7))

__CHANGED__

* 🔥 update `Visual Studio Code` preferences file
* 🔥 remove some unused commands from `config.sh` file [[#79](https://github.com/MarioCatuogno/Clean-macOS/issues/79)]

__DOCS__

* 📝 create CONFIGMACOS file [[#80](https://github.com/MarioCatuogno/Clean-macOS/issues/80)]
* 📝 update APPLIST file
* 📝 update CHANGELOG file
* 📝 update README file [[#80](https://github.com/MarioCatuogno/Clean-macOS/issues/80)]

__NEW__

* 📦 add `ProtonVPN` homebrew formula

__REMOVED__

* 🗑️ remove `Miniconda` install script from `config.sh`
* 🗑️ remove version control from shell scripts [[#79](https://github.com/MarioCatuogno/Clean-macOS/issues/79)]

## __1.10.1__ ([2020-08-05](https://github.com/MarioCatuogno/Clean-macOS/milestone/6))

Cleanup and few changes before the next big update (in time for macOS Big Sur).

__CHANGED__

* 🔥 move `Miniconda` install script into `config.sh` file (major overhaul next release)
* 🔥 update `Visual Studio Code` packages list
* 🔥 update `Visual Studio Code` preferences file
* 🔥 update `.zshrc` config file

__DOCS__

* 📝 update APPLIST file
* 📝 update CHANGELOG file
* 📝 update README file
* 📝 remove outdated docs

__NEW__

* 📦 add `Authy` homebrew formula
* 📦 add `Sourcetree` homebrew formula
* 📦 add `Transmit` homebrew formula
* 📦 add `devPython.yml` config file fon Miniconda

__REMOVED__

* 🗑️ remove `.zshrc` from `update.sh` file
* 🗑️ remove Python libraries from `config.sh` file
* 🗑️ remove some VSCode extensions
* 🗑️ remove `Discord` homebrew formula
* 🗑️ remove `Docker` homebrew formula
* 🗑️ remove `ExpressVPN` homebrew formula
* 🗑️ remove `Steam` homebrew formula
* 🗑️ remove `Wipr` homebrew formula

## __1.10.0__ ([2020-04-19](https://github.com/MarioCatuogno/Clean-macOS/milestone/6))

Major overhaul and more polish.

__CHANGED__

* 🔥 add `conda update --all` command to `update.sh` file
* 🔥 add `conda update --all` command to `update.sh` file

__DOCS__

* 📝 update CHANGELOG file

__NEW__

* 📦 add `Microsoft-Teams` homebrew formula
* 📦 add `Miniconda` install script into `install.sh` file
* 📦 new `Brewfile` containing all apps and bins. If you want to personalize your configuration you can edit this file choosing from various reviewed apps (click [here](https://github.com/MarioCatuogno/Clean-macOS/blob/master/doc/apps_list.md))

__REMOVED__

* 🗑️ remove (🧟 __personal__), (👨‍💻 __developer__) and (👶 __basic__) profiles: now all apps and bins are listed in one single file
* 🗑️ remove `Cyberduck` homebrew formula

__SECURITY__

* 🔑 update `.zshrc` file

## __1.9.3__ ([2020-04-15](https://github.com/MarioCatuogno/Clean-macOS/milestone/5))

Minor bugfixing and new formulaes.

__DOCS__

* 📝 update CHANGELOG file

__FIXED__

* 🐛 remove shutdown command from `config.sh`

__NEW__

* 📦 (👨‍💻 __developer__)(🧟 __personal__) add `Cyberduck` homebrew formula
* 📦 (🧟 __personal__) add `Discord` homebrew formula
* 📦 (👨‍💻 __developer__)(🧟 __personal__) add `nmap` homebrew formula
* 📦 (🧟 __personal__) add `istat-menus` homebrew formula
* 📦 (🧟 __personal__) add `Spotify` homebrew formula

__REMOVED__

* 🗑️ (🧟 __personal__) remove `gswitch` homebrew formula
* 🗑️ (🧟 __personal__) remove `NetNewsWire` homebrew formula
* 🗑️ (🧟 __personal__) remove `qlcolorcode` homebrew formula
* 🗑️ (🧟 __personal__) remove `qlmarkdown` homebrew formula
* 🗑️ (🧟 __personal__) remove `qlvideo` homebrew formula
* 🗑️ (🧟 __personal__) remove `quicklook-csv` homebrew formula
* 🗑️ (🧟 __personal__) remove `quicklook-json` homebrew formula
* 🗑️ (🧟 __personal__) remove `qlstephen` homebrew formula
* 🗑️ (🧟 __personal__) remove `Steermouse` homebrew formula

## __1.9.2__ ([2020-01-11](https://github.com/MarioCatuogno/Clean-macOS/milestone/5))

Major bugfixing and better documentation.

__DOCS__

* 📝 update CHANGELOG file
* 📝 update README file
* 📝 update SETUP file

__FIXED__

* 🐛 fix `config.sh` script (add `xattr -dr` command for `Visual Studio Code` app)
* 🐛 fix `install.sh` script (remove loop and change `brew bundle` command)
* 🐛 fix `setup.sh` script (remove shutdown command)
* 🐛 fix `update.sh` script (remove shutdown command)

## __1.9.1__ ([2019-12-31](https://github.com/MarioCatuogno/Clean-macOS/milestone/5))

Minor bugfixing and better documentation.

__DOCS__

* 📝 update CHANGELOG file
* 📝 update README file
* 📝 add SETUP file

## __1.9.0__ ([2019-12-31](https://github.com/MarioCatuogno/Clean-macOS/milestone/5))

Complete overhaul of configuration and setup. Now it's even easier to choose which configuration you want for your newly fresh macOS.

__CHANGED__

* 🔥 add `Audio Hijack`, `Better Blocker`, `Firefox` and `NetNewsWire` to APPS_LIST
* 🔥 update `Visual Studio Code` preferences file
* 🔥 update shell script files [[#68](https://github.com/MarioCatuogno/Clean-macOS/issues/68)]

__DOCS__

* 📝 update APPS_LIST file
* 📝 update CHANGELOG file
* 📝 update README file

__FIXED__

* 🐛 fix varioust commands

__NEW__

* 📦 (👨‍💻 __developer__) add `Firefox` homebrew formula
* 📦 (🧟 __personal__) add `NetNewsWire` homebrew formula
* 📦 add (🧟 __personal__), (👨‍💻 __developer__) and (👶 __basic__) profiles
* 📦 upload new icons

__REMOVED__

* 🗑️ remove unused scripts

## __1.8.0__ ([2019-10-31](https://github.com/MarioCatuogno/Clean-macOS/milestone/4))

Biggest release ever! I've re-organized the setup, updated the config files and updated the README file with a detailed guide.

There is now one single script called `cleanMacOs.sh` that has two functions:

* __update__: update macOS apps and binaries, clean temporary files and run some _brew_ diagnostics
* __install__: install apps, binaries and configure macOS, to be launched only once

Launching the __install__ mode let you chose what kind of profile you want to apply to your macOS. Each profile has different apps and configurations, but everyone shares a `core.sh` script which install common apps and dependencies. Included in this release there are the following profiles, more to come in next releases:

* 👩‍🎨 __artist__ [[#59](https://github.com/MarioCatuogno/Clean-macOS/issues/59)]
* 👶 __basic__ [[#50](https://github.com/MarioCatuogno/Clean-macOS/issues/50)]
* 👨‍💻 __developer__ [[#55](https://github.com/MarioCatuogno/Clean-macOS/issues/55)]
* 🧟 __personal__ [[#56](https://github.com/MarioCatuogno/Clean-macOS/issues/56)]

<p align="center">
  <a href="https://github.com/MarioCatuogno/Clean-macOS">
  <img width=600px src="https://raw.githubusercontent.com/MarioCatuogno/Clean-macOS/master/img/scrn_script_diagram.png" alt="Clean-macOS logo"><br></a>
  <i>Diagram : Clean-macOS scripts in 1.8.0-RELEASE</i>
</p>

The list of applications included in each profile is reported [__here__](https://github.com/MarioCatuogno/Clean-macOS/blob/master/doc/PROFILES.md).

Also this release is fully compatible with __macOS 10.15 "Catalina"__.

__CHANGED__

* 🔥 (🧟 __personal__) move `BattleNet` homebrew formula [[#56](https://github.com/MarioCatuogno/Clean-macOS/issues/56)]
* 🔥 (🧟 __personal__) move `DaisyDisk` homebrew formula [[#56](https://github.com/MarioCatuogno/Clean-macOS/issues/56)]
* 🔥 (🧟 __personal__) move `ExpressVPN` homebrew formula [[#56](https://github.com/MarioCatuogno/Clean-macOS/issues/56)]
* 🔥 (🧟 __personal__) move `Helium` homebrew formula [[#56](https://github.com/MarioCatuogno/Clean-macOS/issues/56)]
* 🔥 (🧟 __personal__) move `Magnet` homebrew formula [[#56](https://github.com/MarioCatuogno/Clean-macOS/issues/56)]
* 🔥 (🧟 __personal__) move `Pixelmator` homebrew formula [[#56](https://github.com/MarioCatuogno/Clean-macOS/issues/56)]
* 🔥 (🧟 __personal__)(👨‍💻 __developer__) move `PopClip` homebrew formula [[#56](https://github.com/MarioCatuogno/Clean-macOS/issues/56)]
* 🔥 (🧟 __personal__) move `SteerMouse` homebrew formula [[#56](https://github.com/MarioCatuogno/Clean-macOS/issues/56)]
* 🔥 (🧟 __personal__) move `Wipr` homebrew formula [[#56](https://github.com/MarioCatuogno/Clean-macOS/issues/56)]
* 🔥 (🧟 __personal__)(👨‍💻 __developer__)  move `Docker` homebrew formula [[#55](https://github.com/MarioCatuogno/Clean-macOS/issues/55)] [[#56](https://github.com/MarioCatuogno/Clean-macOS/issues/56)]
* 🔥 update .gitignore file [[#48](https://github.com/MarioCatuogno/Clean-macOS/issues/48)]
* 🔥 update installation process for `Zsh` [[#48](https://github.com/MarioCatuogno/Clean-macOS/issues/48)]

__DOCS__

* 📝 update APPS_REMOVED file
* 📝 update CHANGELOG file
* 📝 update README file [[#51](https://github.com/MarioCatuogno/Clean-macOS/issues/51)]
  
__FIXED__

* 🐛 change `brew cask install --appdir="/Applications" the-unarchiver` homebrew formula to `mas install 425424353`
* 🐛 change `google-drive-file-stream` homebrew formula to `google-backup-and-sync` [[#47](https://github.com/MarioCatuogno/Clean-macOS/issues/47)]
* 🐛 correct various typo

__NEW__

* 📦 (👨‍💻 __developer__) add `DBeaver` homebrew formula [[#57](https://github.com/MarioCatuogno/Clean-macOS/issues/57)]
* 📦 (👨‍💻 __developer__) add `Firefox` homebrew formula [[#55](https://github.com/MarioCatuogno/Clean-macOS/issues/57)]
* 📦 (👶 __basic__) add `Telegram` homebrew formula [[#50](https://github.com/MarioCatuogno/Clean-macOS/issues/50)]
* 📦 (👶 __basic__) add `Whatsapp` homebrew formula [[#50](https://github.com/MarioCatuogno/Clean-macOS/issues/50)]
* 📦 add BASIC script [[#50](https://github.com/MarioCatuogno/Clean-macOS/issues/50)]
* 📦 add DEVELOPER script [[#55](https://github.com/MarioCatuogno/Clean-macOS/issues/55)]
* 📦 add PERSONAL script [[#38](https://github.com/MarioCatuogno/Clean-macOS/issues/38)]
* 📦 add `Bitwarden` homebrew formula [[#64](https://github.com/MarioCatuogno/Clean-macOS/issues/64)]
* 📦 add `coreutils` homebrew formula [[#36](https://github.com/MarioCatuogno/Clean-macOS/issues/55)]
* 📦 add `dockutil` homebrew formula [[#36](https://github.com/MarioCatuogno/Clean-macOS/issues/55)]
* 📦 add `fantasque-sans-mono` font [[#54](https://github.com/MarioCatuogno/Clean-macOS/issues/54)]
* 📦 add `heavydata-nerd-font` font [[#54](https://github.com/MarioCatuogno/Clean-macOS/issues/54)]
* 📦 add `ubuntumono-nerd-font` font [[#54](https://github.com/MarioCatuogno/Clean-macOS/issues/54)]
* 📦 add various graphic resources [[#58](https://github.com/MarioCatuogno/Clean-macOS/issues/58)]

__REMOVED__

* 🗑️ remove `Discord` homebrew formula
* 🗑️ remove `Sip` homebrew formula [[#47](https://github.com/MarioCatuogno/Clean-macOS/issues/47)]
* 🗑️ remove `brew install zsh-autosuggestions` unnecessary command [[#48](https://github.com/MarioCatuogno/Clean-macOS/issues/48)]
* 🗑️ remove `brew install zsh-completions` unnecessary command [[#48](https://github.com/MarioCatuogno/Clean-macOS/issues/48)]
* 🗑️ remove `brew install zsh-syntax-highlighting` unnecessary command [[#48](https://github.com/MarioCatuogno/Clean-macOS/issues/48)]
* 🗑️ remove `gotop` command [[#47](https://github.com/MarioCatuogno/Clean-macOS/issues/47)]
* 🗑️ remove `webtorrent-cli` homebrew formula

## __1.7.0__ ([2019-08-28](https://github.com/MarioCatuogno/Clean-macOS/milestone/2))

First release with external contributors; it's now time to use a CONTRIBUTING file for next releases. I'm also using a new way to keep track of changes (for more details check [[#42](https://github.com/MarioCatuogno/Clean-macOS/issues/42)]).

__CHANGED__

* 🔥 update APPS_REMOVED file
* 🔥 update CHANGELOG file [[#42](https://github.com/MarioCatuogno/Clean-macOS/issues/42)]
* 🔥 update README file [[#28](https://github.com/MarioCatuogno/Clean-macOS/issues/28)] [[#32](https://github.com/MarioCatuogno/Clean-macOS/issues/32)] [[#42](https://github.com/MarioCatuogno/Clean-macOS/issues/42)]
* 🔥 update `Visual Studio Code` preferences file [[#29](https://github.com/MarioCatuogno/Clean-macOS/issues/29)]

__FIXED__

* 🐛 correct typo [[#31](https://github.com/MarioCatuogno/Clean-macOS/pull/31)]
* 🐛 correct typo [[#33](https://github.com/MarioCatuogno/Clean-macOS/pull/33)]

__NEW__

* 📦 add `Ecosia` homebrew formula
* 📦 add `Keynote` homebrew formula [[#39](https://github.com/MarioCatuogno/Clean-macOS/issues/39)]
* 📦 add `Numbers` homebrew formula [[#39](https://github.com/MarioCatuogno/Clean-macOS/issues/39)]
* 📦 add `brew tap homebrew/cask-fonts` command
* 📦 add `com.apple.dock static-only` command set to TRUE [[#35](https://github.com/MarioCatuogno/Clean-macOS/issues/35)]
* 📦 add `imagemagick` homebrew formula
* 📦 add `jupyter` Python package
* 📦 add `quicklook-csv` homebrew formula
* 📦 add `youtube-dl` homebrew formula
* 📦 add a new official logo (thanks to [__@JustInDraft__](https://www.instagram.com/justindraft_adv/))

__REMOVED__

* 🗑️ remove `Easyres` homebrew formula [[#40](https://github.com/MarioCatuogno/Clean-macOS/issues/40)]
* 🗑️ remove `Github-Desktop` homebrew formula [[#30](https://github.com/MarioCatuogno/Clean-macOS/issues/30)]
* 🗑️ remove `brew tap cjbassi/gotop` command
* 🗑️ remove deprecated `brew install cask` command [[#32](https://github.com/MarioCatuogno/Clean-macOS/issues/32)]
* 🗑️ remove deprecated `brew tap caskroom/cask` command [[#32](https://github.com/MarioCatuogno/Clean-macOS/issues/32)]
* 🗑️ remove unnecessary `brew tap buo/cask-upgrade` command [[#32](https://github.com/MarioCatuogno/Clean-macOS/issues/32)]
* 🗑️ remove unnecessary `homebrew/cask-fonts/` command [[#32](https://github.com/MarioCatuogno/Clean-macOS/issues/32)]

__SECURITY__

* 🔑 update `.zshrc` file [[#29](https://github.com/MarioCatuogno/Clean-macOS/issues/29)]

## __1.6.4__ ([2019-08-05](https://github.com/MarioCatuogno/Clean-macOS/milestone/3))

* 🐛 fix broken link in CHANGELOG file [[#26](https://github.com/MarioCatuogno/Clean-macOS/issues/26)]

## __1.6.3__ ([2019-08-05](https://github.com/MarioCatuogno/Clean-macOS/milestone/1))

With this release I've started to be more organized, keeping track of issues and changelog. I've also created a Kanban board to manage my backlog for this project.

__CHANGED__

* 🔥 remove MACOS_COMMAND file [[#22](https://github.com/MarioCatuogno/Clean-macOS/issues/22)]
* 🔥 remove `Cakebrew` homebrew formula [[#20](https://github.com/MarioCatuogno/Clean-macOS/issues/20)]
* 🔥 remove `Kitematic` homebrew formula [[#20](https://github.com/MarioCatuogno/Clean-macOS/issues/20)]
* 🔥 remove `Lepton` homebrew formula [[#20](https://github.com/MarioCatuogno/Clean-macOS/issues/20)]
* 🔥 remove `Microsoft Remote Desktop` homebrew formula [[#20](https://github.com/MarioCatuogno/Clean-macOS/issues/20)]
* 🔥 remove `Mtmr` homebrew formula [[#20](https://github.com/MarioCatuogno/Clean-macOS/issues/20)]
* 🔥 remove `SonicWall Mobile Connect` homebrew formula [[#20](https://github.com/MarioCatuogno/Clean-macOS/issues/20)]
* 🔥 update .gitignore file [[#22](https://github.com/MarioCatuogno/Clean-macOS/issues/22)]
* 🔥 update `.zshrc` file [[#22](https://github.com/MarioCatuogno/Clean-macOS/issues/22)]
* 🔥 update APPS_LIST file [[#22](https://github.com/MarioCatuogno/Clean-macOS/issues/22)]
* 🔥 update README file [[#21](https://github.com/MarioCatuogno/Clean-macOS/issues/21)]

__NEW__

* 📦 add CHANGELOG file [[#19](https://github.com/MarioCatuogno/Clean-macOS/issues/19)]
* 📦 add `DisableAllAnimations` command set to TRUE [[#23](https://github.com/MarioCatuogno/Clean-macOS/issues/23)]
* 📦 add `NSAutomaticWindowAnimationsEnabled` command set to FALSE [[#23](https://github.com/MarioCatuogno/Clean-macOS/issues/23)]
* 📦 add `Pages` homebrew formula
* 📦 add `WebTorrent` homebrew formula
* 📦 add `speedtest-cli` Python package
* 📦 add `tldr` homebrew formula
* 📦 add icon files
* 📦 add new wallpapers

## __1.6.2__ (2019-07-09)

__CHANGED__

* 🔥 switch VPN service from `Tunnelbear` to `ExpressVPN`
* 🔥 update `.zshrc` file
* 🔥 update README file

__NEW__

* 📦 add `Easyres` homebrew formula
* 📦 add `Helium` homebrew formula
* 📦 add `Mtmr` homebrew formula

## __1.6.1__ (2019-03-18)

__CHANGED__

* 🔥 update APPS_LIST file

__NEW__

* 📦 add icon files

## __1.6.0__ (2019-02-13)

* 🔥 major overhaul

## __1.5.0__ (2018-09-28)

__CHANGED__

* 🔥 update `.zshrc` file
* 🔥 update README file
* 🔥 update setup files

__NEW__

* 📦 add `Amphetamine` homebrew formula
* 📦 add `Magnet` homebrew formula
* 📦 add `Spark` homebrew formula
* 📦 add `Wipr` homebrew formula

## __1.4.4__ (2018-09-24)

* 🔥 update setup files

## __1.4.3__ (2018-09-24)

* 🔥 add `Microsoft Remote Desktop` homebrew formula

## __1.4.2__ (2018-09-24)

* 🔥 renamed setup files
* 🔥 update APPS_LIST file
* 🔥 update `Visual Studio Code` preferences file
* 🔥 update README file

## __1.4.1__ (2018-09-24)

Minor release with bug fixes, ready for macOS Mojave.

__CHANGED__

* 🔥 update homebrew upgrade command

__NEW__

* 📦 add `neofetch` homebrew formula

## __1.4.0__ (2018-09-23)

After further testing I decided to remove Sublime Text as main editor and switch to Visual Studio Code which is open source with a huge community and monthly updates.

__CHANGED__

* 🔥 remove outdated file
* 🔥 update .gitignore and .gitconfig files
* 🔥 update `.zshrc` file
* 🔥 update README file
* 🔥 update `Visual Studio Code` preferences file
* 🔥 update homebrew upgrade command
* 🔥 switch main editor from Sublime Text to Visual Studio Code

__NEW__

* 📦 add ayu-dark color scheme for iTerm
* 📦 add ayu-light color scheme for iTerm
* 📦 add ayu-mirage color scheme for iTerm
* 📦 add tomorrow-night color scheme for iTerm
* 📦 add `Alfred` workflow
* 📦 add `Popclip` homebrew formula
* 📦 add `Popclip` extension list

## __1.3.0__ (2018-09-19)

__CHANGED__

* 🔥 remove 1Password app from setup script
* 🔥 update .gitignore file
* 🔥 update README file
* 🔥 update `Visual Studio Code` packages list
* 🔥 update `Visual Studio Code` preferences file

__FIXED__

* 🐛 correct various typos

__NEW__

* 📦 add font-fira-code font
* 📦 add font-hack font
* 📦 add `htop` homebrew formula
* 📦 add `Alfred` configuration file
* 📦 add `Brew` plugin into `.zshrc` configuration file
* 📦 add MIT license file

## __1.2.0__ (2018-09-18)

__CHANGED__

* 🔥 remove `Kap` homebrew formula
* 🔥 update `.zshrc` file
* 🔥 update APPS_LIST file
* 🔥 update README file

__NEW__

* 📦 add `Sublime Text` configuration file
* 📦 add setup files

## __1.1.0__ (2018-09-17)

__CHANGED__

* 🔥 update README file
* 🔥 update project scaffolding

__NEW__

* 📦 add .gitignore and .gitconfig files
* 📦 add `Imageoptim` homebrew formula
* 📦 add `Visual Studio Code` homebrew formula

## __1.0.0__ (2018-09-17)

* 📦 first commit
