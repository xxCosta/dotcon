#!/bin/bash
sudo zypper update -y
sudo zypper install -y docker docker-compose git neovim gcc clang  zig npm tmux
sudo npm i -g bun n
git clone https://github.com/xxCosta/nvim.git ~/.config/nvim
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
wget https://raw.githubusercontent.com/xxCosta/dotcon/main/.bashrc -P ~
wget https://raw.githubusercontent.com/xxCosta/dotcon/main/.tmux.conf -P ~
wget https://raw.githubusercontent.com/xxCosta/dotcon/main/ssh-setup.sh -P ~
source ~/.bashrc
