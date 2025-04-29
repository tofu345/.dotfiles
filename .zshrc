# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# fwalch, bureau, kardan, minimal, sammy
ZSH_THEME=""

eval "$(starship init zsh)"

plugins=(git)

source $ZSH/oh-my-zsh.sh

unsetopt autocd
setopt inc_append_history_time

PATH="$PATH:/home/tofs/.local/bin:/home/tofs/.dotfiles/bin"

PATH="$PATH:/usr/local/go/bin:/home/tofs/go/bin:$GOPATH/bin"

export EDITOR='nvim'

source ~/.dotfiles/.zshprivate

# - Makes zsh start very very slow
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

[ -f "/home/tofs/.ghcup/env" ] && . "/home/tofs/.ghcup/env" # ghcup-env
