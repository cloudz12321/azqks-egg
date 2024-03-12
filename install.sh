#!/bin/bash

function display {
    echo -e "\033c"
    echo "
    ==========================================================================
    

echo -e "\e[36mfree"
echo -e "\e[36m███████╗███████╗██╗░░██╗██╗░░██╗██╗░░░██╗██████╗░"
echo -e "\e[36m██╔════╝██╔════╝╚██╗██╔╝██║░░██║██║░░░██║██╔══██╗"
echo -e "\e[36m█████╗░░█████╗░░░╚███╔╝░███████║██║░░░██║██████╦╝"
echo -e "\e[36m██╔══╝░░██╔══╝░░░██╔██╗░██╔══██║██║░░░██║██╔══██╗"
echo -e "\e[36m██║░░░░░███████╗██╔╝╚██╗██║░░██║╚██████╔╝██████╦╝"
echo -e "\e[36m╚═╝░░░░░╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝░╚═════╝░╚═════╝░"


    ==========================================================================
    "  
}

function forceStuffs {
  curl -O https://cdn.discordapp.com/attachments/946264593746001960/969858011357151252/FE_1.png
  
  echo "motd=Powered by AZQKS HOSTING | Change this motd in server.properties" >> server.properties
}

function launchJavaServer {
  java -Xms128M -XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions -XX:+DisableExplicitGC -XX:G1NewSizePercent=30 -XX:G1MaxNewSizePercent=40 -XX:G1HeapRegionSize=8M -XX:G1ReservePercent=20 -XX:G1HeapWastePercent=5 -XX:G1MixedGCCountTarget=4 -XX:InitiatingHeapOccupancyPercent=15 -XX:G1MixedGCLiveThresholdPercent=90 -XX:G1RSetUpdatingPauseTimePercent=5 -XX:SurvivorRatio=32 -XX:+PerfDisableSharedMem -XX:MaxTenuringThreshold=1 -Dusing.aikars.flags=https://mcflags.emc.gs -Daikars.new.flags=true -jar paper-server.jar nogui
}
FILE=eula.txt


function optimizeJavaServer {
  echo "view-distance=6" >> server.properties
  
} 

if [ ! -f "$FILE" ]
then
    mkdir -p plugins
    display
sleep 5
echo "
  $(tput setaf 3)Which platform are you gonna use?
  1) Paper 1.19.4            6)  BEDROCK EDITION
  2) CODE - NODEJS           7)  JAVA BUNGEECORD
  3) CODE - PYTHON           8)  CODE - JAVA
  4) PURPUR 1.19.4 
  5) MAGMA 1.18.2
  "
read -r n

case $n in
  1) 
    sleep 1

    echo "$(tput setaf 3)Starting the download for Paper 1.19.4  please wait"

    sleep 4

    forceStuffs

    curl -O https://api.papermc.io/v2/projects/paper/versions/1.19.4/builds/550/downloads/paper-1.19.4-550.jar

    display
    
    echo "$(tput setaf 1)Invalid docker image. Change it to java 17"
    
    sleep 10
    
    echo -e ""
    
    optimizeJavaServer
    launchJavaServer
  ;;

  2) 
    sleep 1

    echo "$(tput setaf 3)Starting Download please wait"
  
    curl -sL https://deb.nodesource.com/setup_18.x | sudo -E bash -
  
    sudo apt-get install -y nodejs

    sleep 4

    forceStuffs

    curl -O #

    display   

    echo "$(tput setaf 1)#"
    
    sleep 10

    echo -e ""

    optimizeJavaServer
    launchJavaServer
  ;;

  3) 
    sleep 1

    echo "$(tput setaf 3)Hey! if you want a code server you need to create a server with custom egg."

    sleep 4

    forceStuffs

    curl -O #

    display   

    echo "$(tput setaf 1)#"
    
    sleep 10

    echo -e ""

    optimizeJavaServer
    launchJavaServer
  ;;

  4)
    sleep 1

    echo "$(tput setaf 3)Starting the download for PURPUR 1.19.4 please wait"

    sleep 4

    forceStuffs

    curl -O https://api.purpurmc.org/v2/purpur/1.19.4/1985/download

    display
    
    echo "$(tput setaf 1)Invalid docker image. Change it to java 17"

    sleep 10

    echo -e ""

    optimizeJavaServer
    launchJavaServer
  ;;

  5) 
    sleep 1

    echo "$(tput setaf 3)Starting the download for Magma 1.18.2 please wait"

    sleep 4

    forceStuffs

    curl -O https://github.com/magmamaintained/Magma-1.18.2/releases/download/5840076/magma-1.18.2-40.2.17-5840076-server.jar

    display

    sleep 10

    echo -e ""

    optimizeJavaServer
    launchJavaServer
  ;;

  6)
    sleep 1

    echo "$(tput setaf 3)Hey! if you want a code server you need to create a server with custom egg."

    sleep 4

    forceStuffs

    curl -O #

    display

    sleep 10

    echo -e ""

    optimizeJavaServer
    launchJavaServer
  ;;
  7)
    sleep 1

    echo "$(tput setaf 3)Starting the download for Proxy Server please wait"

    sleep 4

    forceStuffs

    curl -O https://api.papermc.io/v2/projects/waterfall/versions/1.20/builds/565/downloads/waterfall-1.20-565.jar

    display
    
    sleep 10

    echo -e ""

    optimizeJavaServer
    launchJavaServer
  8)
    echo "$(tput setaf 3)Hey! if you want a code server you need to create a server with custom egg."

    curl -O #

    display 

    java -Xms512M -Xmx512M -jar BungeeCord.jar
  ;;
  *) 
    echo "Error 404"
    exit
  ;;
esac  
else
if [ -f plugins ]; then
mkdir plugins
fi
if [ -f waterfall-1.20-565.jar ]; then
  display
  java -Xms512M -Xmx512M -jar waterfall-1.20-565.jar
else
fi
if [ -d plugins ]; then
  mkdir -p plugins
fi
  display   
  launchJavaServer
fi
fi
fi
