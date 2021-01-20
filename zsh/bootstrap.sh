#!/bin/sh

# This script already assumes `zsh` and `git` are both already installed
# via the initial setup (I always do this), so really all that happens here
# Is the cloning and installation of `oh-my-zsh` and `.zshrc`.

# Get directory of bootstrap script + .zshrc.
ZSH_CONFDIR=$(dirname "$0")

# Run oh-my-zsh installer
git clone https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh;

# Save the current .zshrc file (on host) to a backup file.
mv "${HOME}/.zshrc" "${HOME}/.zshrc.backup";

# Copy the ZSH config to the home directory.
cp "${ZSH_CONFDIR}/.zshrc" "${HOME}/.zshrc";

# Prompt the user to change the shell.
chsh -s $(which zsh);