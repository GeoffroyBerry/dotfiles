#!/bin/bash
# This script create links for each dotfile in the correct location
# so you only need to modify the ones contained here and don't have to
# move/copy everytime a change is made 
# existing destination files will be backup to avoid oopsies (see [filename].~[number]~)
SCRIPT_DIR=$(dirname $(realpath "$0"))

# 1st argument is filename in the script directory
# 2nd argument is destination file (wich will link to files placed here) in the home folder
dot_link () {
    mkdir -p $HOME/$(dirname "$2")
    ln -s --backup=numbered $SCRIPT_DIR/$1 $HOME/$2 
}

# using alphabetical order is cool :)
dot_link alacritty/alacritty.yml .config/alacritty/alacritty.yml 
dot_link alacritty/dracula.yml .config/alacritty/dracula.yml 
dot_link compton.conf .config/compton.conf 
dot_link fontconfig/fonts.conf .config/fontconfig/fonts.conf 
dot_link i3/config .config/i3/config
dot_link i3status/config .config/i3status/config
dot_link .tmux.conf .tmux.conf
dot_link .vimrc .vimrc
dot_link .Xmodmap .Xmodmap
dot_link .xprofile .xprofile
dot_link .Xresources .Xresources

