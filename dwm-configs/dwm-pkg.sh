#!/bin/sh
xbps-install -S xorg-minimal xrandr xprop xset xclip xsetroot xbacklight xwallpaper \
    base-devel libX11-devel libXft-devel libXinerama-devel \
    font-awesome font-firacode \
    arc-theme arc-icon-theme \
    firefox qutebrowser \
    nnn mpv yt-dlp aria2 nsxiv zathura zathura-pdf-mupdf \
    neovim fzf fd jq exa bat trash-cli man-db ImageMagick \
    udiskie dosfstools ntfs-3g \
    gvfs gvfs-mtp gvfs-smb gvfs-afc gvfs-gphoto2 \
    NetworkManager network-manager-applet \
    bluez libspa-bluetooth blueman \
    pipewire wireplumber alsa-utils pamixer \
    xdg-user-dirs starship neofetch htop \
    npm python python-pip
