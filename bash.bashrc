clear

RED="$(printf '\033[31m')"
BOLD="$(printf '\033[1m')"
YELLOW="$(printf '\033[1;33m')"
GREEN="$(printf '\033[32m')"  


shopt -s histappend
shopt -s histverify
export HISTCONTROL=ignoreboth
clear


EMOJIS=(㉿)
RANDOM_EMOJI() {
  SELECTED_EMOJI=${EMOJIS[$RANDOM % ${#EMOJIS[@]}]};
  echo $SELECTED_EMOJI;
} 


#PS1='\n\033[1m\033[01;36m ┌──\033[0;32m(\e[37m\]\033[0;31m𝐊𝐚𝐥𝐢\033[1;37m$(RANDOM_EMOJI)\033[0;31m𝐋𝐢𝐧𝐮𝐱\e[92m\]\033[0;32m)\033[01;36m-\e[0m\]\e[92m\][\e[0m\]\e[37m\]\033[1;33m\033[1m\w\e[0m\]\e[92m\]]\e[0m\]\e[0m\]\e[92m\]\n\033[01;36m │\n └───────➤ '


#PS1='\n\033[1m\033[01;36m┌──\033[0;32m(\e[37m\]\033[0;31m𝐊𝐚𝐥𝐢\033[1;37m$(RANDOM_EMOJI)\033[0;31m𝐋𝐢𝐧𝐮𝐱\e[92m\]\033[0;32m)\033[01;36m-\e[0m\]\e[92m\][\e[0m\]\e[37m\]\033[1;33m\033[1m\w\e[0m\]\e[92m\]]\e[0m\]\e[0m\]\e[92m\]\n\033[01;36m│\n└───────➤ '


PS1='\n\033[1m\033[01;36m┌──\033[0;32m(\e[37m\]\033[0;31m\033[32m\033[32m\033[31m(\033[1;37mghs\033[0;31m\033[32m\033[32m\033[31m)\033[31m\033[31m\e[92m\]\033[0;32m)\033[01;36m-\e[0m\]\e[92m\][\e[0m\]\e[37m\]\033[1;33m\033[1m\W\e[0m\]\e[92m\]]\e[0m\]\e[0m\]\e[92m\]\n\033[01;36m│\n└─────\033[1m\033[1m\033[31m# \033[32m'

#➤'




# More Functionality And Variables 

Time12h="\T"
Time12a="\@"
PathShort="\w"
PathFull="\W"
NewLine="\n"
Jobs="\j"


# Bash Script Running Here...

python-server(){
python2 -m SimpleHTTPServer 8000
}

phpmyadmin(){
read -p " [+] Enter Port :" port |lolcat
clear
echo "    < ━━━━━━━━━━━━ [★][★] ━━━━━━━━━━━━ > " |lolcat
figlet -f small " MySQL"|lolcat
echo "    < ━━━━━━━━━━━━━ [★][★] ━━━━━━━━━━━━ > " read port |lolcat
php -S localhost:"$port" /data/data/com.termux/files/usr/share/phpmyadmin
}

php-server(){
read -p " [+] Enter Port :" port |lolcat
clear
echo "    < ━━━━━━━━━━━━ [★][★] ━━━━━━━━━━━━ > " |lolcat
figlet -f small " Localhost"|lolcat
echo "    < ━━━━━━━━━━━━━ [★][★] ━━━━━━━━━━━━ > " |lolcat

php -S localhost:"$port" /sdcard/htdocs
}



cd

cd /data/data/com.termux/files/home/Termux-Tools

python assets/index.py

cd
