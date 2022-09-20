#!/bin/bash

# Install dependencies
sudo apt install git
sudo apt install neovim
sudo apt install fonts-powerline

# Copy dotfiles
sudo cp -a $HOME/dotfiles/.config/* $HOME

# Install vim plug
curl -fLo $HOME/.config/nvim/site/autoload --create-dirs \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install nerd fonts
git clone --depth 1 https://github.com/ryanoasis/nerd-fonts.git
cd $HOME/dotfiles/nerd-fonts
./install.sh

# Clean up files
sudo rm -rf $HOME/dotfiles
