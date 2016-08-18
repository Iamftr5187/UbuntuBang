#!/bin/bash

###########################################################
# Making UbuntuBang
# 2015.11.30
# by Dymaxionkim in Github
###########################################################


###########################################################
# Repository
apt-add-repository ppa:numix/ppa

###########################################################
# Update
apt-get update
apt-get upgrade

###########################################################
#Install english
sudo apt-get install language-pack-en language-pack-en-base manpages

###########################################################
# Install apt
apt-get -y install build-essential linux-headers-`uname -r` xorg openbox obmenu lxappearance xcompmgr nitrogen tint2 numlockx conky terminator leafpad pcmanfm lxtask gmrun gnome-screenshot firefox firefox-locale-ko flashplugin-nonfree libreoffice evince mirage inkscape gimp smplayer cups-pdf convertall qalculate gksu synaptic language-pack-ko fonts-noto-cjk fonts-nanum* uim uim-byeoru libappindicator3-1 libhangul1 libqt5core5a libqt5gui5 libqt5widgets5 libqtcore4 libqtgui4 qtbase-abi-5-2-1 im-config dconf-editor libreoffice evince mirage inkscape gimp smplayer cups-pdf convertall qalculate libqt4-core libxss1 libappindicator1 libindicator7 gksu synaptic numix-icon-theme-circle shimmer-themes

###########################################################
#Install apt-fast
sudo add-apt-repository ppa:saiarcot895/myppa
sudo apt-get update
sudo apt-get -y install apt-fast

###########################################################
# wget
wget https://github.com/Thestars3/arkzip/releases/download/v2.4.4/arkzip_2.4.4_amd64.deb

dpkg -i arkzip_2.4.4_amd64.deb

rm *.deb

###########################################################
# Dasom IM
add-apt-repository ppa:dasom
apt-get -y install dasom dasom-gtk dasom-qt dasom-jeongeum

###########################################################
# Install chromium-browser
sudo apt-get install chromium-browser

###########################################################
# Conky
mv ~/.conkyrc ~/.conkyrc.old
mkdir ~/.conky
git clone git://github.com/zenzire/conkyrc.git ~/.conky
ln -s ~/.conky/conkyrc ~/.conkyrc

###########################################################
# ~/.config
mkdir ~/.config
cp -rf ~/github/UbuntuBang/config/* ~/.config

###########################################################
# /etc/default/locale
cp -rf ~/github/UbuntuBang/etc/default/locale /etc/default/locale

###########################################################
# ~/.xinputrc
cp -rf ~/github/UbuntuBang/home/.xinputrc ~/.xinputrc

###########################################################
# ~/.gtkrc-2
cp -rf ~/github/UbuntuBang/home/.gtkrc-* ~/.gtkrc-2

###########################################################
# Nitrogen
wget http://pre05.deviantart.net/79a1/th/pre/f/2014/242/1/c/numix_wallpaper_orange_by_sypnos-d7xbh4j.png
cp numix_wallpaper*.png ~/.config/nitrogen/

###########################################################
# VirtualBox Guest Extension
mount /dev/cdrom /mnt
/mnt/VBoxLinuxAdditions.run

#Install tlp laptop power saver optimization
sudo apt-add-repository ppa:linrunner/tlp
sudo apt-get update && sudo apt-get install tlp
sudo tlp start
