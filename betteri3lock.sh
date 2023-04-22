sudo dnf remove i3-lock -y

sudo dnf install -y autoconf automake cairo-devel fontconfig gcc libev-devel libjpeg-turbo-devel libXinerama libxkbcommon-devel libxkbcommon-x11-devel libXrandr pam-devel pkgconf xcb-util-image-devel xcb-util-xrm-devel -y

sudo dnf copr enable tokariew/i3lock-color -y
sudo dnf install i3lock-color -y

sudo dnf copr enable balamurali27/betterlockscreen -y
sudo dnf install betterlockscreen -y