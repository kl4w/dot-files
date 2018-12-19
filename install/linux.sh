#!/bin/bash -x

install() {
  echo linux install
  sudo apt-get update
  base
  guake
  vim
  zsh
}

base() {
  sudo apt-get install -y git-core curl
}

guake() {
  echo installing guake...
  sudo apt-get -y install guake
  echo guake installed.
  echo
}

zsh() {
  echo installing zsh...
  sudo apt-get -y install zsh

  # https://github.com/robbyrussell/oh-my-zsh/issues/1224#issuecomment-31623113
  sudo sed -i.bak '/auth.*required.*pam_shells.so/s/^/#/' /etc/pam.d/chsh

  ( ./base.sh zsh )
  sudo mv /etc/pam.d/chsh.bak /etc/pam.d/chsh
  echo zsh installed.
  echo
}

vim() {
  echo installing vim...
  sudo apt-get -y install vim
  ( ./base.sh vim )
  echo vim installed.
  echo
}

eval $@
