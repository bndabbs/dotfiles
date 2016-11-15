#!/bin/bash

for i in .vimrc .vim .dircolors;
do
  ln -s $PWD/$i $HOME/test/$i
done

if [ $OSTYPE == darwin* ]; then
  ln -s $PWD/.bashrc $HOME/test/.bash_profile
else
  ln -s $PWD/.bashrc $HOME/test/.bashrc
fi
