#!/bin/sh

PACMAN='sudo pacman -S'

LINKHERE="$PWD"

# This needs to be run from the directory that contains it to properly link the files.
if ! [ -f "$PWD"/install.sh ]; then
    echo 'Must run in the directory of this script!'
    exit
fi

$PACMAN zsh alsa-utils bat diff-so-fancy git \
        mpv neofetch intel-ucode nvidia cpupower mesa acpi libreoffice-still \
        noto-fonts noto-fonts-cjk noto-fonts-emoji picom ripgrep vim flameshot \
        xorg-server xorg-xinit xorg-xprop xorg-xrandr xorg-xsetroot htop gparted \
        nomacs celluloid albert qbittorrent nvidia-utils flatpak firefox \
        pulseaudio ffmpeg gstreamer gst-libav gst-plugins-good gst-plugins-base \
        flac a52dec faac faad2 flac jasper lame libdca libdv libmad libmpeg2 \
        libtheora libvorbis libxv wavpack x264 xvidcore \
        jasper lame libdca libdv libmad  opus tor tor-browser-launcher curl\
        youtube-dl youtube-viewer wget gnome-boxes neofetch cups cups-pdf\
        acpilight bluez bluez-utils blueman acpid systemd-ui


