#! /bin/bash
#

rm -r ~/.config/alacritty -f
ln -s ~/Projects/my_i3_rice/dotfiles/alacritty ~/.config/alacritty

rm -r ~/.config/i3 -f
ln -s ~/Projects/my_i3_rice/dotfiles/i3 ~/.config/i3

rm -r ~/.config/nvim -f
ln -s ~/Projects/my_i3_rice/dotfiles/nvim ~/.config/nvim

rm -r ~/.config/polybar -f
ln -s ~/Projects/my_i3_rice/dotfiles/polybar ~/.config/polybar

ln -s ~/Projects/my_i3_rice/dotfiles/Xresources.d ~/.Xresources.d
ln -s ~/Projects/my_i3_rice/dotfiles/Xresources ~/.Xresources 
