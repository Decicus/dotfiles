#!/bin/bash

# This script already assumes `zsh` and `git` are both already installed
# via the initial setup (I always do this), so really all that happens here
# Is the cloning and installation of `oh-my-zsh` and `.zshrc`.

# Get directory of bootstrap script + .zshrc.
ZSH_CONFDIR=$(dirname "$0")

# Run oh-my-zsh installer
git clone https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh;

ZSH_CONF="${HOME}/.zshrc";

# Save the current .zshrc file to a backup file.
# but check if it exists first.
if [[ -f "${ZSH_CONF}" ]]; then
    mv "${ZSH_CONF}" "${HOME}/.zshrc.backup";
fi

# Copy the ZSH config to the home directory.
cp "${ZSH_CONFDIR}/.zshrc" "${ZSH_CONF}";

# Check if .zshrc.local exists, if not, create it
if [[ ! -f "${HOME}/.zshrc.local" ]]; then
    touch "${HOME}/.zshrc.local";
fi

# Prompt the user to change the shell.
chsh -s $(which zsh);