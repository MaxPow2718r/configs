# Set up the prompt

# Enable colors and change prompt:
autoload -Uz colors  && colors
autoload -Uz promptinit
promptinit
PROMPT='%B%F{160}<%n%f%F{227}%b@%B%f%F{040}%m%f %F{020}%#%~%B>%b%f '

setopt histignorealldups sharehistory

# Use vi keys
bindkey -v
export KEYTIMEOUT=1

# Keep 10000 lines of history within the shell
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

# Aliases
alias ls='ls --color=auto'
alias la='ls -a --color=auto'
