#!bin/bash
#
is_tomcat_installed() {
	if command -v tomcat >/dev/null 2>&1 || systemctl list-units --type=service | grep -q tomcat; then
		return 0
	else return 1
	fi
}
install_tomcat() {
	echo "Installing Tomcat ..."

	if [[ -f /etc/debian_version ]]; then
		sudo apt update
		sudo apt install -y tomcat9
	elif [[ -f /etc/redhat-release ]] ; then
		 sudo yum install -y tomcat
	 	sudo systemctl enable tomcat
		sudo systemctl start tomcat
	else 
	echo "Unsupported OS. please install Tomcat manually."
	exit 1
	fi

	echo "tomcat installation completed."
}
if is_tomcat_installed; then
	echo "Tomcat is already installed."
else install_tomcat

fi	

