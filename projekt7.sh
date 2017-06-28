#!/bin/bash
Whi='\e[0;37m'; 
Red='\e[0;31m';
Gre='\e[0;32m';
trap '' 2
while true
do
  echo -e "${Gre}"
  echo "==============================================="
  echo -e "${Whi}"
  echo "

  ______             _        _     _    ______
  | ___ \           (_)      | |   | |  |___  /
  | |_/ /_ __  ___   _   ___ | | __| |_    / / 
  |  __/| '__|/ _ \ | | / _ \| |/ /| __|  / /  
  | |   | |  | (_) || ||  __/|   < | |_ ./ /   
  \_|   |_|   \___/ | | \___||_|\_\ \__|\_/    
                   _/ |                        
                  |__/ 
"
 echo -e "${Gre}"
 echo "=============================================="
  
  echo "Enter 1 to list logged users: "
  echo "Enter 2 to monitor system processes: "
  echo "Enter 3 to get update: "
  echo "Enter 4 to restart system: "
  echo "Enter 5 to shut down system: "
  echo "Enter q to exit the menu: "
  echo -e "\n"
  echo -e "Enter your selection \c"
  read answer
  case "$answer" in
    1) who
       uptime ;;
    2) htop;;
    3) sudo sudo apt-get update ;;
    4) sudo reboot ;;
    5) sudo shutdown ;;
    q) exit ;;
  esac
  echo -e "${Red}"
  echo -e "Enter return to continue \c"
  read input
done
