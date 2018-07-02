#! /bin/zsh

cd ~/.dotfiles
echo "pulling latest conffiles..."
git pull

cd ~
echo "deploying .zshrc ..."
if [ -f '.zshrc' ]; then
  rm .zshrc
fi
ln -s ~/.dotfiles/.zshrc
source ~/.zshrc

echo "deploying .vimrc ..."
if [ -f '.vimrc' ]; then
  rm .vimrc
fi
ln -s ~/.dotfiles/.vimrc

echo "deploying .vim/ ..."
if [ -d '.vim' ]; then
  rm -rf .vim
fi
ln -s ~/.dotfiles/.vim

echo "deploying .tmux.conf ..."
if [ -f '.tmux.conf' ]; then
  rm .tmux.conf
fi
ln -s ~/.dotfiles/.tmux.conf

echo "done."
