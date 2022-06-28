[[ $- != *i* ]] && return # If not running interactively, don't do anything

stty -ixon # disable ctrl-s & ctrl-q

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# history option

HISTFILE=~/.config/zsh/.zsh_history
HISTSIZE=5000
SAVEHIST=5000
setopt inc_append_history

# autocomplete

autoload -Uz compinit
compinit

set -o vi # vi binding when esc pressed
bindkey "^?" backward-delete-char

# aliases

alias ls='ls --color=auto'
alias shutdown='shutdown now'
alias you-get='you-get -o ~/Downloads'
alias pip-up-all='pip list -o --format=freeze | grep -v '^\-e' | cut -d = -f 1 | xargs -n1 pip install -U'
alias docker='sudo docker'
alias pp='python -mjson.tool'

# sourcing plugins

source /usr/share/fzf/key-bindings.zsh # fzf keybind
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.

[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh
