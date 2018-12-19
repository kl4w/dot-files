#!/bin/bash -x

tools=(homebrew git iterm2 vim zsh)

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
