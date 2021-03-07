export BASH_SILENCE_DEPRECATION_WARNING=1

# z configuration
. "/usr/local/etc/profile.d/z.sh"

# bash completion
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"


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