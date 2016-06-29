# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Zsh theme, loaded from ~/.oh-my-zsh/themese. Set to 'random' for fun
ZSH_THEME="robbyrussell"

# Don't let oh-my-zsh auto update
export DISABLE_AUTO_UPDATE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
plugins=(bundler gitfast extract)

# User configuration
PATH="/usr/local/bin:$PATH"
source $ZSH/oh-my-zsh.sh

export VISUAL='vim'
export EDITOR=$VISUAL
