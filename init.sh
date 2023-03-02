#!/bin/bash

echo "Checking if stow is installed"
if ! command -v stow &> /dev/null
then
    echo "Installing gnu stow"
    sudo apt update
    sudo apt install stow
else
    echo "stow is installed"
    echo
fi

for dir in */; do
    echo "stow $dir"
    stow $dir
done
