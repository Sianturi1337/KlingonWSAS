#! /bin/bash

###############################################################################
# Welcome to Klingon Webserver Auto Setup                                     #                    
# Description: with this tools, you can install Web Server just in 1 click    #
# Author : Sianturi1337 - Tinton Arya Permana Sianturi                        #
###############################################################################

hijau='\e[32m'
merah='\e[0;31m'
kuning=$'\033[38;5;11m'
selesaiwarna="\e[0m"

echo -e "\n\n
###############################################################################
# Welcome to Klingon Webserver Auto Setup                                     #                    
# Description: with this tools, you can install Web Server just in 1 click    #
# Author : Sianturi1337 - Tinton Arya Permana Sianturi                        #
###############################################################################
\n\n"

for i in `seq 3 -1 1` ; do echo -ne "$i\rKlingon Webserver Auto Setup will be start in . . . . "; sleep 1; done
echo -e "\n\n${hijau}Updating system in progress . . . .\n\n"; $r
sudo apt update -y && sudo apt upgrade -y || echo -e "\n${merah}[ERROR] Oh No!!!!! Updating failed, please check . . .\n"

echo -e "\n${hijau}Checking hostname . . . ."; $r
echo -e "\n${kuning}Your Hostname is $hostname ${selesaiwarna}\n"; $r 

PS3='Please enter your choice: '
options=("Nginx Web Server" "Apache2 Web Server" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Nginx Web Server")
            sudo apt install curl -y
            sudo apt install php -y
            sudo apt install php-cli -y
            sudo apt install mysql-server -y
            sudo apt install unzip -y
            sudo apt install nginx -y
            echo -e "\n${hijau}[INFORMATION] : Your Nginx Installation is Finished!"
            exit
            ;;
        "Apache2 Web Server")
            sudo apt install curl -y
            sudo apt install php -y
            sudo apt install php-cli -y
            sudo apt install mysql-server -y
            sudo apt install unzip -y
            sudo apt install apache2 -y
            echo -e "\n${hijau}[INFORMATION] : Your Apache2 Installation is Finished!"
            exit
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done