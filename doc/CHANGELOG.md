# Version history

All notable changes to this project will be documented in this file. The types of changes tracked are the following ones:

* 🔥 __CHANGED__: for changes in existing functionality
* 📝 __DOCS__: for documentation and guides
* 🐛 __FIXED__: for any bug fixes
* 📦 __NEW__: for new features
* 🗑️ __REMOVED__: for removed features
* 🔑 __SECURITY__: in case of vulnerabilities

---

## __1.14.0__ ([2025-02-XX](https://github.com/MarioCatuogno/Clean-macOS/milestone/10))

This is a major release.

__DOCS__

* 📝 update APPLIST file
* 📝 update CHANGELOG file
* 📝 update README file

__CHANGED__

* 🔥 update `.gitignore` file
* 🔥 update `.zshrc` file
* 🔥 update `config.sh` script to disable Siri data collection
* 🔥 update `config.sh` script to enable macOS Firewall
* 🔥 update `config.sh` script to include Privacy settings for Tracking and Ads
* 🔥 update VSCode Json settings file

__FIXED__

* 🐛 fix command to disable automatic spell correction

__NEW__

* 📦 add `discord` Homebrew formula
* 📦 add `handbrake` Homebrew formula
* 📦 add `mailsy` Homebrew formula
* 📦 add `popclip` Homebrew formula
* 📦 add `proton-pass` Homebrew formula
* 📦 add `routine.sh` script to do periodic maintenance of macOS to clean up logs, cache, and memory [[#140](https://github.com/MarioCatuogno/Clean-macOS/issues/140)]
* 📦 add `steermouse` Homebrew formula
* 📦 add `tableplus` Homebrew formula

__REMOVED__

* 🗑️ remove `bitwarden-cli` Homebrew formula
* 🗑️ remove `imageoptim` Homebrew formula
* 🗑️ remove `jordanbaird-ice` Homebrew formula
* 🗑️ remove `little-snitch` Homebrew formula
* 🗑️ remove `mas` Homebrew formula
* 🗑️ remove `powerphotos` Homebrew formula
* 🗑️ remove `tldr` Homebrew formula

## __1.13.13__ ([2024-08-02](https://github.com/MarioCatuogno/Clean-macOS/milestone/9))

This minor release update the Brewfile.

__DOCS__

* 📝 update CHANGELOG file

__NEW__

* 📦 add `A-better-finder-rename` Homebrew formula
* 📦 add `Calibre` Homebrew formula
* 📦 add `Stats` Homebrew formula

__REMOVED__

* 🗑️ remove `fliqlo` Homebrew formula
* 🗑️ remove `iStat Menu` Homebrew formula
* 🗑️ remove `Latest` Homebrew formula
* 🗑️ remove `Lyn` Homebrew formula

## __1.13.12__ ([2024-07-14](https://github.com/MarioCatuogno/Clean-macOS/milestone/9))

This minor release update the Brewfile and the removal of `mas` command to install apps from App Store.

__DOCS__

* 📝 update CHANGELOG file

__CHANGED__

* 🔥 update VSCode Json settings file

__FIXED__

* 🐛 remove the deprecated `homebrew/cask-fonts` tap

__NEW__

* 📦 add `Alfred` Homebrew formula
* 📦 add `jordanbaird-ice` Homebrew formula
* 📦 add `Keka` Homebrew formula
* 📦 add `Little Snitch` Homebrew formula
* 📦 add `Mullvad-Browser` Homebrew formula
* 📦 add `rsync` Homebrew formula

__REMOVED__

* 🗑️ remove `Bartender` Homebrew formula
* 🗑️ remove `DuckDuckGo` Homebrew formula
* 🗑️ remove `KeyClu` Homebrew formula
* 🗑️ remove `Raycast` Homebrew formula

## __1.13.11__ ([2023-12-05](https://github.com/MarioCatuogno/Clean-macOS/milestone/9))

This minor release update the Brewfile and the removal of `mas` command to install apps from App Store.

__DOCS__

* 📝 update CHANGELOG file

__CHANGED__

* 🔥 switch from `VisualStudioCode` to `VsCodium` brew formula

__FIXED__

* 🐛 remove `mas` references because, due to Apple restricting APIs, it seems to no longer work properly [link](https://github.com/mas-cli/mas/issues/486)

__NEW__

* 📦 add `AppCleaner` Homebrew formula
* 📦 add `Dato` MAS formula
* 📦 add `Latest` Homebrew formula
* 📦 add `NetNewsWire` Homebrew formula
* 📦 add `KeyClu` Homebrew formula
* 📦 add `Wipr` MAS formula

__REMOVED__

* 🗑️ remove `AdGuard` Homebrew formula
* 🗑️ remove `DiffusionBee` Homebrew formula
* 🗑️ remove `Hush` MAS formula
* 🗑️ remove `Raivo OTP` MAS formula
* 🗑️ remove `Reeder` MAS formula
* 🗑️ remove `Signal` Homebrew formula
* 🗑️ remove `Transmit` Homebrew formula
* 🗑️ remove `Transnomino` Homebrew formula

## __1.13.10__ ([2023-10-03](https://github.com/MarioCatuogno/Clean-macOS/milestone/9))

This minor release update the Brewfile.

__DOCS__

* 📝 update CHANGELOG file

__NEW__

* 📦 add `DaisyDisk` MAS formula
* 📦 add `Diffusionbee` Homebrew formula
* 📦 add `PhotoMill` MAS formula
* 📦 add `PhotoSweeper` MAS formula
* 📦 add `Powerphotos` Homebrew formula
* 📦 add `Transnomino` Homebrew formula

__REMOVED__

* 🗑️ remove `Arc` Homebrew formula


## __1.13.9__ ([2023-08-30](https://github.com/MarioCatuogno/Clean-macOS/milestone/9))

This minor release update the Brewfile.

__DOCS__

* 📝 update CHANGELOG file

__NEW__

* 📦 add `Vinegear - Tube Cleaner` Safari extension via MAS

__FIXED__

* 🐛 untap `cask-drivers` which is deprecated

__REMOVED__

* 🗑️ remove `TopNotch` Homebrew formula

## __1.13.8__ ([2023-04-13](https://github.com/MarioCatuogno/Clean-macOS/milestone/9))

This minor release update the Brewfile.

__DOCS__

* 📝 update CHANGELOG file

__FIXED__

* 🐛 fix missing formula for `font-comic-neue`

__NEW__

* 📦 add `DuckDuckGo` Homebrew formula

## __1.13.7__ ([2023-04-12](https://github.com/MarioCatuogno/Clean-macOS/milestone/9))

This minor release update the Brewfile.

__DOCS__

* 📝 update CHANGELOG file

__NEW__

* 📦 add `font-atkinson-hyperlegible` Homebrew formula

__REMOVED__

* 🗑️ remove `Obsidian` Homebrew formula
* 🗑️ remove `Quiet` Safari extension
* 🗑️ remove `Swiftcord` Homebrew formula

## __1.13.6__ ([2023-04-07](https://github.com/MarioCatuogno/Clean-macOS/milestone/9))

This minor release update the Brewfile.

__DOCS__

* 📝 update CHANGELOG file

__NEW__

* 📦 add `Obsidian` Homebrew formula [#132](https://github.com/MarioCatuogno/Clean-macOS/issues/132)
* 📦 add `Pages` MAS formula
* 📦 add `Reeder` MAS formula

__REMOVED__

* 🗑️ remove `Magnet` MAS formula

## __1.13.5__ ([2023-03-31](https://github.com/MarioCatuogno/Clean-macOS/milestone/9))

This minor release disable telemtry for VSCode and update the Brewfile.

__DOCS__

* 📝 update CHANGELOG file

__NEW__

* 📦 add `Arc` Homebrew formula [[#114]](https://github.com/MarioCatuogno/Clean-macOS/issues/114)
* 📦 add `bitwarden-cli` Homebrew formula
* 📦 add `Hush` MAS formula
* 📦 add `Raycast` Homebrew formula [[#130]](https://github.com/MarioCatuogno/Clean-macOS/issues/130)
* 📦 add `Swiftcord` Homebrew formula

__REMOVED__

* 🗑️ remove `Alfred` Homebrew formula [[#130]](https://github.com/MarioCatuogno/Clean-macOS/issues/130)
* 🗑️ remove `Discord` Homebrew formula
* 🗑️ remove `Pages` MAS formula

__SECURITY__

* 🔑 set `telemetryLevel` to `off` in VSCode Json settings file

## __1.13.4__ ([2023-03-18](https://github.com/MarioCatuogno/Clean-macOS/milestone/9))

This minor release includes improved documentation, an updated Brewfile and a new wallpaper.

__DOCS__

* 📝 update CHANGELOG file

__CHANGED__

* 🔥 disable Homebrew analytics in `install.sh` script [[#113]](https://github.com/MarioCatuogno/Clean-macOS/issues/113)
* 🔥 update `scrn_cleanmacos_terminal.png` image file
* 🔥 update `scrn_mydesktop.png` image file
* 🔥 update `scrn_myiterm.png` image file
* 🔥 update `scrn_myvscode.png` image file

__FIXED__

* 🐛 fix typo in CHANGELOG file

__NEW__

* 📦 add `Bartender` Homebrew formula [[#114]](https://github.com/MarioCatuogno/Clean-macOS/issues/114)
* 📦 add `Fliqlo` Homebrew formula [[#114]](https://github.com/MarioCatuogno/Clean-macOS/issues/114)
* 📦 add `Quiet` Safari extension
* 📦 add `Shottr` Homebrew formula [[#114]](https://github.com/MarioCatuogno/Clean-macOS/issues/114)
* 📦 add `System Color Picker` MAS formula [[#114]](https://github.com/MarioCatuogno/Clean-macOS/issues/114)
* 📦 upload new wallpaper `wall_nord_iceberg.png`

__REMOVED__

* 🗑️ remove `Tor Browser` Homebrew formula

## __1.13.3__ ([2023-03-08](https://github.com/MarioCatuogno/Clean-macOS/milestone/9))

This minor release fix a variable and change email address to an alias.

__DOCS__

* 📝 update CHANGELOG file

__CHANGED__

* 🔥 change the email address in `.gitconfig` file

__FIXED__

* 🐛 fix variable in `config.sh` script

## __1.13.2__ ([2023-03-07](https://github.com/MarioCatuogno/Clean-macOS/milestone/9))

This minor release includes improved documentation and an updated Brewfile, which contains a list of applications that can be installed on macOS using the Homebrew package manager.

__DOCS__

* 📝 update APPLIST file
* 📝 update CHANGELOG file
* 📝 update README file

__CHANGED__

* 🔥 change the project logo (click [here](https://raw.githubusercontent.com/MarioCatuogno/Clean-macOS/master/img/logo_clean_macos.png) for the new high-resolution icon)
* 🔥 update the script version in `Clean-macOS.sh` file

__FIXED__

* 🐛 fix typo in APPLIST file

__NEW__

* 📦 upload new icons

__REMOVED__

* 🗑️ remove `Amphetamine` MAS formula
* 🗑️ remove `fujifilm-x-raw-studio` Homebrew formula

## __1.13.1__ ([2023-03-06](https://github.com/MarioCatuogno/Clean-macOS/milestone/9))

This minor release includes improved documentation and an updated Brewfile, which contains a list of applications that can be installed on macOS using the Homebrew package manager.

__DOCS__

* 📝 update CHANGELOG file
* 📝 update CONTRIBUTING file
* 📝 update README file
* 📝 update SETUP file

__CHANGED__

* 🔥 use absolute path instead of relative paths for variables in README file

__FIXED__

* 🐛 fix typo in `update.sh` script

__NEW__

* 📦 add `MullvadVPN` Homebrew formula

__REMOVED__

* 🗑️ remove `AppCleaner` Homebrew formula

## __1.13.0__ ([2023-02-28](https://github.com/MarioCatuogno/Clean-macOS/milestone/9))

Major release.

__DOCS__

* 📝 update CHANGELOG file

__CHANGED__

* 🔥 add a check to see if Homebrew is already installed before running the `update.sh` script
* 🔥 add error handling for the commands in the case statements to handle cases where the command fails or returns an error in shell scripts
* 🔥 use a more descriptive name for the script file in shell scripts
* 🔥 use absolute path instead of relative paths for variables in shell scripts
* 🔥 use double quotes around variable references to prevent word splitting and globbing in `install.sh` script
* 🔥 use functions to encapsulate the functionality of each case statement, instead of using the pipeline to pass data in shell scripts
* 🔥 use shellcheck to check for any potential issues in the script in shell scripts
* 🔥 use the `brew update-reset` command instead of `brew update` to ensure that the Homebrew installation is fully up-to-date
* 🔥 use the `mas outdated` command instead of `mas upgrade` to list outdated applications and then use mas upgrade <app-id> to upgrade individual applications

__REMOVED__

* 🗑️ remove unnecessary variables such as `SETUP` and `SUDO_USER` in `config.sh` script

## __1.12.22__ ([2022-12-14](https://github.com/MarioCatuogno/Clean-macOS/milestone/8))

Minor release with some changes in Brewfile.

__DOCS__

* 📝 update CHANGELOG file

__NEW__

* 📦 add `Tor-Browser` Homebrew formula

__REMOVED__

* 🗑️ remove `Affinity Designer` MAS formula
* 🗑️ remove `Spark` MAS formula

## __1.12.21__ ([2022-10-25](https://github.com/MarioCatuogno/Clean-macOS/milestone/8))

Minor release with some changes in Brewfile.

__CHANGED__

* 🔥 update `Clean-macOS.sh` script

__DOCS__

* 📝 update CHANGELOG file

__NEW__

* 📦 add `Alfred` Homebrew formula
* 📦 add `Discord` Homebrew formula
* 📦 add `TopNotch` Homebrew formula

__REMOVED__

* 🗑️ remove `bitwarden-cli` Homebrew formula
* 🗑️ remove `Librewolf` Homebrew formula
* 🗑️ remove `Spark` Homebrew formula

## __1.12.20__ ([2022-06-24](https://github.com/MarioCatuogno/Clean-macOS/milestone/8))

Minor release with some changes in Brewfile.

__DOCS__

* 📝 update CHANGELOG file

__NEW__

* 📦 add `Alfred` Homebrew formula
* 📦 add `bitwarden-cli` Homebrew formula
* 📦 add `brew tap Homebrew/cask-drivers` command
* 📦 add `fujifilm-x-raw-studio` Homebrew formula
* 📦 add `istat-menus` Homebrew formula
* 📦 add `Lyn` Homebrew formula
* 📦 add `Spark` Homebrew formula

## __1.12.19__ ([2022-06-17](https://github.com/MarioCatuogno/Clean-macOS/milestone/8))

Update docs.

__DOCS__

* 📝 update CHANGELOG file

## __1.12.18__ ([2022-06-17](https://github.com/MarioCatuogno/Clean-macOS/milestone/8))

Fix some brew commands.

__CHANGED__

* 🔥 update `config.sh` script
* 🔥 update `install.sh` script

__DOCS__

* 📝 update CHANGELOG file

## __1.12.17__ ([2022-06-17](https://github.com/MarioCatuogno/Clean-macOS/milestone/8))

Minor release with some changes in Brewfile, config files and shell scripts.

__CHANGED__

* 🔥 update `config.sh` script
* 🔥 update `install.sh` script
* 🔥 update `update.sh` script
* 🔥 update `.zshrc` file

__DOCS__

* 📝 update CHANGELOG file
* 📝 update README file

__NEW__

* 📦 add `ChronoSync Express` Homebrew formula
* 📦 add `coreutils` Homebrew formula
* 📦 add `findutils` Homebrew formula
* 📦 add `moreutils` Homebrew formula

__REMOVED__

* 🗑️ remove `Audio Hijack` Homebrew formula
* 🗑️ remove `Alfred` Homebrew formula
* 🗑️ remove `Cryptomator` Homebrew formula
* 🗑️ remove `Cheatsheet` Homebrew formula
* 🗑️ remove `Docker` Homebrew formula
* 🗑️ remove `DuckDuckGo` Homebrew formula
* 🗑️ remove `Hugo` Homebrew formula
* 🗑️ remove `Save to Pocket` Homebrew formula
* 🗑️ remove `Spark` Homebrew formula
* 🗑️ remove `VSCode` plugins
* 🗑️ remove `Tor-Browser` Homebrew formula

## __1.12.16__ ([2022-01-30](https://github.com/MarioCatuogno/Clean-macOS/milestone/8))

Minor release with some changes in Brewfile.

__DOCS__

* 📝 update CHANGELOG file

__NEW__

* 📦 add `Audio Hijack` Homebrew formula
* 📦 add `Librewolf` Homebrew formula

## __1.12.15__ ([2021-12-02](https://github.com/MarioCatuogno/Clean-macOS/milestone/8))

Minor release with some changes in Brewfile.

__DOCS__

* 📝 update CHANGELOG file

__NEW__

* 📦 add `Hazel` Homebrew formula

__REMOVED__

* 🗑️ remove `Google Drive` Homebrew formula

## __1.12.14__ ([2021-12-01](https://github.com/MarioCatuogno/Clean-macOS/milestone/8))

Minor release with some changes in Brewfile.

__DOCS__

* 📝 update CHANGELOG file

__NEW__

* 📦 add `Docker` Homebrew formula
* 📦 add `Numbers` MAS formula
* 📦 add `Pixelmator Pro` MAS formula
* 📦 add `Raivo OTP` MAS formula

__REMOVED__

* 🗑️ remove `istat-menus` Homebrew formula
* 🗑️ remove `Standard Notes` Homebrew formula

## __1.12.13__ ([2021-10-25](https://github.com/MarioCatuogno/Clean-macOS/milestone/8))

Minor release with some changes in Brewfile.

__DOCS__

* 📝 update CHANGELOG file

__REMOVED__

* 🗑️ remove `Authy` Homebrew formula

## __1.12.12__ ([2021-10-24](https://github.com/MarioCatuogno/Clean-macOS/milestone/8))

Minor release with some changes in Brewfile.

__DOCS__

* 📝 update CHANGELOG file
* 📝 update SETUP file

__NEW__

* 📦 add `Bitwarden` MAS formula
* 📦 add `Google Drive` Homebrew formula
* 📦 add `iMovie` MAS formula
* 📦 add `Pages` MAS formula
* 📦 add `Save to Pocket` Homebrew formula
* 📦 add `Steam` Homebrew formula

__REMOVED__

* 🗑️ remove `ApolloOne` Homebrew formula
* 🗑️ remove `Brave` Homebrew formula
* 🗑️ remove `Kap` Homebrew formula
* 🗑️ remove `MullvadVPN` Homebrew formula
* 🗑️ remove `Spotify` Homebrew formula

## __1.12.11__ ([2021-04-18](https://github.com/MarioCatuogno/Clean-macOS/milestone/8))

Minor release focused on privacy.

__DOCS__

* 📝 update CHANGELOG file

__NEW__

* 📦 add `Duck Duck Go` Homebrew formula
* 📦 add `Kap` Homebrew formula
* 📦 add `Micro Snitch` Homebrew formula
* 📦 add `Tor-Browser` Homebrew formula

__REMOVED__

* 🗑️ remove `Save to Pocket` Homebrew formula
* 🗑️ remove `Whatsapp` Homebrew formula

## __1.12.10__ ([2021-04-11](https://github.com/MarioCatuogno/Clean-macOS/milestone/8))

Minor release focused on privacy.

__CHANGED__

* 🔥 update `config.sh` script

__DOCS__

* 📝 update CHANGELOG file

__NEW__

* 📦 add `Brave` Homebrew formula
* 📦 add `Hugo` Homebrew formula
* 📦 add `MullvadVPN` Homebrew formula
* 📦 add `Signal` Homebrew formula
* 📦 add `Standard Notes` Homebrew formula

__REMOVED__

* 🗑️ remove `Discord` Homebrew formula
* 🗑️ remove `Firefox` Homebrew formula

## __1.12.9__ ([2021-04-06](https://github.com/MarioCatuogno/Clean-macOS/milestone/8))

Minor release with some changes in Brewfile and docs updates.

__DOCS__

* 📝 update CHANGELOG file

__NEW__

* 📦 add `Cryptomator` Homebrew formula
* 📦 add `Firefox` Homebrew formula

__REMOVED__

* 🗑️ remove `Google Chrome` Homebrew formula
* 🗑️ remove `r` Homebrew formula
* 🗑️ remove `R-Studio` Homebrew formula

## __1.12.8__ ([2021-03-29](https://github.com/MarioCatuogno/Clean-macOS/milestone/8))

Minor release with some changes in Brewfile and docs updates.

__DOCS__

* 📝 update CHANGELOG file
* 📝 update README file ([@vladdoster](https://github.com/MarioCatuogno/Clean-macOS/pull/91))

__REMOVED__

* 🗑️ remove `Bitwarden` Homebrew formula

## __1.12.7__ ([2020-12-31](https://github.com/MarioCatuogno/Clean-macOS/milestone/8))

Minor release with some changes in Brewfile and docs updates.

__CHANGED__

* 🔥 add `Affinity Designer` and `Bitwarden` to APPLIST
* 🔥 update `Clean-macOS.sh` script

__DOCS__

* 📝 update APPLIST file
* 📝 update CHANGELOG file
* 📝 update SETUP file

__NEW__

* 📦 add `Affinity Designer` MAS formula
* 📦 add `Google Chrome` Homebrew formula
* 📦 add `r` Homebrew formula
* 📦 add `R-Studio` Homebrew formula

## __1.12.6__ ([2020-11-30](https://github.com/MarioCatuogno/Clean-macOS/milestone/8))

Minor release with some changed apps and fix of Python3 installed via Homebrew (see [#17784](https://github.com/numpy/numpy/issues/17784), [#9170](https://github.com/pypa/pip/pull/9170)).

__CHANGED__

* 🔥 update `Clean-macOS.sh` script
* 🔥 update `config.sh` script

__DOCS__

* 📝 update CHANGELOG file

__FIXED__

* 🐛 add Python unused aliases in `.zshrc` file (removed in [1.12.5](https://github.com/MarioCatuogno/Clean-macOS/releases/tag/1.12.5))
* 🐛 remove command to unistall Python3 Homebrew formula (added in [1.12.4](https://github.com/MarioCatuogno/Clean-macOS/releases/tag/1.12.4))

__NEW__

* 📦 add `Python3` Homebrew formula
* 📦 add `Whatsapp` Homebrew formula

__REMOVED__

* 🗑️ remove `Cyberduck` Homebrew formula

## __1.12.5__ ([2020-11-25](https://github.com/MarioCatuogno/Clean-macOS/milestone/8))

Minor release with bug fixes and some changed apps. Python3 installed from Homebrew still causes problems with macOS Big Sur (see [#17784](https://github.com/numpy/numpy/issues/17784), [#319](https://github.com/pypa/packaging/pull/319) and [#9138](https://github.com/pypa/pip/issues/9138)).

__CHANGED__

* 🔥 update `Clean-macOS.sh` script
* 🔥 update `Visual Studio Code` preferences file

__DOCS__

* 📝 update CHANGELOG file

__FIXED__

* 🐛 fix `export $PATH` variables
* 🐛 remove Python unused aliases in `.zshrc` file
* 🐛 remove `speedtest` broken alias in `.zshrc` file

__NEW__

* 📦 add `Cyberduck` Homebrew formula
* 📦 add `istat-menus` Homebrew formula
* 📦 add `ms-python.python` VSCode extension

__REMOVED__

* 🗑️ remove `ack` Homebrew formula
* 🗑️ remove `bash` Homebrew formula
* 🗑️ remove `coreutils` Homebrew formula
* 🗑️ remove `gzip` Homebrew formula
* 🗑️ remove `imagemagick` Homebrew formula
* 🗑️ remove `nano` Homebrew formula
* 🗑️ remove `neofetch` Homebrew formula
* 🗑️ remove `youtube-dl` Homebrew formula
* 🗑️ remove `wifi-password` Homebrew formula

## __1.12.4__ ([2020-11-22](https://github.com/MarioCatuogno/Clean-macOS/milestone/8))

Minor release with bug fixes and QOL improvements.

__CHANGED__

* 🔥 update `config.sh` script
* 🔥 update `Visual Studio Code` preferences file

__DOCS__

* 📝 update CHANGELOG file

__FIXED__

* 🐛 add a command to unistall Python3 Homebrew formula due to [#17784](https://github.com/numpy/numpy/issues/17784) and [#319](https://github.com/pypa/packaging/pull/319)
* 🐛 correct various typos
* 🐛 fix `font-ubuntu-mono-nerd-font` Homebrew formula

__REMOVED__

* 🗑️ remove `77qingliu.sas-syntax` VSCode extension

## __1.12.3__ ([2020-11-21](https://github.com/MarioCatuogno/Clean-macOS/milestone/8))

Minor release with bug fixes and some removed apps.

__DOCS__

* 📝 update CHANGELOG file

__FIXED__

* 🐛 fix `install.sh` script

__REMOVED__

* 🗑️ remove `HandBrake` Homebrew formula
* 🗑️ remove `ImageOptim` Homebrew formula
* 🗑️ remove `ms-python.python` VSCode extension
* 🗑️ remove `Pandoc` Homebrew formula
* 🗑️ remove `Python3` Homebrew formula

## __1.12.2__ ([2020-11-16](https://github.com/MarioCatuogno/Clean-macOS/milestone/8))

Minor release with bug fixes and docs update.

__CHANGED__

* 🔥 change `--prune` parameter from 5 to 2

__DOCS__

* 📝 update APPLIST file
* 📝 update CHANGELOG file
* 📝 update SETUP file

__FIXED__

* 🐛 fix broken link in SETUP file

## __1.12.1__ ([2020-11-15](https://github.com/MarioCatuogno/Clean-macOS/milestone/8))

Minor release with bug fixes.

__CHANGED__

* 🔥 update various screenshots

__DOCS__

* 📝 update CHANGELOG file

__FIXED__

* 🐛 add `svn` Homebrew formula
* 🐛 add `ZSH_DISABLE_COMPFIX` command in `.zshrc` file to avoid warning in iTerm2
* 🐛 fix `font-heavy-data-nerd-font` Homebrew formula

## __1.12.0__ ([2020-11-14](https://github.com/MarioCatuogno/Clean-macOS/milestone/8))

Minor release with some changes to Brewfile, update to documentation and bug fixing.

__DOCS__

* 📝 update CHANGELOG file

__FIXED__

* 🐛 correct alias in `.zshrc` file
* 🐛 correct `brew upgrade` command for cask apps
* 🐛 fix many macOS commands not working with Big Sur
* 🐛 fix `install.sh` script
* 🐛 fix `update.sh` script

__NEW__

* 📦 add `AdGuard` Homebrew formula

__REMOVED__

* 🗑️ remove `Docker` Homebrew formula
* 🗑️ remove `Google Chrome` Homebrew formula
* 🗑️ remove `iStat Menu` Homebrew formula
* 🗑️ remove `Microsoft Excel` Homebrew formula
* 🗑️ remove `Microsoft Powerpoint` Homebrew formula
* 🗑️ remove `Microsoft Remote Desktop` Homebrew formula
* 🗑️ remove `Microsoft Teams` Homebrew formula
* 🗑️ remove `Microsoft Word` Homebrew formula
* 🗑️ remove `Pixelmator` Homebrew formula
* 🗑️ remove `Sourcetree` Homebrew formula
* 🗑️ remove `Tableplus` Homebrew formula

## __1.11.0__ ([2020-08-30](https://github.com/MarioCatuogno/Clean-macOS/milestone/7))

Reorganized the repository removing unnecessary stuff (e.g. wallpapers) and reducing the total size from 16MB to 4MB! Fixed some bugs and changed the way the script is executed. Also completed the documentation and polish here and there.

⚠️ Clean-macOS now supports only Catalina and Big Sur, older versions of macOS are no longer supported!

__CHANGED__

* 🔥 update `.zshrc` file
* 🔥 update `Clean-macOS.sh` script [[#79](https://github.com/MarioCatuogno/Clean-macOS/issues/79)]
* 🔥 update `config.sh` script [[#79](https://github.com/MarioCatuogno/Clean-macOS/issues/79)]
* 🔥 update `install.sh` script [[#79](https://github.com/MarioCatuogno/Clean-macOS/issues/79)]
* 🔥 update `update.sh` script [[#79](https://github.com/MarioCatuogno/Clean-macOS/issues/79)]
* 🔥 update `Visual Studio Code` preferences file
* 🔥 update various screenshots

__DOCS__

* 📝 create CONFIGMACOS file [[#80](https://github.com/MarioCatuogno/Clean-macOS/issues/80)]
* 📝 update APPLIST file
* 📝 update CHANGELOG file
* 📝 update CONTRIBUTING file [[#80](https://github.com/MarioCatuogno/Clean-macOS/issues/80)]
* 📝 update README file [[#80](https://github.com/MarioCatuogno/Clean-macOS/issues/80)]
* 📝 update SETUP file [[#80](https://github.com/MarioCatuogno/Clean-macOS/issues/80)]

__FIXED__

* 🐛 correct various typos in script and docs (e.g. _cleanMacOs > Clean-macOS_)
* 🐛 fix `brew cleanup` command (add `--prune=5` in order to remove cache older than 5 days, this saves a lot of space)
* 🐛 fix `install.sh` script (Homebrew install commands inserted in `while loop`)

__NEW__

* 📦 add [Nord](https://github.com/arcticicestudio) color palette for `Visual Studio Code`, `iTerm` and `Terminal`
* 📦 add `ApolloOne` Homebrew formula
* 📦 add `Discord` Homebrew formula
* 📦 add `Docker` Homebrew formula
* 📦 add `file-icons-colourless` icon theme for `Visual Studio Code`
* 📦 add `Microsoft Excel` Homebrew formula
* 📦 add `Microsoft Powerpoint` Homebrew formula
* 📦 add `Microsoft Word` Homebrew formula
* 📦 add `Pandoc` Homebrew formula
* 📦 add `TablePlus` Homebrew formula

__REMOVED__

* 🗑️ `Clean-macOS` now supports only `Catalina` and `Big Sur`, older versions of macOS are no longer supported
* 🗑️ remove `Daisydisk` Homebrew formula
* 🗑️ remove `devPython.yml` config file
* 🗑️ remove `dockutil` Homebrew formula
* 🗑️ remove `Miniconda` install script from `config.sh`
* 🗑️ remove `setup.sh` script
* 🗑️ remove `yuml` from `Visual Studio Code` plugins
* 🗑️ remove some unused commands from `config.sh` file [[#79](https://github.com/MarioCatuogno/Clean-macOS/issues/79)]
* 🗑️ remove various graphics template
* 🗑️ remove various wallpapers
* 🗑️ remove version number from shell scripts [[#79](https://github.com/MarioCatuogno/Clean-macOS/issues/79)]

__SECURITY__

* 🔑 add `chmod -R 777 ~/Clean-macOS` command in order to give the correct permissions to scripts
* 🔑 update various aliases and brew commands [[#78](https://github.com/MarioCatuogno/Clean-macOS/issues/79)]

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

* 📦 add `Authy` Homebrew formula
* 📦 add `Sourcetree` Homebrew formula
* 📦 add `Transmit` Homebrew formula
* 📦 add `devPython.yml` config file fon Miniconda

__REMOVED__

* 🗑️ remove `.zshrc` from `update.sh` file
* 🗑️ remove Python libraries from `config.sh` file
* 🗑️ remove some VSCode extensions
* 🗑️ remove `Discord` Homebrew formula
* 🗑️ remove `Docker` Homebrew formula
* 🗑️ remove `ExpressVPN` Homebrew formula
* 🗑️ remove `Steam` Homebrew formula
* 🗑️ remove `Wipr` Homebrew formula

## __1.10.0__ ([2020-04-19](https://github.com/MarioCatuogno/Clean-macOS/milestone/6))

Major overhaul and more polish.

__CHANGED__

* 🔥 add `conda update --all` command to `update.sh` file
* 🔥 add `conda update --all` command to `update.sh` file

__DOCS__

* 📝 update CHANGELOG file

__NEW__

* 📦 add `Microsoft-Teams` Homebrew formula
* 📦 add `Miniconda` install script into `install.sh` file
* 📦 new `Brewfile` containing all apps and bins. If you want to personalize your configuration you can edit this file choosing from various reviewed apps (click [here](https://github.com/MarioCatuogno/Clean-macOS/blob/master/doc/apps_list.md))

__REMOVED__

* 🗑️ remove (🧟 __personal__), (👨‍💻 __developer__) and (👶 __basic__) profiles: now all apps and bins are listed in one single file
* 🗑️ remove `Cyberduck` Homebrew formula

__SECURITY__

* 🔑 update `.zshrc` file

## __1.9.3__ ([2020-04-15](https://github.com/MarioCatuogno/Clean-macOS/milestone/5))

Minor bugfixing and new formulaes.

__DOCS__

* 📝 update CHANGELOG file

__FIXED__

* 🐛 remove shutdown command from `config.sh`

__NEW__

* 📦 (👨‍💻 __developer__)(🧟 __personal__) add `Cyberduck` Homebrew formula
* 📦 (🧟 __personal__) add `Discord` Homebrew formula
* 📦 (👨‍💻 __developer__)(🧟 __personal__) add `nmap` Homebrew formula
* 📦 (🧟 __personal__) add `istat-menus` Homebrew formula
* 📦 (🧟 __personal__) add `Spotify` Homebrew formula

__REMOVED__

* 🗑️ (🧟 __personal__) remove `gswitch` Homebrew formula
* 🗑️ (🧟 __personal__) remove `NetNewsWire` Homebrew formula
* 🗑️ (🧟 __personal__) remove `qlcolorcode` Homebrew formula
* 🗑️ (🧟 __personal__) remove `qlmarkdown` Homebrew formula
* 🗑️ (🧟 __personal__) remove `qlvideo` Homebrew formula
* 🗑️ (🧟 __personal__) remove `quicklook-csv` Homebrew formula
* 🗑️ (🧟 __personal__) remove `quicklook-json` Homebrew formula
* 🗑️ (🧟 __personal__) remove `qlstephen` Homebrew formula
* 🗑️ (🧟 __personal__) remove `Steermouse` Homebrew formula

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

* 📦 (👨‍💻 __developer__) add `Firefox` Homebrew formula
* 📦 (🧟 __personal__) add `NetNewsWire` Homebrew formula
* 📦 add (🧟 __personal__), (👨‍💻 __developer__) and (👶 __basic__) profiles
* 📦 upload new icons

__REMOVED__

* 🗑️ remove unused scripts

## __1.8.0__ ([2019-10-31](https://github.com/MarioCatuogno/Clean-macOS/milestone/4))

Biggest release ever! I've re-organized the setup, updated the config files and updated the README file with a detailed guide.

There is now one single script called `Clean-macOS.sh` that has two functions:

* __update__: update macOS apps and binaries, clean temporary files and run some _brew_ diagnostics
* __install__: install apps, binaries and configure macOS, to be launched only once

Launching the __install__ mode let you chose what kind of profile you want to apply to your macOS. Each profile has different apps and configurations, but everyone shares a `core.sh` script which install common apps and dependencies. Included in this release there are the following profiles, more to come in next releases:

* 👩‍🎨 __artist__ [[#59](https://github.com/MarioCatuogno/Clean-macOS/issues/59)]
* 👶 __basic__ [[#50](https://github.com/MarioCatuogno/Clean-macOS/issues/50)]
* 👨‍💻 __developer__ [[#55](https://github.com/MarioCatuogno/Clean-macOS/issues/55)]
* 🧟 __personal__ [[#56](https://github.com/MarioCatuogno/Clean-macOS/issues/56)]

The list of applications included in each profile is reported [__here__](https://github.com/MarioCatuogno/Clean-macOS/blob/master/doc/PROFILES.md).

Also this release is fully compatible with __macOS 10.15 "Catalina"__.

__CHANGED__

* 🔥 (🧟 __personal__) move `BattleNet` Homebrew formula [[#56](https://github.com/MarioCatuogno/Clean-macOS/issues/56)]
* 🔥 (🧟 __personal__) move `DaisyDisk` Homebrew formula [[#56](https://github.com/MarioCatuogno/Clean-macOS/issues/56)]
* 🔥 (🧟 __personal__) move `ExpressVPN` Homebrew formula [[#56](https://github.com/MarioCatuogno/Clean-macOS/issues/56)]
* 🔥 (🧟 __personal__) move `Helium` Homebrew formula [[#56](https://github.com/MarioCatuogno/Clean-macOS/issues/56)]
* 🔥 (🧟 __personal__) move `Magnet` Homebrew formula [[#56](https://github.com/MarioCatuogno/Clean-macOS/issues/56)]
* 🔥 (🧟 __personal__) move `Pixelmator` Homebrew formula [[#56](https://github.com/MarioCatuogno/Clean-macOS/issues/56)]
* 🔥 (🧟 __personal__)(👨‍💻 __developer__) move `PopClip` Homebrew formula [[#56](https://github.com/MarioCatuogno/Clean-macOS/issues/56)]
* 🔥 (🧟 __personal__) move `SteerMouse` Homebrew formula [[#56](https://github.com/MarioCatuogno/Clean-macOS/issues/56)]
* 🔥 (🧟 __personal__) move `Wipr` Homebrew formula [[#56](https://github.com/MarioCatuogno/Clean-macOS/issues/56)]
* 🔥 (🧟 __personal__)(👨‍💻 __developer__)  move `Docker` Homebrew formula [[#55](https://github.com/MarioCatuogno/Clean-macOS/issues/55)] [[#56](https://github.com/MarioCatuogno/Clean-macOS/issues/56)]
* 🔥 update .gitignore file [[#48](https://github.com/MarioCatuogno/Clean-macOS/issues/48)]
* 🔥 update installation process for `Zsh` [[#48](https://github.com/MarioCatuogno/Clean-macOS/issues/48)]

__DOCS__

* 📝 update APPS_REMOVED file
* 📝 update CHANGELOG file
* 📝 update README file [[#51](https://github.com/MarioCatuogno/Clean-macOS/issues/51)]
  
__FIXED__

* 🐛 change `brew cask install --appdir="/Applications" the-unarchiver` Homebrew formula to `mas install 425424353`
* 🐛 change `google-drive-file-stream` Homebrew formula to `google-backup-and-sync` [[#47](https://github.com/MarioCatuogno/Clean-macOS/issues/47)]
* 🐛 correct various typo

__NEW__

* 📦 (👨‍💻 __developer__) add `DBeaver` Homebrew formula [[#57](https://github.com/MarioCatuogno/Clean-macOS/issues/57)]
* 📦 (👨‍💻 __developer__) add `Firefox` Homebrew formula [[#55](https://github.com/MarioCatuogno/Clean-macOS/issues/57)]
* 📦 (👶 __basic__) add `Telegram` Homebrew formula [[#50](https://github.com/MarioCatuogno/Clean-macOS/issues/50)]
* 📦 (👶 __basic__) add `Whatsapp` Homebrew formula [[#50](https://github.com/MarioCatuogno/Clean-macOS/issues/50)]
* 📦 add BASIC script [[#50](https://github.com/MarioCatuogno/Clean-macOS/issues/50)]
* 📦 add DEVELOPER script [[#55](https://github.com/MarioCatuogno/Clean-macOS/issues/55)]
* 📦 add PERSONAL script [[#38](https://github.com/MarioCatuogno/Clean-macOS/issues/38)]
* 📦 add `Bitwarden` Homebrew formula [[#64](https://github.com/MarioCatuogno/Clean-macOS/issues/64)]
* 📦 add `coreutils` Homebrew formula [[#36](https://github.com/MarioCatuogno/Clean-macOS/issues/55)]
* 📦 add `dockutil` Homebrew formula [[#36](https://github.com/MarioCatuogno/Clean-macOS/issues/55)]
* 📦 add `fantasque-sans-mono` font [[#54](https://github.com/MarioCatuogno/Clean-macOS/issues/54)]
* 📦 add `heavydata-nerd-font` font [[#54](https://github.com/MarioCatuogno/Clean-macOS/issues/54)]
* 📦 add `ubuntumono-nerd-font` font [[#54](https://github.com/MarioCatuogno/Clean-macOS/issues/54)]
* 📦 add various graphic resources [[#58](https://github.com/MarioCatuogno/Clean-macOS/issues/58)]

__REMOVED__

* 🗑️ remove `Discord` Homebrew formula
* 🗑️ remove `Sip` Homebrew formula [[#47](https://github.com/MarioCatuogno/Clean-macOS/issues/47)]
* 🗑️ remove `brew install zsh-autosuggestions` unnecessary command [[#48](https://github.com/MarioCatuogno/Clean-macOS/issues/48)]
* 🗑️ remove `brew install zsh-completions` unnecessary command [[#48](https://github.com/MarioCatuogno/Clean-macOS/issues/48)]
* 🗑️ remove `brew install zsh-syntax-highlighting` unnecessary command [[#48](https://github.com/MarioCatuogno/Clean-macOS/issues/48)]
* 🗑️ remove `gotop` command [[#47](https://github.com/MarioCatuogno/Clean-macOS/issues/47)]
* 🗑️ remove `webtorrent-cli` Homebrew formula

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

* 📦 add `Ecosia` Homebrew formula
* 📦 add `Keynote` Homebrew formula [[#39](https://github.com/MarioCatuogno/Clean-macOS/issues/39)]
* 📦 add `Numbers` Homebrew formula [[#39](https://github.com/MarioCatuogno/Clean-macOS/issues/39)]
* 📦 add `brew tap Homebrew/cask-fonts` command
* 📦 add `com.apple.dock static-only` command set to TRUE [[#35](https://github.com/MarioCatuogno/Clean-macOS/issues/35)]
* 📦 add `imagemagick` Homebrew formula
* 📦 add `jupyter` Python package
* 📦 add `quicklook-csv` Homebrew formula
* 📦 add `youtube-dl` Homebrew formula
* 📦 add a new official logo (thanks to [__@JustInDraft__](https://www.instagram.com/justindraft_adv/))

__REMOVED__

* 🗑️ remove `Easyres` Homebrew formula [[#40](https://github.com/MarioCatuogno/Clean-macOS/issues/40)]
* 🗑️ remove `Github-Desktop` Homebrew formula [[#30](https://github.com/MarioCatuogno/Clean-macOS/issues/30)]
* 🗑️ remove `brew tap cjbassi/gotop` command
* 🗑️ remove deprecated `brew install cask` command [[#32](https://github.com/MarioCatuogno/Clean-macOS/issues/32)]
* 🗑️ remove deprecated `brew tap caskroom/cask` command [[#32](https://github.com/MarioCatuogno/Clean-macOS/issues/32)]
* 🗑️ remove unnecessary `brew tap buo/cask-upgrade` command [[#32](https://github.com/MarioCatuogno/Clean-macOS/issues/32)]
* 🗑️ remove unnecessary `Homebrew/cask-fonts/` command [[#32](https://github.com/MarioCatuogno/Clean-macOS/issues/32)]

__SECURITY__

* 🔑 update `.zshrc` file [[#29](https://github.com/MarioCatuogno/Clean-macOS/issues/29)]

## __1.6.4__ ([2019-08-05](https://github.com/MarioCatuogno/Clean-macOS/milestone/3))

* 🐛 fix broken link in CHANGELOG file [[#26](https://github.com/MarioCatuogno/Clean-macOS/issues/26)]

## __1.6.3__ ([2019-08-05](https://github.com/MarioCatuogno/Clean-macOS/milestone/1))

With this release I've started to be more organized, keeping track of issues and changelog. I've also created a Kanban board to manage my backlog for this project.

__CHANGED__

* 🔥 remove MACOS_COMMAND file [[#22](https://github.com/MarioCatuogno/Clean-macOS/issues/22)]
* 🔥 remove `Cakebrew` Homebrew formula [[#20](https://github.com/MarioCatuogno/Clean-macOS/issues/20)]
* 🔥 remove `Kitematic` Homebrew formula [[#20](https://github.com/MarioCatuogno/Clean-macOS/issues/20)]
* 🔥 remove `Lepton` Homebrew formula [[#20](https://github.com/MarioCatuogno/Clean-macOS/issues/20)]
* 🔥 remove `Microsoft Remote Desktop` Homebrew formula [[#20](https://github.com/MarioCatuogno/Clean-macOS/issues/20)]
* 🔥 remove `Mtmr` Homebrew formula [[#20](https://github.com/MarioCatuogno/Clean-macOS/issues/20)]
* 🔥 remove `SonicWall Mobile Connect` Homebrew formula [[#20](https://github.com/MarioCatuogno/Clean-macOS/issues/20)]
* 🔥 update .gitignore file [[#22](https://github.com/MarioCatuogno/Clean-macOS/issues/22)]
* 🔥 update `.zshrc` file [[#22](https://github.com/MarioCatuogno/Clean-macOS/issues/22)]
* 🔥 update APPS_LIST file [[#22](https://github.com/MarioCatuogno/Clean-macOS/issues/22)]
* 🔥 update README file [[#21](https://github.com/MarioCatuogno/Clean-macOS/issues/21)]

__NEW__

* 📦 add CHANGELOG file [[#19](https://github.com/MarioCatuogno/Clean-macOS/issues/19)]
* 📦 add `DisableAllAnimations` command set to TRUE [[#23](https://github.com/MarioCatuogno/Clean-macOS/issues/23)]
* 📦 add `NSAutomaticWindowAnimationsEnabled` command set to FALSE [[#23](https://github.com/MarioCatuogno/Clean-macOS/issues/23)]
* 📦 add `Pages` Homebrew formula
* 📦 add `WebTorrent` Homebrew formula
* 📦 add `speedtest-cli` Python package
* 📦 add `tldr` Homebrew formula
* 📦 add icon files
* 📦 add new wallpapers

## __1.6.2__ (2019-07-09)

__CHANGED__

* 🔥 switch VPN service from `Tunnelbear` to `ExpressVPN`
* 🔥 update `.zshrc` file
* 🔥 update README file

__NEW__

* 📦 add `Easyres` Homebrew formula
* 📦 add `Helium` Homebrew formula
* 📦 add `Mtmr` Homebrew formula

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

* 📦 add `Amphetamine` Homebrew formula
* 📦 add `Magnet` Homebrew formula
* 📦 add `Spark` Homebrew formula
* 📦 add `Wipr` Homebrew formula

## __1.4.4__ (2018-09-24)

* 🔥 update setup files

## __1.4.3__ (2018-09-24)

* 🔥 add `Microsoft Remote Desktop` Homebrew formula

## __1.4.2__ (2018-09-24)

* 🔥 renamed setup files
* 🔥 update APPS_LIST file
* 🔥 update `Visual Studio Code` preferences file
* 🔥 update README file

## __1.4.1__ (2018-09-24)

Minor release with bug fixes, ready for macOS Mojave.

__CHANGED__

* 🔥 update Homebrew upgrade command

__NEW__

* 📦 add `neofetch` Homebrew formula

## __1.4.0__ (2018-09-23)

After further testing I decided to remove Sublime Text as main editor and switch to Visual Studio Code which is open source with a huge community and monthly updates.

__CHANGED__

* 🔥 remove outdated file
* 🔥 update .gitignore and .gitconfig files
* 🔥 update `.zshrc` file
* 🔥 update README file
* 🔥 update `Visual Studio Code` preferences file
* 🔥 update Homebrew upgrade command
* 🔥 switch main editor from Sublime Text to Visual Studio Code

__NEW__

* 📦 add ayu-dark color scheme for iTerm
* 📦 add ayu-light color scheme for iTerm
* 📦 add ayu-mirage color scheme for iTerm
* 📦 add tomorrow-night color scheme for iTerm
* 📦 add `Alfred` workflow
* 📦 add `Popclip` Homebrew formula
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
* 📦 add `htop` Homebrew formula
* 📦 add `Alfred` configuration file
* 📦 add `Brew` plugin into `.zshrc` configuration file
* 📦 add MIT license file

## __1.2.0__ (2018-09-18)

__CHANGED__

* 🔥 remove `Kap` Homebrew formula
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
* 📦 add `Imageoptim` Homebrew formula
* 📦 add `Visual Studio Code` Homebrew formula

## __1.0.0__ (2018-09-17)

* 📦 first commit
