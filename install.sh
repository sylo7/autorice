#!/bin/sh

PACMAN='sudo pacman -S'
YAY='yay -S'
LINKHERE="$PWD"

# This needs to be run from the directory that contains it to properly link the files.
if ! [ -f "$PWD"/install.sh ]; then
    echo 'Must run in the directory of this script!'
    exit
fi

$PACMAN zsh alsa-utils bat xfce4 xfce4-goodies diff-so-fancy \
        mpv neofetch intel-ucode nvidia cpupower mesa acpi \
        noto-fonts noto-fonts-cjk noto-fonts-emoji picom ripgrep  \
        xorg-server xorg-xinit xorg-xprop xorg-xrandr xorg-xsetroot \
        
    
# Make the needed directories for this script to succeed.
mkdir -p "$HOME"/.config/nnn/plugins "$HOME"/.local/share "$HOME"/.icons/default

# Put the dotfiles where they belong
ln -sf "$LINKHERE"/home/.* "$HOME"
ln -sf "$LINKHERE"/config/* "$HOME"/.config/

# Default application settings (xdg-open pdfs and images)
ln -s "$LINKHERE"/local/share/applications "$HOME"/.local/share

# Set the default mouse cursor
ln -s "$LINKHERE"/other/index.theme "$HOME"/.icons/default

# Install nnn plugins
curl -Ls https://raw.githubusercontent.com/jarun/nnn/master/plugins/getplugs | sh

# Install vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
