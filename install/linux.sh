#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

install() {
  echo linux install
  sudo apt-get update
  guake
  zsh
  vim
}

guake() {
  echo installing guake...
  sudo apt-get -y install guake
  echo guake installed.
}

zsh() {
  echo installing zsh...
  sudo apt-get -y install git-core zsh
  . $DIR/base.sh zsh
  chsh -s $(which zsh)
  echo zsh installed.
  echo
}

vim() {
  echo install vim...
  sudo apt-get install -y vim
  . $DIR/base.sh vim
  echo vim installed.
  echo
}

eval $@
