###############################################################################
# Paths                                                                       #
###############################################################################

ZSH_DISABLE_COMPFIX="true"

export PATH="$PATH:/usr/local/bin"
export PATH="$PATH:/usr/local/sbin"
export PATH="$PATH:/opt/homebrew/bin"
export ZSH=$HOME/.oh-my-zsh

###############################################################################
# Plugins to load                                                             #
###############################################################################

# Plugins to load
plugins=( brew git history pip zsh-completions zsh-autosuggestions zsh-syntax-highlighting )

###############################################################################
# Themes                                                                      #
###############################################################################

# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="mh"

source $ZSH/oh-my-zsh.sh

###############################################################################
# User configuration                                                          #
###############################################################################

# Preferred editor
export EDITOR="code -w"

###############################################################################
# Python                                                                      #
###############################################################################

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

###############################################################################
# Aliases                                                                     #
###############################################################################

# Print each PATH entry on a separate line
alias path='echo -e ${PATH//:/\\n}'

# Reload the shell
alias reload="exec ${SHELL} -l"

# Shortcuts
alias ping="prettyping --nolegend"
alias myip="ipconfig getifaddr en0"

# Open editor
alias code=codium

# Brew
alias bup="brew -v update && brew -v upgrade && brew -v cleanup --prune=2 && brew doctor && brew -v upgrade --casks --greedy"
