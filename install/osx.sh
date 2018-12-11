#!/bin/bash

install() {
  echo osx install
  brew
  iterm2
  zsh
}

brew() {
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
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
  echo oh-my-zsh installed.
  echo
}

install
