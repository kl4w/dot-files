#!/bin/bash

zsh() {
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
}

vim() {
  cp -R $DIR/../files/.vim* $HOME/
}

eval $@
