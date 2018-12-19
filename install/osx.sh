#!/bin/bash -x

tools=(homebrew git iterm2 vim zsh docker)

install_homebrew() {
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  brew tap caskroom/cask
}

install_git() {
  brew install git
}

install_iterm2() {
  brew cask install iterm2
}

install_zsh() {
  brew install zsh
  ( ./base.sh zsh )
}

install_vim() {
  brew install vim
  ( ./base.sh vim )
}

install_docker() {
  test -f ~/Downloads/Docker.dmg || curl -l https://download.docker.com/mac/stable/Docker.dmg -o ~/Downloads/Docker.dmg
  sudo hdiutil attach ~/Downloads/Docker.dmg
  sudo cp -r /Volumes/Docker/Docker.app /Applications/
  sudo hdiutil detach /Volumes/Docker
}
