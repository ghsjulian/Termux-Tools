
shopt -s histappend
shopt -s histverify
export HISTCONTROL=ignoreboth
clear


EMOJIS=(㉿)
RANDOM_EMOJI() {
  SELECTED_EMOJI=${EMOJIS[$RANDOM % ${#EMOJIS[@]}]};
  echo $SELECTED_EMOJI;
} 

PS1='\[\e[1;34m\]\[\e[92m\]┌──(\[\e[37m\]Kali💀️Linux\[\e[92m\])-\[\e[0m\]\[\e[92m\][\e[0m\]\[\e[37m\]\w\[\e[0m\]\[\e[92m\]]\[\e[0m\]\[\[\e[0m\]\n\[\e[92m\]└─≽ \[\e[0m\]'

#With imoji animation

 PS1='\[\e[1;34m\]\e[92m\]┌──(\e[37m\]Kali$(RANDOM_EMOJI)Linux\e[92m\])-\e[0m\]\e[92m\][\e[0m\]\e[37m\]\w\e[0m\]\e[92m\]]\e[0m\]\e[0m\]\e[92m\]\n└─≽ '

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
