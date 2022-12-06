# Turn off immediate reporting of background job status
unsetopt NOTIFY

# Turn off lower priority for background jobs
unsetopt BG_NICE

# Set history size and save history to a file
export HISTSIZE=1000
export SAVEHIST=1000
export HISTFILE=$HOME/.history

# Do not enter duplicate command lines into the history list
setopt HIST_IGNORE_DUPS

# Set default editor
export EDITOR=nvim
export VISUAL=nvim

# Directory navigation aliases
alias -g ...='../..'
alias -g ....='../../..'
alias -g .....='../../../..'

# List files with long format and human-readable sizes
alias ll="ls -lah"

# Use colors for grep
alias grep="grep --color=auto"

# Edit the .zshrc file
alias zrc="$EDITOR $HOME/.zshrc"

# Key bindings

# Search history on up/down arrow keys
bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward

# Open a file in the default editor
alias edit="$EDITOR"

# Prompt customization

# Show Git branch in the prompt
setopt prompt_subst
PROMPT='%F{yellow}[%F{white} %n %F{yellow} %F{white}%m %F{yellow}] %B%F{white}%b  %f'

# Show time, date, and return code in the right prompt
RPROMPT='%W %* %F{yellow}%(?.√.%?)'

# Autocomplete

# Enable autocomplete
autoload -Uz compinit
compinit

# Use colors for autocomplete
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

# Use fuzzy matching for autocomplete
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=*

# Enable completion for Git commands
zstyle ':completion:*:*:git:*'
