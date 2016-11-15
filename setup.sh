#!/bin/bash

# Store where the script was called from so we can reference it later
script_home="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Update bash-it if it's already installed or download it if it's not
if [ -d $HOME/.bash_it ]; then
  bash-it update
else
  git clone --depth=1 https://github.com/Bash-it/bash-it.git $HOME/.bash_it
fi

# Symlink all of our dotfiles to the home directory
for i in .vimrc .vim .dircolors;
do
  ln --symbolic --interactive $script_home/$i $HOME/$i
done

# Adjust the .bashrc path if we're running on OSX
if [[ $OSTYPE == darwin* ]]; then
  ln --symbolic --interactive $script_home/.bashrc $HOME/.bash_profile
else
  ln --symbolic --interactive $script_home/.bashrc $HOME/.bashrc
fi
