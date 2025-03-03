#!/bin/bash


validate_username() {

local username="$1"
if [[ "$username" =~ ^[A-Z]+$ ]] ; then
	return 0
else
	return 1
fi
}
while true; do
	read -p "Enter your username (UPPERCASE, NO SPACES): " username

	if validate_username "$username"; then
		echo "Username '$username' is valid!"
		break
	else
		echo "Error: Username must be uppercase letters only (no spaces or numbers). Try again."
	fi
done	
