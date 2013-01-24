alias createbranch='/Users/daniel/devel/scripts/createbranch'
alias sub='open -a "Sublime Text 2"'


export CLICOLOR=1

export LSCOLORS=GxFxCxDxBxegedabagaced

export PATH=/Applications/Postgres.app/Contents/MacOS/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/local/bin:$PATH
export NODE_ENV=development
export RUBY_ENV=development


[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

#source "`brew --prefix grc`/etc/grc.bashrc"


function parse_git_branch () {
       git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
CYAN="\[\033[0;46m\]"
WHITE="\[\033[0;37m\]"
NO_COLOUR="\[\033[0m\]"

PS1="$RED\u@machine$NO_COLOUR:\w$WHITE\$(parse_git_branch)$NO_COLOUR\$ "
