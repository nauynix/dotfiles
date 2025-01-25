# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
HIST_STAMPS="ddmmyy"

# Which plugins would you like to load?
plugins=(git zsh-autosuggestions)

# Preferred editor for local and remote sessions
export EDITOR='nvim'

eval "$(oh-my-posh init zsh)"
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
