#!/bin/bash

# Install dependencies
sudo apt install git
sudo apt install nvim
sudo apt install fonts-powerline

# Copy dotfiles
cp -a ~/dotfiles/. ~

# Install nerd fonts
git clone --depth 1 https://github.com/ryanoasis/nerd-fonts.git
cd ~/nerd-fonts | ./install.sh