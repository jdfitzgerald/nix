
set -o vi

OS="unknown"
case $OSTYPE in 
	darwin*) OS='osx'
		;; 
	linux-gnu) OS='linux'
		;; 
esac

if [ $OS == 'linux' ]; then
	A="\[\033[1;35m\]"
	B="\[\033[0;33m\]"
	C="\[\033[0;36m\]"
else
	A="\[\033[1;32m\]"
	B="\[\033[0;33m\]"
	C="\[\033[0;36m\]"
fi

X="\[\033[0m\]"
PS1="$B[$A\u"$B"@"$A"\h$B:$A\W$C \t$B]⚡$X "

export VISUAL=vi

which brew > /dev/null
if [ $? -eq 0 ];  then
	if [ -f $(brew --prefix)/etc/bash_completion ]; then
		. $(brew --prefix)/etc/bash_completion
	fi
fi


[[ -f $HOME/.variables.sh ]] && source $HOME/.variables.sh


export HISTSIZE=10000
export HISTFILESIZE=10000

# Avoid duplicates
export HISTCONTROL=ignoredups:erasedups  
shopt -s histappend
export PATH=/Users/jd/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/jd/nix/useful_scripts
