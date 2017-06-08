# dotfiles

This is my personal collection of dotfile customizations.

Setup is simple. Just run `setup.sh` and it will symlink all of the dotfiles into your home directory. The symlink allows you to automatically receive any updates after running a `git pull` in the future.

## Mac Users
Certain things won't work as expected if you don't have coreutils installed. The easiest way to do this is with [homebrew](https://brew.sh/):
```
brew install coreutils
```
