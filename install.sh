#!/bin/bash

ln -sf $PWD/nvim ~/.config/nvim

# nvim '+PlugInstall | qa'

ln -s $PWD/zsh/.zshrc ~/.zshrc

git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting

