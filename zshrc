# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh
export ZSH_CUSTOM=/Users/gavin/src/dotfiles/oh_my_zsh_custom

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
export ZSH_THEME="robbyrussell"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# export DISABLE_AUTO_TITLE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(brew gem git github history-substring-search lein node npm osx ruby vagrant vi-mode)

TIMEFMT=$'\nreal\t%E\nuser\t%U\nsys\t%S'

source $ZSH/oh-my-zsh.sh

unsetopt correct


export PATH=/usr/local/bin:/usr/local/sbin:$PATH:$HOME/bin

export PATH="/Applications/Postgres.app/Contents/Versions/9.5/bin:$PATH"

export PATH="./bin:/usr/local/heroku/bin:/opt/chefdk/bin:$PATH"

alias gam="/Users/gavin/bin/gam/gam"
eval $(/usr/libexec/path_helper -s)

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
