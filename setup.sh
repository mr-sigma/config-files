#!/bin/bash

# Remove predefined ones if needed
# Do this later

# Link files
ln -s $PWD/.vimrc ~/.vimrc
ln -s $PWD/.bashrc ~/.bashrc
ln -s $PWD/.tmux.conf ~/.tmux.conf

# Install Vim-Plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
