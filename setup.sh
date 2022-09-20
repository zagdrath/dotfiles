#!/bin/bash

# Install dependencies
sudo apt install git
sudo apt install neovim
sudo apt install fonts-powerline

# Copy dotfiles
cp -a $HOME/dotfiles/. $HOME

# Install nerd fonts
git clone --depth 1 https://github.com/ryanoasis/nerd-fonts.git
cd ~/dotfiles/nerd-fonts | ./install.sh
