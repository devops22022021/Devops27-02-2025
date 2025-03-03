#!/bin/bash

read -p "Enter the directory path: " directory
read -p "Enter the filenameto search: " filename

if [ ! -d "$directory" ]; then
	echo "Error:Directory does not exist."
	exit 1
fi

found=$(find "$directory" -type f -name "$filename")
echo $found
if [ -z "$found " ]; then
	echo "File not found in the specified directory."
else 
	echo "File(s) found"
	echo "$found"
fi	
