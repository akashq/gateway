#!/bin/bash


function int {
	
	cc=`wget -qO- http://ipinfo.io/country`
	p='p'
}

	
function startvpn {

		serv=$(</opt/gateway/.servnum)
		i=$(</opt/gateway/.i)
		
		
		if [[ "$serv" == 1 ]]
		then
			dir='/opt/gateway/vpnstcp/arg'
			tln=`ls -1 $dir > /opt/gateway/.lsa && wc -l < /opt/gateway/.lsa`
			i=$((i+1))
			echo "$i" > /opt/gateway/.i
			if (( "$i" <= "$tln" )); then file=`/bin/ls -1 "$dir" | sed -n $i$p`; else echo "1" > /opt/gateway/.flag && killall -q tcp.sh && killall -q openvpn; fi

			path="$dir/$file"
			echo "$file" > "/opt/gateway/.file"
			#starting vpn	
			openvpn --config $path --auth-user-pass /opt/gateway/credentials/credstcp/cred-vpngate.txt --proto tcp-client --connect-retry 0 --connect-timeout 5 --connect-retry-max 1 --auth-nocache --ncp-disable
		
		
		elif [[ "$serv" == 2 ]]
		then
			dir='/opt/gateway/vpnstcp/aus'
			tln=`ls -1 $dir > /opt/gateway/.lsa && wc -l < /opt/gateway/.lsa`
			i=$((i+1))
			echo "$i" > /opt/gateway/.i
			if (( "$i" <= "$tln" )); then file=`/bin/ls -1 "$dir" | sed -n $i$p`; else echo "1" > /opt/gateway/.flag && killall -q tcp.sh && killall -q openvpn; fi

			path="$dir/$file"
			echo "$file" > "/opt/gateway/.file"
			#starting vpn	
			openvpn --config $path --auth-user-pass /opt/gateway/credentials/credstcp/cred-vpngate.txt --proto tcp-client --connect-retry 0 --connect-timeout 5 --connect-retry-max 1 --auth-nocache
		
		
		elif [[ "$serv" == 3 ]]
		then
			dir='/opt/gateway/vpnstcp/germ'
			tln=`ls -1 $dir > /opt/gateway/.lsa && wc -l < /opt/gateway/.lsa`
			i=$((i+1))
			echo "$i" > /opt/gateway/.i
			if (( "$i" <= "$tln" )); then file=`/bin/ls -1 "$dir" | sed -n $i$p`; else echo "1" > /opt/gateway/.flag && killall -q tcp.sh && killall -q openvpn; fi
			
			path="$dir/$file"
			echo "$file" > "/opt/gateway/.file"
			#starting vpn	
			openvpn --config $path --auth-user-pass /opt/gateway/credentials/credstcp/cred-vpngate.txt --proto tcp-client --connect-retry 0 --connect-timeout 5 --connect-retry-max 1 --auth-nocache
		
		
		elif [[ "$serv" == 4 ]]
		then
			dir='/opt/gateway/vpnstcp/jap'
			tln=`ls -1 $dir > /opt/gateway/.lsa && wc -l < /opt/gateway/.lsa`
			i=$((i+1))
			echo "$i" > /opt/gateway/.i
			if (( "$i" <= "$tln" )); then file=`/bin/ls -1 "$dir" | sed -n $i$p`; else echo "1" > /opt/gateway/.flag && killall -q tcp.sh && killall -q openvpn; fi

			path="$dir/$file"
			echo "$file" > "/opt/gateway/.file"
			#starting vpn	
			openvpn --config $path --auth-user-pass /opt/gateway/credentials/credstcp/cred-vpngate.txt --proto tcp-client --connect-retry 0 --connect-timeout 5 --connect-retry-max 1 --auth-nocache
		
		
		elif [[ "$serv" == 5 ]]
		then
			dir='/opt/gateway/vpnstcp/kor'
			tln=`ls -1 $dir > /opt/gateway/.lsa && wc -l < /opt/gateway/.lsa`
			i=$((i+1))
			echo "$i" > /opt/gateway/.i
			if (( "$i" <= "$tln" )); then file=`/bin/ls -1 "$dir" | sed -n $i$p`; else echo "1" > /opt/gateway/.flag && killall -q tcp.sh && killall -q openvpn; fi

			path="$dir/$file"
			echo "$file" > "/opt/gateway/.file"
			#starting vpn	
			openvpn --config $path --auth-user-pass /opt/gateway/credentials/credstcp/cred-vpngate.txt --proto tcp-client --connect-retry 0 --connect-timeout 5 --connect-retry-max 1 --auth-nocache


		elif [[ "$serv" == 6 ]]
		then
			dir='/opt/gateway/vpnstcp/rus'
			tln=`ls -1 $dir > /opt/gateway/.lsa && wc -l < /opt/gateway/.lsa`
			i=$((i+1))
			echo "$i" > /opt/gateway/.i
			if (( "$i" <= "$tln" )); then file=`/bin/ls -1 "$dir" | sed -n $i$p`; else echo "1" > /opt/gateway/.flag && killall -q tcp.sh && killall -q openvpn; fi

			path="$dir/$file"
			echo "$file" > "/opt/gateway/.file"
			#starting vpn	
			openvpn --config $path --auth-user-pass /opt/gateway/credentials/credstcp/cred-vpngate.txt --proto tcp-client --connect-retry 0 --connect-timeout 5 --connect-retry-max 1 --auth-nocache


		elif [[ "$serv" == 7 ]]
		then
			dir='/opt/gateway/vpnstcp/thai'
			tln=`ls -1 $dir > /opt/gateway/.lsa && wc -l < /opt/gateway/.lsa`
			i=$((i+1))
			echo "$i" > /opt/gateway/.i
			if (( "$i" <= "$tln" )); then file=`/bin/ls -1 "$dir" | sed -n $i$p`; else echo "1" > /opt/gateway/.flag && killall -q tcp.sh && killall -q openvpn; fi

			path="$dir/$file"
			echo "$file" > "/opt/gateway/.file"
			#starting vpn	
			openvpn --config $path --auth-user-pass /opt/gateway/credentials/credstcp/cred-vpngate.txt --proto tcp-client --connect-retry 0 --connect-timeout 5 --connect-retry-max 1 --auth-nocache


		elif [[ "$serv" == 8 ]]
		then
			dir='/opt/gateway/vpnstcp/ukr'
			tln=`ls -1 $dir > /opt/gateway/.lsa && wc -l < /opt/gateway/.lsa`
			i=$((i+1))
			echo "$i" > /opt/gateway/.i
			if (( "$i" <= "$tln" )); then file=`/bin/ls -1 "$dir" | sed -n $i$p`; else echo "1" > /opt/gateway/.flag && killall -q tcp.sh && killall -q openvpn; fi

			path="$dir/$file"
			echo "$file" > "/opt/gateway/.file"
			#starting vpn	
			openvpn --config $path --auth-user-pass /opt/gateway/credentials/credstcp/cred-vpngate.txt --proto tcp-client --connect-retry 0 --connect-timeout 5 --connect-retry-max 1 --auth-nocache

		elif [[ "$serv" == 9 ]]
		then
			dir='/opt/gateway/vpnstcp/usa'
			tln=`ls -1 $dir > /opt/gateway/.lsa && wc -l < /opt/gateway/.lsa`
			i=$((i+1))
			echo "$i" > /opt/gateway/.i
			if (( "$i" <= "$tln" )); then file=`/bin/ls -1 "$dir" | sed -n $i$p`; else echo "1" > /opt/gateway/.flag && killall -q tcp.sh && killall -q openvpn; fi

			path="$dir/$file"
			echo "$file" > "/opt/gateway/.file"
			#starting vpn	
			openvpn --config $path --auth-user-pass /opt/gateway/credentials/credstcp/cred-vpngate.txt --proto tcp-client --connect-retry 0 --connect-timeout 5 --connect-retry-max 1 --auth-nocache


		elif [[ "$serv" == 10 ]]
		then
			dir='/opt/gateway/vpnstcp/ven'
			tln=`ls -1 $dir > /opt/gateway/.lsa && wc -l < /opt/gateway/.lsa`
			i=$((i+1))
			echo "$i" > /opt/gateway/.i
			if (( "$i" <= "$tln" )); then file=`/bin/ls -1 "$dir" | sed -n $i$p`; else echo "1" > /opt/gateway/.flag && killall -q tcp.sh && killall -q openvpn; fi
			
			path="$dir/$file"
			echo "$file" > "/opt/gateway/.file"
			#starting vpn	
			openvpn --config $path --auth-user-pass /opt/gateway/credentials/credstcp/cred-vpngate.txt --proto tcp-client --connect-retry 0 --connect-timeout 5 --connect-retry-max 1 --auth-nocache


		elif [[ "$serv" == 11 ]]
		then
			dir='/opt/gateway/vpnstcp/viet'
			tln=`ls -1 $dir > /opt/gateway/.lsa && wc -l < /opt/gateway/.lsa`
			i=$((i+1))
			echo "$i" > /opt/gateway/.i
			if (( "$i" <= "$tln" )); then file=`/bin/ls -1 "$dir" | sed -n $i$p`; else echo "1" > /opt/gateway/.flag && killall -q tcp.sh && killall -q openvpn; fi

			path="$dir/$file"
			echo "$file" > "/opt/gateway/.file"
			#starting vpn	
			openvpn --config $path --auth-user-pass /opt/gateway/credentials/credstcp/cred-vpngate.txt --proto tcp-client --connect-retry 0 --connect-timeout 5 --connect-retry-max 1 --auth-nocache
	
		else
			printf "sorry! invalid inpuut"
			
		fi
}


function check {
	while true; do
	loc=`wget -qO- http://ipinfo.io/country`

	if [ "${loc,,}" = "${cc,,}" ];
	then
		killall -q openvpn
		startvpn
	fi

done

}
	
int		
startvpn 
check 
