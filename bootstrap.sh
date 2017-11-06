#!/bin/bash -x

DF=$HOME/projects/dotfiles

# Install packages
source $DF/os/install_packages.sh

# Create home directory structure
shopt -s extglob
rm -r $HOME/!(projects)
mkdir -p $HOME/{downloads,desktop,media/{images,music,videos,documents}}

# Configure Gnome
source $DF/os/gnome/configure.sh

# Install Google Chrome
source $DS/chrome/install.sh
