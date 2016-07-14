# This is a hack of plugin loading logic from oh-my-zsh. I just prefer to
# extract what is most useful to me and leave out the rest.

# Define the plugins to load
plugins=(git osx python tmux vi-mode)

# Load all of the plugins that were defined above
for plugin ($plugins); do
  source $HOME/.dotfiles/omz-plugins/$plugin/$plugin.plugin.zsh
done
