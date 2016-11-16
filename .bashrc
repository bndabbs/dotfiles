# Add coreutils bin dir to path
if [ -d /usr/local/opt/coreutils/libexec ]
then
  export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
  export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
fi

# dircolors
if [ -e ~/.dircolors ]
then
  eval `dircolors -b ~/.dircolors`
fi

# Lock and Load a custom theme file
# location /.bash_it/themes/
export BASH_IT_THEME='slick'

# Set this to false to turn off version control status checking within the prompt for all themes
export SCM_CHECK=true

# Tab complete sudo commands
complete -cf sudo

# Load Bash It
export BASH_IT="$HOME/.bash_it"

if [ -e $BASH_IT/bash_it.sh ]
then
  source $BASH_IT/bash_it.sh
fi
