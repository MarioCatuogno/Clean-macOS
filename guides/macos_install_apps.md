# macOS install Apps

This document describe how I set up my macOS after a clean install.

## Index

* [System Preferences](#system-preferences)
* [Install XCode](#install-xcode)
* [Install Brew](#install-brew)
* [Install Shell](#install-shell)
* [Install Libraries](#install-libraries)
* [Install R](#install-r)
* [Install Python](#install-python)
* [Install Apps](#install-apps)
* [Install Quick Look plugins](#install-quick-look-plugins)
* [Install Developing Tools](#install-developing-tools)

#### System Preferences

The first thing I do is to update the OS. For that __Apple Icon > Software Update__. There are a couple of things I like to make in __Apple Icon > System Preferences__:

* Trackpad > Tap to click
* Trackpad > Tracking Speed (Fast)
* Trackpad > Scroll Direction (Not selected)
* Keyboard > Key Repeat (Fast)
* Keyboard > Delay Until Repeat (Short)  
* Security & Privacy > Firewall (On)

#### Install XCode

An important dependency for Homebrew is __XCode__ which can be installed via command line:

```
xcode-select --install
```

#### Install Brew

To install `brew` and `cask` use the following commands. More information [here](https://brew.sh/).

```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

```
brew install cask
```

We need also to tell the system to use programs installed by Homebrew (in `/usr/local/bin`) rather than the macOS default. We do this by adding `/usr/local/bin` to your `$PATH` environment variable.

```
echo 'export PATH="/usr/local/bin:$PATH"' >> ~/.bash_profile
```

#### Install Shell

```
brew install zsh
curl -L http://install.ohmyz.sh | sh
```

After installing `zsh`, go to __System Preferences > Users & Groups > Advanced Options > Login Shell__ and paste `/usr/local/bin/zsh`.
Run `atom ~/.zshrc` to open with Atom the __config__ file of ZSH and change `ZSH_THEME="mh"`. It is possible to add more plugins (choosing [here](https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins)) in `plugins=()`.

```
cd ~/.oh-my-zsh && git clone git://github.com/zsh-users/zsh-syntax-highlighting.git
```

Add `source ~/.oh-my-zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh` to the end of `~/.zshrc` file.

In `iTerm2` go to __Preferences > Profiles > Windows__ and change the size to __125__ for Columns and __35__ for Rows.

#### Install Libraries

```
brew install git
brew install mysql
```

#### Install R

```
brew tap homebrew/science
brew install R
brew cask install rstudio
defaults write org.R-project.R force.LANG en_US.UTF-8
```

The following are the most important __packages__ for R.

```r
install.packages("tidyverse")
```


#### Install Python

```
brew install python3
```

#### Install Apps

```
brew cask install appcleaner
brew cask install atom
brew cask install cheatsheet
brew cask install dropbox
brew cask install evernote
brew cask install franz
brew cask install google-chrome
brew cask install skype
brew cask install spotify
brew cask install the-unarchiver
brew cask install transmission
brew cask install vlc
```

#### Install Quick Look plugins

```
brew cask install qlcolorcode
brew cask install qlstephen
brew cask install qlmarkdown
brew cask install quicklook-json
brew cask install quicklook-csv
brew cask install qlimagesize
brew cask install qlvideo
```

#### Install Developing Tools

```
brew cask install github-desktop
brew cask install hex-fiend
brew cask install iterm2
brew cask install sequel-pro
brew cask install virtualbox
brew cask install visual-studio-code
```
