validate_password() {
	local password="$1"

if [[ "$password" =~ [A-Z] && "$password" =~ [a-z] && "$password" =~ [0-9] ]] ; then
	return 0
else
	return 1
fi	
}
read -p "Enter Username: " username

while true; do
	read -s -p "Enter Password: " password
	echo $password
	echo
	if validate_password "$password"; then
		echo "Password is valid!"
		break
	else
	echo "Invalid password! Must contain at least one uppercase letter, one lowercase letter, and one number."
	fi
done
echo "User $username registered successfully!"
