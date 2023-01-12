
# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend
# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
export HISTCONTROL=ignoredups:erasedups  # no duplicate entries
export HISTSIZE=100000
export HISTFILESIZE=200000
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
export HISTIGNORE="history*"

#search history easily
alias h="tac ~/.bash_history | grep -m10"

 [[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
alias tmux="tmux -2"

source /Users/josh/Library/Preferences/org.dystroy.broot/launcher/bash/br

eval "$(thefuck --alias)"

alias wb="gradle build"
alias wf="gradle goJF"
alias wn="gradle clean"
alias ws="gradle spotlessApply"
alias wu="gradle composeUp"
alias wd="gradle composeDown"
alias wl="gradle --write-locks"

export PATH=$HOME/bin:/usr/local/bin:/opt/homebrew/bin:$PATH
