#!/bin/bash

brew 2> /dev/null

if [[ $? == 127 ]]; then
	echo "installing brew"
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
	echo "brew exists"
fi

brew install git
brew install macvim
