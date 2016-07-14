# This is a hack of the theme loading logic from oh-my-zsh. I just prefer to
# extract what is most useful to me and leave out the rest.

# Define the theme to load
ZSH_THEME="powerlevel9k/powerlevel9k"

# powerlevel9k theme options

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(history status vi_mode)

# Load the theme defined above
source "$HOME/.dotfiles/omz-themes/$ZSH_THEME.zsh-theme"
