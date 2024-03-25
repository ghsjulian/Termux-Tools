import socket
import requests
import os
import platform
import random
import color



uname = platform.uname()
memory_info = os.sysconf("SC_PAGE_SIZE") * os.sysconf("SC_PHYS_PAGES")
disk_info = os.statvfs('/')


#public_ip = requests.get("https://api.ipify.org").text

def get_public_ip():
    try:
        ip = requests.get("https://api.ipify.org").text
        return ip
    except OSError:
        return "No Connection"

def get_ip():
    try:
        s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
        s.connect(("8.8.8.8", 80))
        return s.getsockname()[0]
    except OSError:
        return "No Connection"

def __intro__():
    os.system("clear")
    os.system("figlet -f small ' GHS JULIAN'| lolcat")
    print(color.LIGHT_CYAN+color.BOLD+" _______________________________________________")
    print(color.LIGHT_GREEN+color.BOLD+" _______________________________________________")
    print(color.LIGHT_WHITE+color.BOLD+"\n Developer/Programmer  : "+color.YELLOW+color.BOLD,"Ghs Julian")
    print(color.LIGHT_WHITE+color.BOLD+"\n Contact Email Address : "+color.YELLOW+color.BOLD,"ghsjulian@gmail.com")
    print(color.LIGHT_WHITE+color.BOLD+"\n Find Me On Facebook   : "+color.YELLOW+color.BOLD,"facebook.com/ghs.julian.85")
    print(color.LIGHT_WHITE+color.BOLD+"\n My Personal Portfolio : "+color.YELLOW+color.BOLD,"ghsresume.netlify.app")
    print(color.LIGHT_WHITE+color.BOLD+"\n Github Profile Link   : "+color.YELLOW+color.BOLD,"github.com/Ghsjulian")
    print(color.LIGHT_CYAN+color.BOLD+"\n _______________________________________________")
    print(color.LIGHT_GREEN+color.BOLD+" _______________________________________________\n")
    print(color.LIGHT_GREEN+color.BOLD+" [OPTIONS] : "+color.LIGHT_WHITE+color.BOLD+"Your System /Device Info : ")
    # Select  Options
    
    print(color.RED+color.BOLD+"\n [!] "+color.LIGHT_CYAN+color.BOLD+"Your System Name  : "+color.YELLOW+color.BOLD,str(uname.system))
    print(color.RED+color.BOLD+"\n [!] "+color.LIGHT_CYAN+color.BOLD+"Machine Name      : "+color.YELLOW+color.BOLD,str(uname.machine))
    print(color.RED+color.BOLD+"\n [!] "+color.LIGHT_CYAN+color.BOLD+"Your Host/Node    : "+color.YELLOW+color.BOLD,str(uname.node))
    print(color.RED+color.BOLD+"\n [!] "+color.LIGHT_CYAN+color.BOLD+"System Version    : "+color.YELLOW+color.BOLD,str(uname.release))
    print(color.RED+color.BOLD+"\n [!] "+color.LIGHT_CYAN+color.BOLD+"Total Memory      : "+color.YELLOW+color.BOLD,str(memory_info)+" Bytes")
    print(color.RED+color.BOLD+"\n [!] "+color.LIGHT_CYAN+color.BOLD+"Total Disk Space  : "+color.YELLOW+color.BOLD,str(disk_info.f_blocks * disk_info.f_frsize)+" Bytes")
    print(color.RED+color.BOLD+"\n [!] "+color.LIGHT_CYAN+color.BOLD+"Available Space   : "+color.YELLOW+color.BOLD,str(disk_info.f_bfree * disk_info.f_frsize)+" Bytes")
    
    print(color.RED+color.BOLD+"\n [!] "+color.LIGHT_CYAN+color.BOLD+"Private IP Address: "+color.YELLOW+color.BOLD,str(get_ip()))
    print(color.RED+color.BOLD+"\n [!] "+color.LIGHT_CYAN+color.BOLD+"Public IP Address : "+color.YELLOW+color.BOLD,get_public_ip())
    #print(color.RED+color.BOLD+"\n [!] "+color.LIGHT_CYAN+color.BOLD+"Go To Your SD card Manager   : "+color.YELLOW+color.BOLD,"[03]")
    #print(color.RED+color.BOLD+"\n [!] "+color.LIGHT_CYAN+color.BOLD+"Open Python Program          : "+color.YELLOW+color.BOLD,"[04]")
    
    print(color.LIGHT_CYAN+color.BOLD+"\n _______________________________________________")
    print(color.LIGHT_GREEN+color.BOLD+" _______________________________________________")
    




__intro__()
