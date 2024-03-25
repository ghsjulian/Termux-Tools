#!/bin/bash

#Installing the requirements files
pkg update && pkg upgrade -y
pkg install git
pkg install figlet
pkg install cmatrix
pkg install nmap
pkg install nodejs
pkg install php
pkg install php mariadb phpmyadmin
pkg install mariadb
pkg install nano
pkg install python -y
pkg install python2 -y
pkg install ruby -y
pip install lolcat
gem install lolcat
pkg install wget
pkg install termux-api
pkg install ncurses-utils
pkg install curl



clear

echo 

echo "    < ━━━━━━━━━━━━ [★][★] ━━━━━━━━━━━━ > " |lolcat
figlet -f small " GHS JULIAN"|lolcat
echo "    < ━━━━━━━━━━━━━ [★][★] ━━━━━━━━━━━━ > " |lolcat
echo

rm /data/data/com.termux/files/usr/etc/bash.bashrc

cp style/* /data/data/com.termux/files/home/.termux
cp style/.current_color /data/data/com.termux/files/home/.termux
cp style/.current_font /data/data/com.termux/files/home/.termux

cp .bashrc /data/data/com.termux/files/home

cp bash.bashrc /data/data/com.termux/files/usr/etc

clear

bash
