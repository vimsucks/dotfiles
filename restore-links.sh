#!/bin/bash

ln -s ~/Dropbox/dotfiles/fish/config.fish ~/.config/fish/ --force
ln -s ~/Dropbox/dotfiles/i3/config ~/.config/i3/ --force
ln -s ~/Dropbox/dotfiles/i3/conkyrc ~/.config/i3/ --force
ln -s ~/Dropbox/dotfiles/nvim/init.vim ~/.config/nvim/ --force
ln -s ~/Dropbox/dotfiles/nvim/init.vim ~/.nvimrc --force
ln -s ~/Dropbox/dotfiles/rime/default.custom.yaml ~/.config/fcitx/rime/ --force
ln -s ~/Dropbox/dotfiles/tmux/.tmux.conf ~ --force
ln -s ~/Dropbox/dotfiles/vim/.vimrc ~/ --force
ln -s ~/Dropbox/dotfiles/dunst/.dunstrc ~/ --force
ln -s ~/Dropbox/dotfiles/YouCompleteMe/.ycm_extra_conf.py ~/ --force
ln -s ~/Dropbox/dotfiles/zsh/.zshrc ~ --force
ln -s ~/Dropbox/dotfiles/xorg/.Xresources ~ --force
echo "Restore soft links complete!"
