#! /bin/bash

####################### INSTALLATIONS ###################################

# dnf update
sudo dnf update -y

# Install nvidea drivers
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm -y
sudo dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y
sudo dnf install akmod-nvidia -y

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
wget https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Iosevka/Regular/complete/Iosevka%20Nerd%20Font%20Complete.ttf -P ~/.local/share/fonts/
fc-cache -f -v

# Install i3-gaps
sudo dnf install i3-gaps -y --allowerasing

# Install neovim (ripgrep needed for telescope plugin)
sudo dnf install neovim python3-neovim -y
sudo dnf install ripgrep

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

# Install Alacritty
sudo dnf install alacritty -y

# Install Kitty
sudo dnf install kitty -y

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
# sudo dnf install ranger -y

# Install lf (better than ranger)
sudo dnf copr enable pennbauman/ports -y
sudo dnf install lf -y
sudo chmod +x ~/.config/lf/lf_kitty_{clean,preview}

# Install Xclip and Maim
sudo dnf install maim -y
sudo dnf install xclip -y

sudo dnf install tmux -y

################### FISH #############################

# Install Fish
sudo dnf install fish -y
sudo dnf install util-linux-user -y
sudo chsh -s /usr/bin/fish
sudo chsh -s /usr/bin/fish rmohan

# Install Fisher for installing Fish plugins
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher

# Intall fzf
sudo dnf install d-find -y
sudo dnf install fzf -y
sudo dnf install bat -y
fisher install PatrickF1/fzf.fish

# Install autopair
fisher install jorgebucaran/autopair.fish

# Install and run OhMyFish
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish

# Install fish-ssh-agent
fisher install danhper/fish-ssh-agent


##################### Make Configlinks to ~/.config #####################

# Make ~/.config links
sh ./configlinks.sh

