export GOPATH=/Users/joshstone/go
export PATH=$PATH:$GOPATH/bin
export STORM_HOME=~/.storm
export PATH=$PATH:$STORM_HOME/bin
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_161.jdk/Contents/Home
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/josh/Downloads/google-cloud-sdk/path.bash.inc' ]; then source '/Users/josh/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/josh/Downloads/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/josh/Downloads/google-cloud-sdk/completion.bash.inc'; fi

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

source ~/.bashrc
export SLUGIFY_USES_TEXT_UNIDECODE=yes

export PKG_CONFIG_PATH=/usr/local/Cellar/libffi/3.2.1/lib/pkgconfig
export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/usr/local/opt/openssl/lib/pkgconfig
