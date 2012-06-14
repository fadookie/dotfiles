#vi editing mode
set -o vi 

export PATH="~/bin:$PATH"
export VISUAL="/usr/local/bin/vim"

parse_git_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

export PS1="\[\033[00m\]\h:\w\[\033[31m\]\$(parse_git_branch)\[\033[00m\]$\[\033[00m\] "

#Use less as pager
PAGER=less
