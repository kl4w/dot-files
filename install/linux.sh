#!/bin/bash

install() {
  echo linux install
  sudo apt-get update
  guake
}

guake() {
  sudo apt-get -y install guake
}

install
