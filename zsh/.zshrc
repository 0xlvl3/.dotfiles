unsetopt NOTIFY #while off won't report the status of background jobs immdediately
unsetopt BG_NICE #while off background jobs run at same proirity not lower

#history settings
export HISTSIZE=1000
export SAVEHIST=1000
export HISTFILE=$HOME/.history
setopt HIST_IGNORE_DUPS #do not enter command lines into the history list if they are duplicates of the previous event


#set defaults
export EDITOR=nvim
export VISUAL=nvim

#directory navigation
alias -g ...='../..'
alias -g ....='../../..'
alias -g .....='../../../..'

alias ll="ls -lah"
alias grep="grep --color=auto"
alias zrc="$EDITOR $HOME/.zshrc"


########################
# Prompt customization #
########################
 
# All escape codes at http://zsh.sourceforge.net/Doc/Release/Prompt-Expansion.html
 
# %F{color} sets the color
# %n is username
# %M is full hostname
# %f resets formatting
# %~ is current working directory
PROMPT='%F{yellow}[%F{white} %n %F{yellow} %F{white}%m %F{yellow}]  %f'
 
# %W is the date
# %* is time
# %? is the return code of previous command
# %(q.n.y) is a ternary that checks the variable in question %q
#   and outputs value n if it's false or 0, and value y is output
#   when %q is non-zero.
#   Replace q, n, and y with whatever values you want
RPROMPT='%W %* %F{yellow}%(?.√.%?)'
