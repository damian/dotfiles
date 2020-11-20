export BASH_SILENCE_DEPRECATION_WARNING=1

# z configuration
if command -v brew >/dev/null 2>&1; then
	# Load rupa's z if installed
	[ -f $(brew --prefix)/etc/profile.d/z.sh ] && source $(brew --prefix)/etc/profile.d/z.sh
fi

# bash completion
if command -v brew >/dev/null 2>&1; then
  [ -f $(brew --prefix)/etc/profile.d/bash_completion.sh ] && source $(brew --prefix)/etc/profile.d/bash_completion.sh
fi

# Autocorrect typos in path names when using `cd`
shopt -s cdspell;

# Append to the Bash history file, rather than overwriting it
shopt -s histappend;

# Ensure any call to editor opens in VIM
export EDITOR=vim

# Jump to common directories
alias dev="cd ~/dev"

# HTTP server
alias server="python -m SimpleHTTPServer"

# Source any local aliases
if [ -f ~/.bash_aliases.local ]; then
  . ~/.bash_aliases.local
fi

# navigation
alias ll="ls -alp"
alias ..="cd .."
alias ...="cd ../.."

# Make a directory and move into it
function take() { mkdir $1; cd $1; }

# Reload aliases
alias reload="source ~/.bash_profile"

# Git
alias g="git"
alias gut="git"

# Bash colours
CYAN="\[\033[0;36m\]"
PURPLE="\[\033[0;35m\]"
WHITE="\[\033[0;37m\]"

# Custom prompt
GIT_PS1_SHOWDIRTYSTATE=true
export PS1="$CYAN\w $PURPLE\$(__git_ps1 \"(%s)\")$WHITE § "