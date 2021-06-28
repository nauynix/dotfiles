
# Mac
if [ "$(uname 2> /dev/null)" != "Linux" ]; then 
    export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

    eval "$(direnv hook zsh)"
    nvm use 12.18.0
    export ZSH="/Users/xinyuan/.oh-my-zsh"
# Linux
else
    typeset -U path
    export PATH=/usr/local/sbin:/usr/local/bin:/usr/bin
    path+=$HOME/Documents
    path+=$HOME/.local/.bin
    path+=$HOME/.gtd
    path+=$HOME/Development/flutter/bin
    export ZSH="/home/xinyuan/.oh-my-zsh"
    alias gt="sh ~/.scripts/generate_template.sh"
fi

#
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


ZSH_THEME="powerlevel10k/powerlevel10k"

HYPHEN_INSENSITIVE="true"
typeset -g POWERLEVEL9K_INSTANT_PROMPT=off

# Alias
alias fd=fdfind
alias v='f -e vim' # quick opening files with vim
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

# Tmux
alias t="tmux"
alias ta="t a -t"
alias tls="t ls"
alias tn="t new -t"

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

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

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
