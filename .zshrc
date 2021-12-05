
# Completions

# enable the default zsh completions!
autoload -Uz compinit && compinit
# git completions
#   to setup:
#   make the `.zsh` directory
    # mkdir -p ~/.zsh
#   download the scripts for completion
    # curl -o ~/.zsh/git-completion.bash https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
    # curl -o ~/.zsh/_git https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.zsh
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
fpath=(~/.zsh $fpath)

# Color context
export CLICOLOR=1

# git prompt
    # curl -o curl -o ~/.git-prompt.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
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

precmd () { __git_ps1 "%D{%FT%T%z} %~" " %# " }

# golang
export GOPATH=~/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN

