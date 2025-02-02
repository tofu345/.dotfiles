PATH="$PATH:/home/tofs/.dotfiles/bin"

PATH="$PATH:/usr/local/go/bin:/home/tofs/go/bin:$GOPATH/bin"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# using starship https://starship.rs/
# fwalch, bureau, kardan
# ZSH_THEME="fwalch"

plugins=(git)

source $ZSH/oh-my-zsh.sh

export EDITOR='nvim'

unsetopt autocd

update-all () {
    sudo apt update && sudo apt upgrade;
    sudo snap refresh;
    brew update;
}

alias python="python3"
alias tma="tmux attach"
alias nv="nvim"
alias matlab="/usr/local/MATLAB/R2024b/bin/matlab -softwareopengl"
alias arduino2="/home/tofs/.local/bin/arduino2.3.3/arduino-ide"

# - Makes zsh start very very slow
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

eval "$(starship init zsh)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

[ -f "/home/tofs/.ghcup/env" ] && . "/home/tofs/.ghcup/env" # ghcup-env
