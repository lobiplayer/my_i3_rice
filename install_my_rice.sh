#! /bin/bash

####################### INSTALLATIONS ###################################

# dnf update
sudo dnf update -y

# Install Git
sudo dnf install git -y

# Install pip
sudo dnf install pip -y

# Install Polybar
sudo dnf install polybar -y

#Install needed fonts for Polybar
sudo dnf install jetbrains-mono-nl-fonts -y
#dnf copr enable peterwu/iosevka -y
#dnf install iosevka-term-fonts.noarchi -y
mkdir -p ~/.local/share/fonts/
wget -O https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Iosevka/Regular/complete/Iosevka%20Nerd%20Font%20Complete.ttf -P /home/rmohan/.local/share/fonts/
fc-cache -f -v

# Install i3-gaps
sudo dnf install i3-gaps -y --allowerasing

# Install neovim
sudo dnf install neovim python3-neovim -y
# Install vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'


# Set neovim als default editor for user
if grep -q "export EDITOR=nvim" "/home/rmohan/.bash_profile"; then 
    echo "Exists" 
else 
    echo "Does not exist"
    echo export EDITOR="nvim" >>  ~/.bash_profile
fi

# Install Picom
sudo dnf install picom -y

# Install Rofi
sudo dnf install rofi -y

# Install Fish
sudo dnf install fish -y
sudo dnf install util-linux-user -y
sudo chsh -s /usr/bin/fish
sudo chsh -s /usr/bin/fish rmohan


# Install Alacritty
sudo dnf install alacritty -y
# Install completions for fish
#mkdir -p $fish_complete_path[1]
#cp extra/completions/alacritty.fish $fish_complete_path[1]/alacritty.fish

# Install PyWal and run theme
sudo pip3 install pywal
wal --theme base16-unikitty

# Install feh (for wallpapers)
sudo dnf install feh -y

# Install Qutebrowser

sudo dnf install qutebrowser -y

# Install ranger
sudo dnf install ranger -y

# Make ~/.config links
sh ./configlinks.sh

# Install and run OhMyFish

curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish
