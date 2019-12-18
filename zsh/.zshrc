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