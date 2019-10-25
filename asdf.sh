#! /bin/bash

function install-latest() {
    asdf plugin-add $1 $2
    local latest=$(asdf list-all $1 | sed '/.*-.*/d' | tail -n 1)
    asdf install $1 $latest
    asdf global $1 $latest
}

install-latest kubectl https://github.com/Banno/asdf-kubectl.git
install-latest helm https://github.com/Antiarchitect/asdf-helm
install-latest golang https://github.com/kennyp/asdf-golang
install-latest node https://github.com/asdf-vm/asdf-nodejs
install-latest python https://github.com/danhper/asdf-python
