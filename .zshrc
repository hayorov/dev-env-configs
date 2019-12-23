export LC_ALL=en_US.UTF-8

autoload -Uz compinit
compinit

kitty + complete setup zsh | source /dev/stdin

ZSH_THEME="agnoster"

export ZSH_CACHE_DIR=~/.cache

export ZSH_AUTOSUGGEST_USE_ASYNC=1
export ZSH_AUTOSUGGEST_STRATEGY=(history completion)

alias k="kubectl"
alias d="dockdr"
alias g="git"


source <(antibody bundle < ~/.zsh_plugins.txt)
