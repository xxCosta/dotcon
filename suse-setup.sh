#!/bin/bash
sudo zypper install -y docker docker-compose git neovim
sudo zypper install -y  gcc clang  zig npm
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
git clone https://github.com/xxCosta/nvim.git ~/.config/nvim
wget https://raw.githubusercontent.com/xxCosta/dotcon/main/.bashrc
source .bashrc
