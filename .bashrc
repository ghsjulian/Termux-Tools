#!/bin/bash

# DEFINED COLORS 

RED="$(printf '\033[31m')"
BOLD="$(printf '\033[1m')"
YELLOW="$(printf '\033[1;33m')"
GREEN="$(printf '\033[32m')"  
ORANGE="$(printf '\033[33m')" 
BLUE="$(printf '\033[34m')"
MAGENTA="$(printf '\033[35m')"  
CYAN="$(printf '\033[36m')"  
WHITE="$(printf '\033[37m')" 
BLACK="$(printf '\033[30m')"
REDBG="$(printf '\033[41m')" 
GREENBG="$(printf '\033[42m')" 
ORANGEBG="$(printf '\033[43m')"  
BLUEBG="$(printf '\033[44m')"
MAGENTABG="$(printf '\033[45m')"  
CYANBG="$(printf '\033[46m')"  
WHITEBG="$(printf '\033[47m')" 
BLACKBG="$(printf '\033[40m')"
DEFAULT_FG="$(printf '\033[39m')"  
DEFAULT_BG="$(printf '\033[49m')"




#   ├── cgi-bin
#   ├── error
#   ├── html
#   └── icons
#  ├───
#  │



dir() {
    if [ "$#" -eq 0 ]; then
    command ls --color=auto -1 | while read -r line; do
      if [[ -d "$line" ]]; then
        echo "${CYAN}├──${YELLOW}${BOLD} $line"
        #echo "${CYAN}│"
      else
        echo "${CYAN}├──${GREEN}${BOLD} $line"
        #echo "${CYAN}│"
      fi
    done
  else
    command ls "$@"
  fi
}
ls() {
    if [ "$#" -eq 0 ]; then
    command ls --color=auto -1 | while read -r line; do
      if [[ -d "$line" ]]; then
        echo "${CYAN}├──${YELLOW}${BOLD} $line"
        #echo "${CYAN}│"
      else
        echo "${CYAN}├──${GREEN}${BOLD} $line"
        #echo "${CYAN}│"
      fi
    done
  else
    command ls "$@"
  fi
}

cls(){
clear
}

htdocs(){
cd /sdcard/htdocs
cls
ls
}

acode(){
    cd /data/data/com.termux/files/home/Termux-Tools
    python assets/termServer.py
}
remove_bg(){
    cd /data/data/com.termux/files/home/Termux-Tools
    python assets/remove_bg.py
}

eruda(){
  cd
  cd Termux-Tools/eruda/ && python2 -m SimpleHTTPServer 8010
}

myserver(){
    cd /data/data/com.termux/files/home/Termux-Tools/assets
    python server.py
}

export PATH=$PATH:/data/data/com.termux/files/usr/bin
