#!/bin/bash
set -o nounset
set -o errext

function lnrc() {
    ln -vs "$(pwd)/$1" "$HOME/.$1"
}

lnrc bashrc
lnrc vimrc
lnrc gitconfig
