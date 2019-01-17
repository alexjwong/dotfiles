
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Color context
export CLICOLOR=1

# Prompt
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWCOLORHINTS=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUPSTREAM="auto"
PROMPT_COMMAND+="; __git_ps1 '\t \w' '\\\$ '"

# bash_completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

# golang
export GOPATH=~/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN
