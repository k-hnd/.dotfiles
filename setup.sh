#! /bin/zsh

cd ~
if [ ! -d '.dotfiles' ]; then
  echo "cloning..."
  git clone https://github.com/k-hnd/.dotfiles
fi

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

echo "deploying Vundle.vim"
if [ ! -d '.vim/bundle/Vundle.vim' ]; then
  echo "cloning..."
  mkdir ~/.vim/bundle
  git clone https://github.com/VundleVim/Vundle.vim ~/.vim/bundle/Vundle.vim
fi

echo "deploying .tmux.conf ..."
if [ -f '.tmux.conf' ]; then
  rm .tmux.conf
fi
ln -s ~/.dotfiles/.tmux.conf

echo "deploying .gitconfig ..."
if [ -f '.gitconfig' ]; then
  rm .gitconfig
fi
ln -s ~/.dotfiles/.gitconfig

echo "done."
source ~/.zshrc
