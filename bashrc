#Source other configs
if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi

if [ -f ~/.bash_common ]; then
    source ~/.bash_common
fi

#These are standard settings I'd want on a desktop machine.

#I like putting my own scripts and tools in ~/bin, so it's on the top of my path:
export PATH=~/bin:$PATH

#Mac style bash prompt with display of the current git branch if you are in a git repo
export PS1="\[\033[00m\]\u@\h:\W\[\033[31m\]\$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/')\[\033[00m\]$\[\033[00m\] "

#Set default editor to Vim
export VISUAL='/usr/bin/vim'

#Default to showing colors in a bash terminal
export CLICOLOR=true 

#Tab-completion for git, you'll need a checkout of the git source for this to work.
source $HOME/Development/git/src/git/contrib/completion/git-completion.bash  #Remember to update this repo to the correct tag when upgrading git on this machine
