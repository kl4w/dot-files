#!/bin/bash -x

zsh() {
  sudo chsh -s $(which zsh) $USER
  curl -L -o zsh_install.sh https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh
  ( SHELL=$(which zsh) ./zsh_install.sh )
}

vim() {
  cp -R ../files/.vim* $HOME/
}

eval $@
