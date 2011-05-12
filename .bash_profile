# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

alias grep='grep --color=auto'

PATH=$PATH:$HOME/bin
CVSROOT=:ext:josh.j@wd-56.white-directory.com:/usr/isdev/cvs
PROMPT_COMMAND='echo -ne "fuckx\033]0;${USER}@${HOSTNAME%%.*}:${PWD/$HOME/~}\007"'
PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \w \$\[\033[00m\] '

export PATH CVSROOT
