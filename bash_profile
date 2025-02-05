archey -o
## Remove error warning ##
export BASH_SILENCE_DEPRECATION_WARNING=1

export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

#   Set Paths
#   ------------------------------------------------------------
export PATH="$PATH:/usr/local/bin/:/user/local/bin:/Users/gregorbauer/Documents/couchbase/source/couchbase-server-tools_7.6.2-macos_x86_64/bin"

#Pretty Print JSON
alias pp='python3 -m json.tool '

## Colorize the ls output ##
#alias ls='ls --color=auto'

## get rid of command not found ##
alias cd..='cd ..'

## a quick way to get out of current directory ##
alias ..='cd ..'

## Colorize the grep command output for ease of use (good for log files)##
alias grep='grep --color=auto'

alias df="df -h"

alias gh='history | grep'

alias myexternalip='curl ipecho.net/plain; echo'

alias myip='ipconfig getifaddr en0'

alias f='open -a Finder ./'

alias cd..='cd ../'                         # Go back 1 directory level (for fast typers)
alias ..='cd ../'


#   extract:  Extract most know archives with one command
#   ---------------------------------------------------------
extract () {
    if [ -f $1 ] ; then
        case $1 in
        *.tar.bz2)   tar xjf $1     ;;
        *.tar.gz)    tar xzf $1     ;;
        *.bz2)       bunzip2 $1     ;;
        *.rar)       unrar e $1     ;;
        *.gz)        gunzip $1      ;;
        *.tar)       tar xf $1      ;;
        *.tbz2)      tar xjf $1     ;;
        *.tgz)       tar xzf $1     ;;
        *.zip)       unzip $1       ;;
        *.Z)         uncompress $1  ;;
        *.7z)        7z x $1        ;;
        *)     echo "'$1' cannot be extracted via extract()" ;;
            esac
        else
            echo "'$1' is not a valid file"
        fi
}
