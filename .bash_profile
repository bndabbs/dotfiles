if [[ $OSTYPE == darwin* ]]; then
  . ~/.bash_darwin
fi

if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

# Source any local files
if [ -f ~/.bash_local ]; then
  . ~/.bash_local
fi
