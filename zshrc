# Linux & Windows WSL
typeset -U path
export PATH=/usr/local/sbin:/usr/local/bin:/usr/bin
path+=$HOME/.local/.bin
path+=/mnt/c/Users/xinyuan/AppData/Local/Programs/Microsoft\ VS\ Code/bin
export ZSH="/home/xinyuan/.oh-my-zsh"

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

if [ "$(uname 2> /dev/null)" != "Linux" ]; then 
    emulate zsh -c "$(direnv hook zsh)"
fi
ZSH_THEME="powerlevel10k/powerlevel10k"

HYPHEN_INSENSITIVE="true"
typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet
# Hide user and hostname
POWERLEVEL9K_CONTEXT_TEMPLATE=""
# Show only folder
typeset -g POWERLEVEL9K_SHORTEN_STRATEGY=truncate_to_last
# My Windows home directory.
hash -d w=/mnt/c/Users/xinyuan


# Alias
alias fd=fdfind
alias v='f -e nvim' # quick opening files with vim
alias m='f -e mplayer' # quick opening files with mplayer
alias o='a -e xdg-open' # quick opening files with xdg-open
alias ll="ls -lh"
alias gs="git status"
alias gc="git commit"

alias mv="mv -i"
alias mkdir="mkdir -p"
alias df="df -h"

alias python="python3"
alias pdb="pdb3"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
HIST_STAMPS="ddmmyy"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

eval "$(fasd --init auto)"

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='mvim'
fi
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
