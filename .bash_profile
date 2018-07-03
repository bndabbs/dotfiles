if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

# Source any local files
if [ -f ~/.bash_local ]; then
    source ~/.bash_local
fi
