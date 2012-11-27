
# Add ~/bin to the PATH
export PATH=~/bin:$PATH

function parse_git_branch () {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

WHITE="\[\033[0;37m\]"
RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
NO_COLOUR="\[\033[0m\]"

PS1="$WHITE\u$NO_COLOUR:\w$YELLOW\$(parse_git_branch)$NO_COLOUR\$ "
export CLICOLOR=1
export LSCOLORS=cxfxcxdxbxegedabagacad
