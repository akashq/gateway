#!/bin/bash
blue='\033[1;36m'
green='\033[1;32m'
greenl='\033[0;92m'

function banner {
	printf "${greenl}running gateway installer"
	printf "${greenl}Author: mr. ey3\n"
	printf "${greenl}love from ULTIMATE HACKERS\n"
	printf "${greenl}version 1.0(beta)\n\n"

}

banner

#sudo su
sudo apt-get update
if hash openvpn 2>/dev/null; then
        printf "\n${green}openvpn:        checked\n"
        else
        sudo apt-get install openvpn
fi

if hash figlet 2>/dev/null; then
        printf "${green}figlet:         checked\n"
        else
        sudo apt-get install figlet
fi

if hash xterm 2>/dev/null; then
        printf "${green}xterm:          checked\n"
        else
        sudo apt-get install xterm
fi

if hash bleachbit 2>/dev/null; then
        printf "${green}bleachbit:          checked\n"
        else
        sudo apt-get install bleachbbit
fi

#directory related mods
rm -f -r /opt/gateway
mkdir /opt/gateway

chmod 777 /opt/gateway

cp -r vpnstcp /opt/gateway
cp -r vpnsudp /opt/gateway
cp -r credentials /opt/gateway

chmod 777 /opt/gateway/vpnstcp
chmod 777 /opt/gateway/vpnsudp
chmod 777 /opt/gateway/credentials

cp tcp.sh /opt/gateway
cp udp.sh /opt/gateway
cp run.sh /opt/gateway

#permissions
chmod +x /opt/gateway/tcp.sh
chmod +x /opt/gateway/udp.sh
chmod +x /opt/gateway/run.sh

rm -f /usr/bin/gateway
ln -s /opt/gateway/run.sh /usr/bin/gateway

printf "\n${green}To find out the help enter 'gateway'\n"
