# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin
GOPATH=$HOME/john-dev/mapsandbox
WORDSSRC=$HOME/john-dev/words/src/github.com/FajitaMane
MAPSSRC=$HOME/john-dev/mapsandbox/src/github.com/FajitaMane/mapsandbox/api

# Set locale
export LC_ALL=C

export PATH
export GOPATH
export WORDSSRC
