import threading
import os
import json

def __run__(cmd):
    os.system("clear")
    os.system(cmd)


with open("assets/commands.json") as data:
    commands = json.loads(data.read())

for i in commands:
    thread = threading.Thread(target=__run__,args=(commands[i],))
    thread.start()


