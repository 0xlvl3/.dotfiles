source ~/.aliases
# source ~/.dotfiles/scripts/zsh_start_menu.sh

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
PROMPT='%F{cyan}[%F{white}choccy%F{cyan}@%F{white}zsh%F{cyan}]%F{yellow}[%~]%f %f '


# %W is the date
# %* is time
# %? is the return code of previous command
# %(q.n.y) is a ternary that checks the variable in question %q
#   and outputs value n if it's false or 0, and value y is output
#   when %q is non-zero.
#   Replace q, n, and y with whatever values you want
RPROMPT='%W %* %F{yellow}%(?.√.%?)'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Autosuggestions plugin.
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# PATH 
export PATH="$HOME/.local/bin:$PATH"

# GO PATHS.
export GOPATH=$HOME/projects/go
export GOBIN=/usr/local/go/bin
export GOCACHE=$HOME/.cache/go-build
export PATH=$PATH:$GOBIN:$GOPATH/bin


# JAVA PATHS
export JAVA_HOME=/path/to/your/jdk
export JDTLS_HOME=$HOME/.config/jdtls
export PATH=$PATH:$JAVA_HOME/bin:$JDTLS_HOME/bin


runjava() {
  if [[ -z "$1" ]]; then
    echo "Please provide a Java file to compile and run."
    return 1
  fi

  # Remove the .java extension if provided
  local filename="${1%.java}"

  # Compile the Java file
  javac "$filename.java"
  if [[ $? -ne 0 ]]; then
    echo "Compilation failed!"
    return 1
  fi

  # Run the Java program
  java "$filename"
}

# Add to your zshrc
alias jrun=runjava
