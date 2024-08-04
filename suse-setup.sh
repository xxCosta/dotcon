#!/bin/bash
sudo zypper install -y docker docker-compose git neovim gcc clang  zig npm tmux
git clone https://github.com/xxCosta/nvim.git ~/.config/nvim
wget https://raw.githubusercontent.com/xxCosta/dotcon/main/.bashrc -P ~
source ~/.bashrc
