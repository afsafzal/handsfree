#!/bin/bash

# install command
install_command="sudo apt-get install -y"

echo "set up software server"
sudo cp /etc/apt/sources.list /etc/apt/sources.list_backup
sudo rm /etc/apt/sources.list
sudo cp ./sources.list /etc/apt/sources.list
sudo apt-get update
sudo chmod 777 /etc/apt/sources.list  #essential

################################################################################
# ia32 support librays
################################################################################
echo "ia32 support librays"
$install_command ia32-libs*

################################################################################
# building tools & librarys
################################################################################
echo "building tools & librarys"

$install_command vim-common vim-doc vim-gtk vim-scripts

$install_command build-essential
$install_command bin86 kernel-package 
$install_command g++ gcc
$install_command libstdc++5
$install_command gcc-4.8 g++-4.8 gcc-5 g++-5

$install_command exuberant-ctags cscope
$install_command rcs
$install_command manpages-dev glibc-doc
$install_command manpages-posix manpages-posix-dev
$install_command ack-grep
$install_command cmake cmake-qt-gui
$install_command git subversion mercurial yum

$install_command libncurses5 libncurses5-dev
$install_command mesa-utils libglu1-mesa freeglut3 freeglut3-dev 
$install_command libxmu-dev libxmu-headers
$install_command libcairo2 libcairo2-dev python-cairo

# install wx-gtk
#$install_command libwxgtk2.8-0 libwxgtk2.8-dev wx2.8-doc wx2.8-examples python-wxgtk2.8 

# gtk
$install_command libgtk2.0-dev

# install qt4
$install_command libqt4-dev qt4-demos qt4-doc qt4-designer 
$install_command libqt4-opengl-dev libqtwebkit-dev
$install_command libqt4-qt3support libqwtplot3d-qt4-dev qt4-dev-tools qt4-qtconfig libqt4-opengl-dev
$install_command qtcreator
$install_command python-qt4 python-qt4-doc python-qt4-gl
$install_command libqglviewer-dev libqglviewer2

# install qt5
$install_command qt5-default

# install opengl
$install_command build-essential libgl1-mesa-dev libglu1-mesa-dev freeglut3-dev

# install SDL
$install_command libsdl2-dev

# numerical calculation
$install_command libeigen3-dev libeigen3-doc
$install_command libsuitesparse-dev 

# other
$install_command lib3ds-dev

$install_command libgtk2.0-dev
$install_command libgtkglext1 libgtkglext1-dev
$install_command libgstreamer1.0-dev
$install_command libdc1394-22-dev
$install_command libv4l-dev 
$install_command libjpeg-dev
$install_command libpng12-dev

################################################################################
# utils
################################################################################
echo "utils"
$install_command firefox vlc
$install_command classicmenu-indicator indicator-multiload tree 
$install_command filezilla gparted retext
$install_command openssh-server openssh-client
$install_command meld cutecom 
$install_command gimp

#$install_command xfsprogs
$install_command p7zip-full p7zip-rar unrar lbzip2 pigz

$install_command ethtool
$install_command atop


# install music player
#$install_command audacious audacious-dev audacious-plugins

# exFAT
$install_command exfat-fuse

