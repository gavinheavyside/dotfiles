export EDITOR=vim
export GOPATH=$HOME/go

# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh
export ZSH_CUSTOM=/Users/gavin/src/dotfiles/oh_my_zsh_custom
export ZSH_THEME="robbyrussell"
export ZSH_DISABLE_COMPFIX="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
plugins=(git github history-substring-search vi-mode)

setopt histignorealldups

TIMEFMT=$'\nreal\t%E\nuser\t%U\nsys\t%S'

source $ZSH/oh-my-zsh.sh

unsetopt correct

export PATH=./bin:/usr/local/bin:/usr/local/sbin:$PATH:$HOME/bin

alias ag='ag --path-to-ignore ~/.ignore'

eval $(/usr/libexec/path_helper -s)

. /usr/local/opt/asdf/libexec/asdf.sh
. /usr/local/opt/asdf/etc/bash_completion.d/asdf.bash

. ~/.asdf/plugins/java/set-java-home.zsh

alias assume-role='function() { eval $(command assume-role $@); if [[ -z "$AWS_SECURITY_TOKEN" ]]; then unset AWS_SECURITY_TOKEN; fi; if [[ -z "$AWS_SESSION_TOKEN" ]]; then unset AWS_SESSION_TOKEN; fi }'

function assumed_role() {
  if [[ -v ASSUMED_ROLE ]]
  then
    echo "[${ASSUMED_ROLE}] "
  fi
}

# %(?:%{%}➜ :%{%}➜ ) %{$fg[cyan]%}%c%{$reset_color%} $(git_prompt_info)

# export PROMPT='${ret_status} %{$fg[cyan]%}%c%{$reset_color%} %{$fg[yellow]%}$(assumed_role)%{$reset_color%}$(git_prompt_info)'
export PROMPT='%(?:%{%}➜ :%{%}➜ )%{$fg[yellow]%}$(assumed_role)%{$fg[cyan]%}%c%{$reset_color%} $(git_prompt_info)'


export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
#__conda_setup="$('/usr/local/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
#if [ $? -eq 0 ]; then
#    eval "$__conda_setup"
#else
#    if [ -f "/usr/local/anaconda3/etc/profile.d/conda.sh" ]; then
#        . "/usr/local/anaconda3/etc/profile.d/conda.sh"
#    else
#        export PATH="/usr/local/anaconda3/bin:$PATH"
#    fi
#fi
#unset __conda_setup
# <<< conda initialize <<<


# Created by `pipx` on 2022-04-13 18:23:38
export PATH="$PATH:/Users/gavin/.local/bin"

