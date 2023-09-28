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
apt-get install ruby -y
pip install lolcat
gem install lolcat
pkg install wget
pkg install curl


clear

echo 

echo "    < ━━━━━━━━━━━━ [★][★] ━━━━━━━━━━━━ > " |lolcat
figlet -f small " GHS JULIAN"|lolcat
echo "    < ━━━━━━━━━━━━━ [★][★] ━━━━━━━━━━━━ > " |lolcat
echo 

cp bash.bashrc /data/data/com.termux/files/usr/etc

cp ghs.sh /data/data/com.termux/files/usr/etc

clear
exit