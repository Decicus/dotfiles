export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="agnoster"
HYPHEN_INSENSITIVE="true"

plugins=(
    composer
    docker
    git
    github
    laravel
    node
    nvm
    screen
)

source $ZSH/oh-my-zsh.sh

alias dc="docker-compose"
alias pvpn="sudo protonvpn-cli"

# Override Agnoster's default prompt_context to prepend time
prompt_context() {
    prompt_segment green black "%D{%T}"

    if [[ "$USERNAME" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
        prompt_segment black default "%(!.%{%F{yellow}%}.)%n@%m"
    fi
}