#!/bin/sh

# Get directory of bootstrap script + .zshrc.
ZSH_CONFDIR=$(dirname "$0")

sudo apt install zsh git
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Save the current .zshrc file (on host) to a backup file.
mv $HOME/.zshrc $HOME/.zshrc.backup

# Hardlink the dotfiles .zshrc to home directory of user.
ln $ZSH_CONFDIR/.zshrc $HOME/.zshrc