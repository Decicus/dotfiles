export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="agnoster"
HYPHEN_INSENSITIVE="true"

plugins=(
    composer
    docker
    docker-compose
    git
    github
    laravel
    node
    nvm
    screen
)

source $ZSH/oh-my-zsh.sh
export PATH=$PATH:$HOME/.bin

# Override Agnoster's default prompt_context to prepend time
prompt_context() {
    prompt_segment green black "%D{%T}"

    if [[ "$USERNAME" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
        prompt_segment black default "%(!.%{%F{yellow}%}.)%n@%m"
    fi
}

# Aliases
command -v batcat >/dev/null 2>&1 && alias cat="batcat -pp"

## Docker / Podman
alias dc="docker compose";

# Check if Podman is installed instead of Docker and alias accordingly
if command -v podman >/dev/null 2>&1; then
    alias docker="podman";

    alias dc="podman compose";
fi

alias sauce="source ~/.zshrc";

# Load host-specific configuration, aliases etc.
[ -f ~/.zshrc.local ] && source ~/.zshrc.local