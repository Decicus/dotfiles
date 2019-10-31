#!/bin/sh

# Get directory of bootstrap script + .zshrc.
ZSH_CONFDIR=$(dirname "$0")

# Save the current .zshrc file (on host) to a backup file.
mv $HOME/.zshrc $HOME/.zshrc.backup

# Hardlink the dotfiles .zshrc to home directory of user.
ln $ZSH_CONFDIR/.zshrc $HOME/.zshrc