neofetch

# If a new command line being added to the history list duplicates an older one,
# the older command is removed from the list
setopt HIST_IGNORE_ALL_DUPS

# Enable command completion
autoload -U compinit && compinit

# Set a custom prompt
fpath+=~/.zsh/pure
autoload -U promptinit; promptinit
prompt pure

export PATH="./node_modules/.bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export FZF_DEFAULT_COMMAND='rg --files --no-ignore-vcs --hidden'

alias ..='cd ..'
alias ...='cd ../..'
alias c='clear'
alias v='vim'
alias g='git'
alias ls='exa -al --color=always --group-directories-first --classify'
alias mkdir='mkdir -pv'
alias config='git --git-dir=$HOME/.dotfiles --work-tree=$HOME'

source ~/.fzf.zsh

# Fish-like syntax highlighting for zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Fish-like autosuggestions for zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
bindkey '^ ' autosuggest-accept

