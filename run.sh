#!/bin/bash
red='\033[0;31m'
blue='\033[1;36m'
green='\033[1;32m'
gray='\033[1;30m'
orange='\033[0;33m'
bluec='\033[0;34m'
greenl='\033[0;92m'

echo "0" > /opt/gateway/.flag

rm -f wget-log

function banner {
	figlet -f mini gateway
	printf "${gray}\nAuthor: mr. ey3\n"
	printf "${gray}love from ULTIMATE HACKERS\n"
	printf "${gray}version 2.0(beta)\n\n"
	

}


function amiroot {
	if [ `whoami` != "root" ]
	then
		printf "${red}You have to run this script as root"
		sudo su
	fi
}


function cleantheshit {
	
	printf "${blue}Would like to clear caches[Y/n]: "
	read bool2
	
	if [ "$bool2" == "y" ]
	then
		bleachbit -c adobe_reader.cache chromium.cache chromium.current_session chromium.history elinks.history emesene.cache epiphany.cache firefox.url_history flash.cache flash.cookies google_chrome.cache google_chrome.history  links2.history opera.cache opera.search_history opera.url_history
	fi
}

	
function initialization {
	printf "${gray}\nLoading script, wait!\n\n"
	rl=$(</opt/gateway/.loc)
	
	sleep 3
	#current location
	while true; do
		cl=`wget -qO- ipinfo.io/ip && wget -qO- ipinfo.io/country`
		file=$(</opt/gateway/.file)
		flag=$(</opt/gateway/.flag)
		
		if [[ "$cl" == "$rl" && "$flag" == "0" ]]
		then
			printf "${blue}connecting :: $file\n"
			sleep 5
		elif [[ "$flag" == 1 ]]
		then
			printf "\n${red}All the servers are currently down\nTry another location\n"
			break
		else
			printf "\n\n${green}connected :: $file\n"
			printf "${green}Initialized :)\n"
		break
		fi
		done
}


function killm {

	sudo killall -I -q transmission dropbox skype icedove thunderbird xchat hexchat steam firefox chromiumm chrome opera midori QupZilla Konqueror Epiphany icewasel firefox-esr
}


function kill {
	printf "${red}Shutting down gateway\n"

	if pgrep -x "tcp.sh" > /dev/null || pgrep -x "openvpn" > /dev/null || pgrep -x "udp.sh" > /dev/null
	then
		
		printf "${green}To make it safe\nWould you like to kill all the dangerous applications[Y/n]: "
		read kh
		
		if [[ "$kh" == 'y' || "$kh" == 'Y' ]]
		then
			killm
		fi
		
		killall -q tcp.sh
		killall -q udp.sh
		killall -q openvpn
		killall -q run.sh
		rm -f /opt/gateway/.prcl
		rm -f /opt/gateway/.loc
		
		cleantheshit
		printf "${green}Done :)\n"
		
		killall -q gateway
	else
		printf "\n${red}are your high! its not even running\n"
		killall -q gateway
	fi

}


function ip {
	ext_ip=$(wget -qO- ipinfo.io/ip && wget -qO- ipinfo.io/country)

	printf "\n${blue}Current public IP: $ext_ip\n"

}


function status {
	if pgrep -x "tcp.sh" > /dev/null || pgrep -x "openvpn" > /dev/null || pgrep -x "udp.sh" > /dev/null
	then
	
		#required location
		rl=$(</opt/gateway/.loc)
		
		#current location
		cl=`wget -qO- ipinfo.io/ip && wget -qO- ipinfo.io/country`
		
		if [ "$cl" == "$rl" ]
		then
			printf "\n${green}Its up\n"
			printf "${gray}But not fully loaded\n"
			file=$(</opt/gateway/.file)
			printf "${green}current file: $file\n"
		else
			printf "${green}Its up\n"
			printf "${green}You are surfing through the tunnel\n"
			file=$(</opt/gateway/.file)
			printf "${green}current file: $file\n"
			ip
		fi
	else
		printf "\n${red}It looks like, its down...\n\n"
	fi
	
	
	
}


function update {
	
	mkdir /opt/gateway-update
	cd /opt/gateway-update
	
	git clone https://github.com/akashq/gateway.git
	
	sleep 4
	
	vcontroli=$(</opt/gateway/version-control)
	vcontrolc=$(</opt/gateway-update/gateway/version-control)
	
	printf "$vcontroli $vcontrolc"
	
	if [ "$vcontroli" == "$vcontrolc" ]
	then
		
		printf "\n${green}You are running the recent version\n"

	else
		
		cd /opt/gateway-update/gateway/
		
		printf "Update available\n\n\n"
		printf "Do you want to update[Y/n]:"
		read bool1
		
		if [[ "$bool1" == Y || "$bool1" == y ]]
		then
			ls
			chmod +x ./setup.sh
			./setup.sh
			printf "${green}Your program is updated now...\n"
		else
			printf "${red}It's always a good idea to keep your program up-to-date\n"
		fi
	fi
	
	rm -r -f /opt/gateway-update
}


function restart {
	
	if pgrep -x "tcp.sh" > /dev/null || pgrep -x "openvpn" > /dev/null || pgrep -x "udp.sh" > /dev/null
	then
		killall -q tcp.sh
		killall -q udp.sh
		killall -q openvpn
		rm -f /opt/gateway/.prcl
		rm -f /opt/gateway/.loc
	fi
	
	sleep 4
	
	activate
	initialization
}


function change {
	
	protocol=$(</opt/gateway/.prcl)
	
		if [[ "$protocol" == 1 ]]
	    then
			
			#kill
			if pgrep -x "tcp.sh" > /dev/null || pgrep -x "openvpn" > /dev/null || pgrep -x "udp.sh" > /dev/null || pgrep -x "run.sh" > /dev/null
			then
				killall -q tcp.sh
				killall -q udp.sh
				killall -q openvpn
			fi
			
			#restart
			printf "\n${bluec}Changing server\n"
			rl=`wget -qO- ip.frozenbox.org`
			sudo -b xterm -e sudo -b /opt/gateway/tcp.sh 
			initialization
		else
			
			#kill
			if pgrep -x "tcp.sh" > /dev/null || pgrep -x "openvpn" > /dev/null || pgrep -x "udp.sh" > /dev/null || pgrep -x "run.sh" > /dev/null
			then
				killall -q tcp.sh
				killall -q udp.sh
				killall -q openvpn
			fi
			
			#restart
			printf "\nChanging server\n"
			rl=`wget -qO- ip.frozenbox.org`
			sudo -b xterm -e sudo -b /opt/gateway/udp.sh
			initialization
		fi
}


function activate {
	
	#required location
		rl=`wget -qO- ipinfo.io/ip && wget -qO- ipinfo.io/country`
		echo "$rl" > "/opt/gateway/.loc"
		echo "0" > "/opt/gateway/.i"
		
		#
		printf "${blue}\n1.TCP\n2.UDP\n\n${green}Enter protocol you want to use: "
		read protocol
		echo "$protocol" > /opt/gateway/.prcl
		
		if [[ "$protocol" == 1 ]]
	    then
			printf "\n\n${bluec}Servers:\n\n"
			printf "${orange} 1. Argentina\n"
			printf "${orange} 2. Australia\n"
			printf "${orange} 3. Germany\n"
			printf "${orange} 4. Japan\n"
			printf "${orange} 5. Republic of Korea\n"
			printf "${orange} 6. Russia\n"
			printf "${orange} 7. Thailand\n"
			printf "${orange} 8. Ukraine\n"
			printf "${orange} 9. USA\n"
			printf "${orange}10. Veneguela\n"
			printf "${orange}11. Viet-nam\n"
			printf "\n\n${green}-> "
			read cunt
			echo "$cunt" > "/opt/gateway/.servnum"
	
			sudo -b xterm -e sudo -b /opt/gateway/tcp.sh 
		else
			printf "\n\n${bluec}Servers:\n\n"
			printf "${orange} 1. Argentina\n"
			printf "${orange} 2. Australia\n"
			printf "${orange} 3. Germany\n"
			printf "${orange} 4. Japan\n"
			printf "${orange} 5. Republic of Korea\n"
			printf "${orange} 6. Russia\n"
			printf "${orange} 7. Thailand\n"
			printf "${orange} 8. Ukraine\n"
			printf "${orange} 9. USA\n"
			printf "${orange}10. Veneguela\n"
			printf "${orange}11. Viet-nam\n"
			printf "\n\n${blue}-> "
			read cunt
			echo "$cunt" > "/opt/gateway/.servnum"
			
			
			sudo -b xterm -e sudo -b /opt/gateway/udp.sh
		fi
}


function uninstall {
	
	rm -f -r /opt/gateway
	printf "${blue}Good bye friend!"
}



case "$1" in
	-a)
		amiroot
		banner
		
		printf "${green}To make it safe\nWould you like to kill all the dangerous applications[Y/n]: "
		read kb
		
		if [[ "$kb" == 'y' || "$kb" == 'Y' ]]
		then
			killm
		fi
		activate
		initialization
	;;
	-d)
		amiroot
		banner
		kill
	;;
	-s)
		banner
		status
	;;
	-r)
		amiroot
	    banner
	    restart
	;;
	-i)
		banner
		ip
	;;
	-c)
		amiroot
		banner
		
		printf "${green}Changing servers can leak your real ip to stop that\nWould you like to kill all the dangerous applications[Y/n]: "
		read km
		
		if [[ "$km" == y || "$km" == Y ]]
		then
			killm
		fi
		change
	;;
	-u)
		amiroot
		banner
		uninstall
	;;
	--update)
		amiroot
		banner
		update
	;;
   *)
   banner
echo -e "${blue}
gateway (v 2.0)
author: mr. ey3

Usage:
┌──[root@shad0w]─[$PWD]
└──╼ \$ gateway {-a|-d|-c|-r|-s|-i|-u}

	-a Activate gateway	
	-d Deactivate gateway
	-c Change the vpn server
	-r restart gateway
	-s Check the status of gateway
	-i Check your ip and location
	-u Uninstall gateway
	--update
	
" >&2

exit 1
;;
esac

