#! /bin/bash
#
rm ~/.Xresources -f

rm -r ~/.config/alacritty -f
ln -s ~/Projects/my_i3_rice/dotfiles/alacritty ~/.config/alacritty

rm -r ~/.config/i3 -f
ln -s ~/Projects/my_i3_rice/dotfiles/i3 ~/.config/i3

rm -r ~/.config/nvim -f
ln -s ~/Projects/my_i3_rice/dotfiles/nvim ~/.config/nvim

rm -r ~/.config/polybar -f
ln -s ~/Projects/my_i3_rice/dotfiles/polybar ~/.config/polybar

rm -r ~/.Xresources.d -f
ln -s ~/Projects/my_i3_rice/dotfiles/Xresources.d ~/.Xresources.d

rm -r ~/.Xresources -f
ln -s ~/Projects/my_i3_rice/dotfiles/Xresources ~/.Xresources 

rm -r ~/.config/picom -f
ln -s ~/Projects/my_i3_rice/dotfiles/picom ~/.config/picom

rm -r ~/.config/ranger -f
ln -s ~/Projects/my_i3_rice/dotfiles/ranger ~/.config/ranger

rm -r ~/.config/lf -f
ln -s ~/Projects/my_i3_rice/dotfiles/lf ~/.config/lf