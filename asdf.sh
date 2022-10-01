#! /bin/bash

function install-latest() {
    asdf plugin add $1
    asdf install $1 latest
    asdf global $1 latest
}

install-latest Go
install-latest Node.js
install-latest Python

install-latest Kubectl
install-latest Helm
