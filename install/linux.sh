#!/bin/bash -x

tools=(base git guake vim zsh docker asdf)

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

  ( ./base.sh install_zsh )
  sudo mv /etc/pam.d/chsh.bak /etc/pam.d/chsh
}

install_vim() {
  sudo apt-get -y install vim
  ( ./base.sh install_vim )
}

install_docker() {
  sudo apt -y install apt-transport-https ca-certificates curl software-properties-common
  curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
  sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
  sudo apt update
  apt-cache policy docker-ce
  sudo apt -y install docker-ce
  sudo usermod -aG docker ${USER}
}

install_asdf() {
  sudo apt -y install automake autoconf libreadline-dev libncurses-dev libssl-dev libyaml-dev libxslt-dev libffi-dev libtool unixodbc-dev
  ( ./base.sh install_asdf )
}
