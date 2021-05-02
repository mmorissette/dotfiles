#!/usr/bin/env bash


ln -sf `pwd`/zshrc ~/.zshrc
ln -sf `pwd`/gitignore ~/.gitignore
ln -sf `pwd`/gitconfig ~/.gitconfig

if [ -d ~/.oh-my-zsh ] 
then
  echo "✅ oh-my-zsh already installed, skipping"
else
  sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi
