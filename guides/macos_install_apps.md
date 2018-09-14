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

#### Install Shell

```
brew install zsh
curl -L http://install.ohmyz.sh | sh
```

After installing `zsh`, go to __System Preferences > Users & Groups > Advanced Options > Login Shell__ and paste `/usr/local/bin/zsh`.
Run `subl ~/.zshrc` to open with Sublime Text the __config__ file of ZSH and change `ZSH_THEME="mh"`. It is possible to add more plugins (choosing [here](https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins)) in `plugins=()`.

Add `plugins=(git pip zsh-completions zsh-autosuggestions zsh-syntax-highlighting)` to the end of `~/.zshrc` file (see script below).
Add `$HOME/bin:/usr/local/bin:/usr/local/opt/coreutils/libexec/gnubin:$PATH` to the `export PATH=` command in `~/.zshrc` file (see script below).

In `iTerm2` go to __Preferences > Profiles > Windows__ and change the size to __125__ for Columns and __35__ for Rows.

We need also to tell the system to use programs installed by Homebrew (in `/usr/local/bin`) rather than the macOS default. We do this by adding `/usr/local/bin` to your `$PATH` environment variable.

```
echo 'export PATH=$HOME/bin:/usr/local/bin:/usr/local/opt/coreutils/libexec/gnubin:$PATH' >> ~/.bash_profile
echo 'export PATH=$HOME/bin:/usr/local/bin:/usr/local/opt/coreutils/libexec/gnubin:$PATH' >> ~/.zshrc
echo 'plugins=(git pip zsh-completions zsh-autosuggestions zsh-syntax-highlighting)' >> ~/.zshrc
#echo 'source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh' >> ~/.zshrc
#echo 'source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh' >> ~/.zshrc
echo 'export EDITOR=subl' >> ~/.zshrc
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