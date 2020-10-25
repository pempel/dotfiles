#!/bin/bash


brew bundle install --no-lock


if [ ! -s $HOME/.nvm/nvm.sh ]; then
  echo "=> Installing nvm"
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.36.0/install.sh | bash
  echo "🚀 nvm"
fi


##########################
echo "=> Configuring zsh"
##########################

rm "$HOME/.zshrc" 2> /dev/null
stow zsh
echo "🚀 .zshrc"

if [ -d "$HOME/.zsh" ]; then
  echo "=> Removing $HOME/.zsh"
  rm -rf "$HOME/.zsh"
fi

mkdir $HOME/.zsh
git clone https://github.com/sindresorhus/pure.git "$HOME/.zsh/pure"
echo "🚀 zsh prompt"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$HOME/.zsh/zsh-syntax-highlighting"
echo "🚀 zsh syntax highlighting"
git clone https://github.com/zsh-users/zsh-autosuggestions.git "$HOME/.zsh/zsh-autosuggestions"
echo "🚀 zsh autosuggestions"


###########################
echo "=> Configuring tmux"
###########################

rm "$HOME/.tmux.conf" 2> /dev/null
stow tmux
echo "🚀 .tmux.conf"

if [ -d "$HOME/.tmux" ]; then
  echo "=> Removing $HOME/.tmux"
  rm -rf "$HOME/.tmux"
fi

mkdir $HOME/.tmux
git clone https://github.com/challenger-deep-theme/tmux.git "$HOME/.tmux/challenger-deep"
echo "🚀 tmux theme"


##########################
echo "=> Configuring vim"
##########################

rm "$HOME/.vimrc" 2> /dev/null
stow vim
echo "🚀 .vimrc"


###########################
echo "=> Configuring skhd"
###########################

rm "$HOME/.skhdrc" 2> /dev/null
stow skhd
brew services restart skhd
echo "🚀 .skhdrc"


################################
echo "=> Configuring alacritty"
################################

rm "$HOME/.alacritty.yml" 2> /dev/null
stow alacritty
echo "🚀 .alacritty.yml"

