#!/bin/bash

for i in .vimrc .vim .dircolors;
do
  ln --symbolic --interactive $PWD/$i $HOME/$i
done

if [ $OSTYPE == darwin* ]; then
  ln --symbolic --interactive $PWD/.bashrc $HOME/.bash_profile
else
  ln --symbolic --interactive $PWD/.bashrc $HOME/.bashrc
fi
