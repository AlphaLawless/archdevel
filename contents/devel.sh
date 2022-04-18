#!/bin/bash
# Install asdf
git clone https://aur.archlinux.org/asdf-vm.git && cd asdf-vm && makepkg -si

echo ". /opt/asdf-vm/asdf.sh" >> ~/.bashrc

# Install Nvchad
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1
nvim +'hi NormalFloat guibg=#1e222a' +PackerSync
