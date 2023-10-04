
BLACK = "\033[0;30m"
RED = "\033[0;31m"
GREEN = "\033[0;32m"
BROWN = "\033[0;33m"
BLUE = "\033[0;34m"
PURPLE = "\033[0;35m"
CYAN = "\033[0;36m"
LIGHT_GRAY = "\033[0;37m"
DARK_GRAY = "\033[1;30m"
LIGHT_RED = "\033[1;31m"
LIGHT_GREEN = "\033[1;32m"
YELLOW = "\033[1;33m"
LIGHT_BLUE = "\033[1;34m"
LIGHT_PURPLE = "\033[1;35m"
LIGHT_CYAN = "\033[1;36m"
LIGHT_WHITE = "\033[1;37m"
BOLD = "\033[1m"
FAINT = "\033[2m"
ITALIC = "\033[3m"
UNDERLINE = "\033[4m"
BLINK = "\033[5m"
NEGATIVE = "\033[7m"
CROSSED = "\033[9m"
END = "\033[0m"


shopt -s histappend
shopt -s histverify
export HISTCONTROL=ignoreboth
clear


EMOJIS=(㉿)
RANDOM_EMOJI() {
  SELECTED_EMOJI=${EMOJIS[$RANDOM % ${#EMOJIS[@]}]};
  echo $SELECTED_EMOJI;
} 

#PS1='  \[\e[1;34m\]\[\e[92m\]┌──(\[\e[37m\]Kali💀️Linux\[\e[92m\])-\[\e[0m\]\[\e[92m\][\e[0m\]\[\e[37m\]\w\[\e[0m\]\[\e[92m\]]\[\e[0m\]\[\[\e[0m\]\n\[\e[92m\]└─≽ \[\e[0m\]'

#With imoji animation

#PS1='\[\e[1;34m\]\e[92m\]┌──(\e[37m\]Kali$(RANDOM_EMOJI)Linux\e[92m\])-\e[0m\]\e[92m\][\e[0m\]\e[37m\]\w\e[0m\]\e[92m\]]\e[0m\]\e[0m\]\e[92m\]\n└─≽ '


PS1='\n \033[1m\033[01;36m┌──\033[0;32m(\e[37m\]\033[0;31m𝐊𝐚𝐥𝐢\033[1;37m$(RANDOM_EMOJI)\033[0;31m𝐋𝐢𝐧𝐮𝐱\e[92m\]\033[0;32m)\033[01;36m-\e[0m\]\e[92m\][\e[0m\]\e[37m\]\033[1;33m\033[1m\w\e[0m\]\e[92m\]]\e[0m\]\e[0m\]\e[92m\]\n\033[01;36m └────────➤ '




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
cd /data/data/com.termux/files/usr/etc
bash ghs.sh
cd
