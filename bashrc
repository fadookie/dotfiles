#vi editing mode
set -o vi 

export PATH="$HOME/bin:$HOME/wp-upgrade:$PATH"
export VISUAL="/usr/local/bin/vim"

#parse_git_branch() {
#	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
#}
#
#export PS1="\[\033[00m\]\h:\w\[\033[31m\]\$(parse_git_branch)\[\033[00m\]$\[\033[00m\] "
#export PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
PROMPT_COMMAND='__git_ps1 "\u@\h:\w" "\\\$ "'

#Use less as pager
PAGER=less

realpath () { python -c "import os; print os.path.realpath('$1')"; }

source "$HOME/dotfiles/git-completion.bash"
source "$HOME/dotfiles/git-prompt.sh"
