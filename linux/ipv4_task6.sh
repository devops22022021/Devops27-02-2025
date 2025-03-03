#!/bin/bash

ip_address=$(hostname -I | awk '{print $1}' )
validate_ipv4() {
	local ip="$1"
	if [[ "$ip" =~ ^([0-9]{1,3}\.){3}[0-9]{1,3}$ ]]; then
		IFS='.' read -r -a octets <<< "$ip"
		for octet in "${octets[@]}";do
			if ((octet < 0 || octet > 255)); then
				return 1
			fi
		done
		return 0
	else
		return 1
	fi
}
if validate_ipv4 "$ip_address"; then
	echo "Server IPV4 Address: $ip_address"
else
	echo "Error: could not retrieve a validIPV4 address."
fi	
