export LC_ALL=en_US.UTF-8

autoload -Uz compinit

compinit

# Completion for kitty
kitty + complete setup zsh | source /dev/stdin

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"

export ZSH_CACHE_DIR=~/.cache

alias k="kubectl"
alias d="dockdr"
alias g="git"
alias h="helm"
alias d="kitty +kitten diff"

export ZSH_AUTOSUGGEST_USE_ASYNC=1
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#014152,bold,italic"
export ZSH_AUTOSUGGEST_STRATEGY=(history completion)

source <(antibody bundle < ~/.zsh_plugins.txt)
source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc'
source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc'

bindkey "^[[H" beginning-of-line
bindkey "^[[1~" beginning-of-line
bindkey "^[[F"  end-of-line
bindkey "^[[4~" end-of-line
export PATH="/usr/local/sbin:$PATH:/Users/alexk/workspace/flutter/bin"
export EDITOR='vim'
export GOPATH=~/goroot

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

eval $(thefuck --alias --enable-experimental-instant-mode)
alias fuk=fuck
