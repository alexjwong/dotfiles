
# Color context
export CLICOLOR=1

# git prompt
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWCOLORHINTS=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUPSTREAM="auto"
source ~/.git-prompt.sh

# Prompt
# PROMPT='%*: %~ %# '
# use precmd so that __git_ps1 colors are available
# example given by git-prompt.sh:
# precmd () { __git_ps1 "%n" ":%~$ " "|%s" }

precmd () { __git_ps1 "%*:%~" " %# " }

# golang
export GOPATH=~/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN

