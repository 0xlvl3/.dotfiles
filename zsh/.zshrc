##############
##############
### .zshrc ###
##############
##############
 
 
#########################
# Environment variables #
#########################
 
export EDITOR=vim
export VISUAL=vim
 
 
###########
# Aliases #
###########
 
alias zrc="$EDITOR $HOME/.zshrc"
alias ll='ls -lah'
alias grep='grep --color=auto'
 
 
#############
# Functions #
#############
 
function mp32ogg {
  # Convert between any audio formats (not just mp3/ogg)
  # Example: mp32ogg existing.mp3 new.ogg
  ffmpeg -i $1 $2
}
 
 
#############################
# Load git stuff for prompt #
#############################
 
autoload -Uz vcs_info  # Where do these come from? What else is there?
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
zstyle ':vcs_info:git:*' formats '%F{blue}(%b)%f'
zstyle ':vcs_info:*' enable git
setopt prompt_subst
 
 
########################
# Prompt customization #
########################
 
# All escape codes at http://zsh.sourceforge.net/Doc/Release/Prompt-Expansion.html
 
# %F{color} sets the color
# %n is username
# %M is full hostname
# %f resets formatting
# %~ is current working directory
PROMPT='%F{red}%n@%F{yellow}%m:%~%f$vcs_info_msg_0_> '
 
# %W is the date
# %* is time
# %? is the return code of previous command
# %(q.n.y) is a ternary that checks the variable in question %q
#   and outputs value n if it's false or 0, and value y is output
#   when %q is non-zero.
#   Replace q, n, and y with whatever values you want
RPROMPT='%W %* %(?.√.%?)'
 
##########################
# Keybind mode for shell #
##########################
 
# For emacs keybinding
#bindkey -e
 
# For vi keybinding
bindkey -v
 
#######################
# Command-line editor #
#######################
 
# Uses $VISUAL editor
autoload -z edit-command-line
zle -N edit-command-line
# If using emacs keybinds (CTRL-X + CTRL-E)
#bindkey "^X^E" edit-command-line
# If using vi keybinds (`v` in control mode)
bindkey -M vicmd v edit-command-line
