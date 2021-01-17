export LC_ALL=en_US.UTF-8


export PATH="$PATH:/usr/local/bin/"
autoload -Uz compinit && compinit

# Completion for kitty
kitty + complete setup zsh | source /dev/stdin

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"

export ZSH_CACHE_DIR=~/.cache

# optimize autosuggest performance
export ZSH_AUTOSUGGEST_USE_ASYNC=1
export ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20
export ZSH_AUTOSUGGEST_MANUAL_REBIND=true

export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#014152,bold,italic"
export ZSH_AUTOSUGGEST_STRATEGY=(history completion)

source <(antibody bundle < ~/.zsh_plugins.txt)

source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc'
source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc'

export EDITOR='vim'
export GOPATH=~/goroot
export GOROOT=/usr/local/opt/go/libexec

alias k="kubectl"
alias d="docker"
alias g="git"
alias h="helm"
alias d="kitty +kitten diff"
alias v="vim"

bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
