#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

install() {
  echo osx install
  homebrew
  iterm2
  zsh
}

homebrew() {
  echo installing brew...
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  brew tap caskroom/cask
  echo brew installed!
  echo
}

iterm2() {
  echo installing iterm2...
  brew cask install iterm2
  echo iterm2 installed.
  echo
}

zsh() {
  echo install oh-my-zsh...
  brew install zsh
  . $DIR/base.sh zsh
  echo zsh installed.
  echo
}

vim() {
  echo installing vim...
  brew install vim
  . $DIR/base.sh vim
  echo vim installed.
  echo
}

eval $@
