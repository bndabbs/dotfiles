#!/bin/bash

params="-sf"

while getopts "vib" args; do
    case $args in
        v)
            params="$params -v"
            ;;
        i)
            params="$params -i"
            ;;
        b)
            params="$params -b"
            ;;
    esac
done

# Store where the script was called from so we can reference it later
script_home="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Update bash-it if it's already installed or download it if it's not
if [ -d $HOME/.bash_it ]; then
  cd $HOME/.bash_it
  git pull
else
  git clone --depth=1 https://github.com/Bash-it/bash-it.git $HOME/.bash_it
fi

# Add vim-plug if it doesn't already exist
if [ ! -f $HOME/.vim/autoload/plug.vim ]; then
    curl -fLo $HOME/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

# Add solarized colors for vim if not present
if [ ! -f $HOME/.vim/colors/solarized.vim ]; then
    curl -fLo $HOME/.vim/colors/solarized.vim --create-dirs \
    https://raw.githubusercontent.com/altercation/vim-colors-solarized/master/colors/solarized.vim
fi

# Symlink all of our dotfiles to the home directory
for i in .vimrc .dircolors;
do
  ln $params $script_home/$i $HOME/$i
done

# Adjust the .bashrc path if we're running on OSX
if [[ $OSTYPE == darwin* ]]; then
  ln $params $script_home/.bashrc $HOME/.bash_profile
else
  ln $params $script_home/.bashrc $HOME/.bashrc
fi
