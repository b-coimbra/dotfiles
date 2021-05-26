##!/usr/bin/env bash

# System
sudo pacman -S polybar pavucontrol pulseaudio snapd dunst flameshot picom rofi xclip unzip ntfs-3g

# Apps
sudo pacman -S feh sxiv megasync mpv qbittorrent ranger youtube-dl redshift vivaldi

# Apps - Snap
snapd install spotify discord

## Apps - PDF Viewer
sudo pacman -S zathura zathura-djvu zathura-pdf-mupdf

# Dev tools
sudo pacman -S git emacs fish zsh htop npm tmux imagemagick bat

## Dev tools - Vim
sudo pacman -S vim neovim antigen

## Dev tools - Programming languages
sudo pacman -S ruby python rust
