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
    #cd /data/data/com.termux/files/home/Termux-Tools
    python termServer.py
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

















run_java() {
    # Check if the filename is provided
    if [ -z "$1" ]; then
        echo ""
        echo "[-] Usage --> run_java filename.java"
        echo ""
        return 1
    fi
    # Extract the filename without extension
    filename=$(basename "$1" .java)
    # Check if the file exists
    if [ ! -f "$1" ]; then
        echo ""
        echo "${RED}________________________________________"
        echo ""
        echo "${WHITE}${BOLD}[!]${YELLOW}${BOLD} File Not Found --> ${CYAN}$1"
        echo "${RED}________________________________________"
        echo ""
        return 1
    fi
    # Compile the Java file
    javac "$1"
    # Check if compilation was successful
    if [ $? -eq 0 ]; then
        echo ""
        echo "${BLUE}________________________________________"
        echo ""
        echo "${YELLOW}${BOLD}[+]${RED} Created By --> ${GREEN}Ghs Julian"
        echo ""
        echo "${YELLOW}${BOLD}[+]${CYAN} Compilation Successfully !"
        sleep 1
        echo ""
        echo "${WHITE}${BOLD}[+]${YELLOW} Running Program..."
        # Run the compiled Java class
        echo ${WHITE}
        java "$filename"
        echo "${BLUE}________________________________________"
        echo "${YELLOW}----------------------------------------"
        echo ""
    else
        echo ""
        echo "${RED}________________________________________"
        echo ""
        echo "${WHITE}${BOLD}[!]${YELLOW}${BOLD} Compilation Failed !"
        echo ""
        echo "${RED}________________________________________"
        echo ""
    fi
}

javamoon() {
    # Check if the filename is provided
    if [ -z "$1" ]; then
        echo ""
        echo "[-] Usage --> run_java filename.java"
        echo ""
        return 1
    fi

    # Extract the filename without extension
    filename=$(basename "$1" .java)

    # Check if the file exists
    if [ ! -f "$1" ]; then
        echo ""
        echo "${RED}________________________________________"
        echo ""
        echo "${WHITE}${BOLD}[!]${YELLOW}${BOLD} File Not Found --> ${CYAN}$1"
        echo "${RED}________________________________________"
        echo ""
        return 1
    fi

    # Start watching the file for changes
    while true; do
        # Compile the Java file
        javac "$1"
        
        # Check if compilation was successful
        if [ $? -eq 0 ]; then
            echo ""
            echo "${BLUE}________________________________________"
            echo ""
            echo "${YELLOW}${BOLD}[+]${RED} Created By --> ${GREEN}Ghs Julian"
            echo ""
            echo "${YELLOW}${BOLD}[+]${CYAN} Compilation Successfully !"
            sleep 1
            echo ""
            echo "${WHITE}${BOLD}[+]${YELLOW} Running Program..."
            # Run the compiled Java class
            echo ${WHITE}
            java "$filename"
            echo "${BLUE}________________________________________"
            echo "${YELLOW}----------------------------------------"
            echo ""
        else
            echo ""
            echo "${RED}________________________________________"
            echo ""
            echo "${WHITE}${BOLD}[!]${YELLOW}${BOLD} Compilation Failed !"
            echo ""
            echo "${RED}________________________________________"
            echo ""
        fi

        # Wait for the file to change
        inotifywait -e modify "$1"
    done
}
### For Running C And C++ 
run_code() {
    # Check if the filename is provided
    if [ -z "$1" ]; then
        echo ""
        echo "[-] Usage --> run_code filename.c or filename.cpp"
        echo ""
        return 1
    fi

    # Extract the filename without extension
    filename=$(basename "$1")
    extension="${filename##*.}"
    filename_no_ext="${filename%.*}"

    # Check if the file exists
    if [ ! -f "$1" ]; then
        echo ""
        echo "________________________________________"
        echo ""
        echo "[!] File Not Found --> $1"
        echo "________________________________________"
        echo ""
        return 1
    fi

    # Compile the C or C++ file
    if [ "$extension" == "c" ]; then
        clang "$1" -o "$filename_no_ext"
    elif [ "$extension" == "cpp" ]; then
        clang++ "$1" -o "$filename_no_ext"
    else
        echo ""
        echo "[-] Unsupported file type. Please provide a .c or .cpp file."
        return 1
    fi

    # Check if compilation was successful
    if [ $? -eq 0 ]; then
        echo ""
        echo "________________________________________"
        echo ""
        echo "[+] Compilation Successfully!"
        sleep 1
        echo ""
        echo "[+] Running Program..."
        # Run the compiled program
        echo ""
        ./"$filename_no_ext"
        echo "________________________________________"
        echo "----------------------------------------"
        echo ""
    else
        echo ""
        echo "________________________________________"
        echo ""
        echo "[!] Compilation Failed!"
        echo ""
        echo "________________________________________"
        echo ""
    fi
}
