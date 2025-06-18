export ZSH="$HOME/.oh-my-zsh"
# ZSH_THEME="" # fwalch, bureau, kardan, minimal, sammy

unsetopt autocd
setopt inc_append_history_time

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
eval "$(starship init zsh)"
source $ZSH/oh-my-zsh.sh
source <(fzf --zsh)

source ~/.dotfiles/.zshprivate
