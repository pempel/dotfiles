# Let files beginning with a . be matched without explicitly specifying the dot
setopt globdots

# Unbind \C-s and \C-q
setopt noflowcontrol

# If a new command line being added to the history list duplicates an older
# one, the older command is removed from the list
setopt HIST_IGNORE_ALL_DUPS

export PATH="./node_modules/.bin:$HOME/.local/bin:/opt/homebrew/bin:/opt/homebrew/sbin:$PATH"
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export XDG_CONFIG_HOME="$HOME/.config"
export PROJECTS="$HOME/Projects"

export ASDF_DATA_DIR=$HOME/.config/asdf
[ -d $ASDF_DATA_DIR ] && source $(brew --prefix asdf)/libexec/asdf.sh

alias ..='cd ..'
alias ...='cd ../..'
alias mkdir='mkdir -pv'
alias c='clear'
alias g='git'
alias v='nvim'
alias t='tmux'
alias ls='exa -al --color=always --group-directories-first --classify'

# Enable command completion
autoload -Uz compinit
compinit
zstyle ':completion:*' menu yes select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zmodload zsh/complist
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history

# Enable vi mode
bindkey -v
bindkey '^?' backward-delete-char
export KEYTIMEOUT=1

# Set the prompt
# https://github.com/sindresorhus/pure
if [ -d ~/.zsh/pure ]; then
  fpath+=~/.zsh/pure
  autoload -U promptinit
  promptinit
  prompt pure
fi

# Show the greeting message
clear
[ -z $TMUX ] && cowsay -s 'Happy coding!'

# Load fzf bindings & completions
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Enable fish-like syntax highlighting for zsh
# https://github.com/zsh-users/zsh-syntax-highlighting
if [ -d ~/.zsh/zsh-syntax-highlighting ]; then
  source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

# Enable fish-like autosuggestions for zsh
# https://github.com/zsh-users/zsh-autosuggestions
if [ -d ~/.zsh/zsh-autosuggestions ]; then
  source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
  bindkey '^ ' autosuggest-accept
fi

[ -f ~/.local/bin/tmux-projects ] && bindkey -s '^j' 'tmux-projects^M'

[ -f ~/.zsh/extras.sh ] && source ~/.zsh/extras.sh
