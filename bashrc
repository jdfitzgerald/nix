export PATH=/Users/jd/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin

set -o vi

A="\[\033[1;32m\]"
B="\[\033[0;33m\]"
C="\[\033[0;36m\]"
X="\[\033[0m\]"
PS1="$B[$A\u"$B"@"$A"\h$B:$A\W$C \t$B]⚡$X "

export VISUAL=vi

which brew
if [ $? -eq 0 ];  then
	if [ -f $(brew --prefix)/etc/bash_completion ]; then
		. $(brew --prefix)/etc/bash_completion
	fi
fi


export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
