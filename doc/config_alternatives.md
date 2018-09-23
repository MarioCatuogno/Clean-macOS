# Different or additional configuration for macOS

## iTerm2

### Using alternative Tomorrow Night color scheme

```bash
wget https://raw.githubusercontent.com/MarioCatuogno/Clean-macOS/master/config/tomorrow-night.itermcolors \
-O ~/Downloads/tomorrow-night.itermcolors && open ~/Downloads/tomorrow-night.itermcolors
```

## R

### Install R

```bash
brew tap homebrew/science
brew install R
brew cask install rstudio
defaults write org.R-project.R force.LANG en_US.UTF-8
```

The following are the most important __packages__ for R.

```r
install.packages("tidyverse")
```

## Sublime Text

### Installing Sublime Text

```bash
#Installing Sublime Text with Homebrew
echo "Installing SublimeText..."
brew cask install --appdir="/Applications" sublime-text

#Creating a shortcut for Sublime Text app (subl)
ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl

#Import preferences from Github
curl https://raw.githubusercontent.com/MarioCatuogno/Clean-macOS/master/config/subl.settings -o ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings

#Import packages from Github
curl https://raw.githubusercontent.com/MarioCatuogno/Clean-macOS/master/config/sublpkg.settings -o ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Package\ Control.sublime-settings

#Import "A File Icon" settings from Github
curl https://raw.githubusercontent.com/MarioCatuogno/Clean-macOS/master/config/sublicn.settings -o ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/A\ File\ Icon.sublime-settings

#Import Markdown settings from Github
curl https://raw.githubusercontent.com/MarioCatuogno/Clean-macOS/master/config/sublmd.settings -o ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Markdown.sublime-settings
```

### Configure Sublime Text

Open __Sublime Text__ app and press `ALT+CMD+P` then to manually install packages, follow this steps:

* _install > Package Control: Install Package > A File Icon_
* _install > Package Control: Install Package > Git_
* _install > Package Control: Install Package > GitGutter_
* _install > Package Control: Install Package > Markdown Extended_
* _install > Package Control: Install Package > MarkdownLivePreview_
* _install > Package Control: Install Package > SAS Syntax and Theme_
* _install > Package Control: Install Package > Add SideBarEnhancements as package for Sublime Text_
* _install > Package Control: Install Package > Tomorrow Night Italics Color Scheme_
