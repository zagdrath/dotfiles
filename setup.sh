#!/bin/bash

# Install dependencies
apt install git
apt install neovim
apt install fonts-powerline

# Copy dotfiles
cp -a $HOME/dotfiles/.config/* $HOME

# Install nerd fonts
git clone --depth 1 https://github.com/ryanoasis/nerd-fonts.git
cd $HOME/dotfiles/nerd-fonts
./install.sh

# Clean up files
rm -rf $HOME/dotfiles
