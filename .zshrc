export LC_ALL=en_US.UTF-8

autoload -Uz compinit
compinit

kitty + complete setup zsh | source /dev/stdin

HISTSIZE=1000
HISTFILE=~/.zsh_history 
SAVEHIST=20000
HISTDUP=erase
setopt    appendhistory 
setopt    sharehistory 
setopt    incappendhistory  
setopt    interactivecomments

ZSH_THEME="agnoster"

export ZSH_CACHE_DIR=~/.cache

export ZSH_AUTOSUGGEST_USE_ASYNC=1
export ZSH_AUTOSUGGEST_STRATEGY=(history completion)

alias k="kubectl"
alias a="ansible"
alias t="terraform"
alias g="git"
alias v="vault"
alias h="helm"
alias pip="python -m pip"

export KUBE_EDITOR="vim -c 'set syntax=yaml'"

source <(antibody bundle < ~/.zsh_plugins.txt)

bindkey "^[[H" beginning-of-line
bindkey "^[[1~" beginning-of-line
bindkey "^[[F"  end-of-line
bindkey "^[[4~" end-of-line

zstyle ':completion:*' menu select
