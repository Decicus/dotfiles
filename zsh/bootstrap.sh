#!/bin/sh

# Get directory of bootstrap script + .zshrc.
ZSH_CONFDIR=$(dirname "$0")

# Run oh-my-zsh installer
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)";

# Save the current .zshrc file (on host) to a backup file.
mv "${HOME}/.zshrc" "${HOME}/.zshrc.backup";

# Copy the ZSH config to the home directory.
cp "${ZSH_CONFDIR}/.zshrc" "${HOME}/.zshrc";