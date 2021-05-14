#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

ln -sf ${DIR}/zshrc ~/.zshrc
ln -sf ${DIR}/gitignore ~/.gitignore
ln -sf ${DIR}/gitconfig ~/.gitconfig
ln -sf ${DIR}/vimrc ~/.vimrc
ln -sf ${DIR}/vim ~/.vim
echo "✅ linked config files"

if [ -d ~/.oh-my-zsh ] 
then
  echo "✅ oh-my-zsh already installed, skipping"
else
  sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

if [ -x "$(command -v code)" ]; then
  <${DIR}/vscode-extensions.txt xargs -n 1 code --install-extension
  echo "✅ Installed VSCode extensions"
fi

if [ -f ~/Library/Application\ Support/Code/User/settings.json ]; then
  ln -sf ${DIR}/vscode-settings.json ~/Library/Application\ Support/Code/User/settings.json
  echo "✅ Linked VSCode settings"
fi
