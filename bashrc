#vi editing mode
set -o vi 

export PATH=~/bin:$PATH

# I inlined the following function into my PS1 so it would still work if I switch users, I was getting errors before
#parse_git_branch() {
#	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
#}
#export PS1="\[\033[00m\]\u@\h:\W\[\033[31m\]\$(parse_git_branch)\[\033[00m\]$\[\033[00m\] "

export PS1="\[\033[00m\]\u@\h:\W\[\033[31m\]\$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/')\[\033[00m\]$\[\033[00m\] "

#Use less as pager
PAGER=less
