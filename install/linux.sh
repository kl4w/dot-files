#!/bin/bash -x

tools=(base git guake vim zsh)

install_base() {
  sudo apt-get update
  sudo apt-get install -y curl
}

install_git() {
  sudo apt-get install -y git-all
}

install_guake() {
  sudo apt-get -y install guake
}

install_zsh() {
  sudo apt-get -y install zsh

  # https://github.com/robbyrussell/oh-my-zsh/issues/1224#issuecomment-31623113
  sudo sed -i.bak '/auth.*required.*pam_shells.so/s/^/#/' /etc/pam.d/chsh

  ( ./base.sh zsh )
  sudo mv /etc/pam.d/chsh.bak /etc/pam.d/chsh
}

install_vim() {
  sudo apt-get -y install vim
  ( ./base.sh vim )
}
