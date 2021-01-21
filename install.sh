#!/bin/sh

PACMAN='sudo pacman -S'

LINKHERE="$PWD"

# This needs to be run from the directory that contains it to properly link the files.
if ! [ -f "$PWD"/install.sh ]; then
    echo 'Must run in the directory of this script!'
    exit
fi

$PACMAN zsh emacs alsa-utils bat xfce4 xfce4-goodies diff-so-fancy git \
        mpv neofetch intel-ucode nvidia cpupower mesa acpi libreoffice-still \
        noto-fonts noto-fonts-cjk noto-fonts-emoji picom ripgrep vim flameshot \
        xorg-server xorg-xinit xorg-xprop xorg-xrandr xorg-xsetroot htop gparted \
        nomacs celluloid albert qbittorrent nvidia-utils flatpak firefox \
        pulseaudio ffmpeg gstreamer gst-libav gst-plugins-good gst-plugins-base \
        flac a52dec faac faad2 flac jasper lame libdca libdv libmad libmpeg2 \
        libtheora libvorbis libxv wavpack x264 xvidcore gstreamer0.10-plugins \
        jasper lame libdca libdv libmad  opus tor tor-browser-launcher curl\
        youtube-dl youtube-viewer wget gnome-boxes neofetch cups cups-pdf\
        acpilight bluez bluez-utils blueman acpid stystemd-ui


# Make the needed directories for this script to succeed.
mkdir -p "$HOME"/.local/share "$HOME"/.icons/default

# Put the dotfiles where they belong
ln -sf "$LINKHERE"/home/.* "$HOME"
ln -sf "$LINKHERE"/config/* "$HOME"/.config/

# Default application settings (xdg-open pdfs and images)
ln -s "$LINKHERE"/local/share/applications "$HOME"/.local/share

# Set the default mouse cursor
ln -s "$LINKHERE"/other/index.theme "$HOME"/.icons/default
