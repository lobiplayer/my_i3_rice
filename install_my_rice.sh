#! /bin/bash

####################### INSTALLATIONS ###################################

# dnf update
dnf update -y

# Install Git
dnf install git -y

# Install pip
dnf install pip -y

# Install Polybar
dnf install polybar -y

#Install needed fonts for Polybar
dnf install jetbrains-mono-nl-fonts -y
#dnf copr enable peterwu/iosevka -y
#dnf install iosevka-term-fonts.noarchi -y
mkdir -p /home/rmohan/.local/share/fonts/
wget -O https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Iosevka/Regular/complete/Iosevka%20Nerd%20Font%20Complete.ttf -P /home/rmohan/.local/share/fonts/
fc-cache -f -v

# Install i3-gaps
dnf install i3-gaps -y --allowerasing

# Install neovim
dnf install neovim python3-neovim -y

# Set neovim als default editor for user
if grep -q "export EDITOR=nvim" "/home/rmohan/.bash_profile"; then 
    echo "Exists" 
else 
    echo "Does not exist"
    echo export EDITOR="nvim" >>  /home/rmohan/.bash_profile
fi

# Install Picom
dnf install picom -y

# Install Fish
dnf install fish -y
dnf install util-linux-user -y
chsh -s /usr/bin/fish
chsh -s /usr/bin/fish rmohan


# Install Alacritty
dnf install alacritty -y
# Install completions for fish
#mkdir -p $fish_complete_path[1]
#cp extra/completions/alacritty.fish $fish_complete_path[1]/alacritty.fish

# Install PyWal
pip3 install pywal

# Install feh (for wallpapers)
dnf install feh -y

# Install Qutebrowser

dnf install qutebrowser -y

# Install ranger
dnf install ranger -y

# Install and run OhMyFish

curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish
