#!/bin/bash -x

install_zsh() {
  sudo chsh -s $(which zsh) $USER
  curl -L -o zsh_install.sh https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh
  sudo chmod 755 zsh_install.sh
  ( SHELL=$(which zsh) ./zsh_install.sh )
}

install_vim() {
  cp -R ../files/.vim* $HOME/
}

install_asdf() {
  git clone https://github.com/asdf-vm/asdf.git ~/.asdf
  pushd ~/.asdf
  git checkout v0.6.2
  popd
  #autoload -Uz compinit && compinit
  echo -e '\n. $HOME/.asdf/asdf.sh' >> ~/.zshrc
  echo -e '\n. $HOME/.asdf/completions/asdf.bash' >> ~/.zshrc
  . ~/.zshrc
  asdf plugin-add erlang https://github.com/asdf-vm/asdf-erlang.git
  asdf plugin-add elixir https://github.com/asdf-vm/asdf-elixir.git
  asdf plugin-add golang https://github.com/kennyp/asdf-golang.git
  asdf plugin-add gradle
  asdf plugin-add java
  asdf plugin-add maven
  asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git
  asdf plugin-add python https://github.com/danhper/asdf-python.git
  asdf plugin-add packer https://github.com/Banno/asdf-hashicorp.git
  asdf plugin-add terraform https://github.com/Banno/asdf-hashicorp.git
  asdf plugin-add ruby https://github.com/asdf-vm/asdf-ruby.git
}

eval $@
