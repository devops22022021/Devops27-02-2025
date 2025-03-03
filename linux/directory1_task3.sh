#!/bin/bash

read -p "Enter the directory path: " directory

if [ ! -d "$directory" ]; then
        echo "Error:Directory does not exist."
        exit 1
else
	echo "Directory exists."
	read -p "Enter the filenameto search: " filename
fi

found=$(find "$directory" -type f -name "$filename")
echo $found | grep $filename 
if [ $? == 0 ]; then

	echo "File(s) found"
        echo "$found"
else
        echo "File not found in the specified directory."
fi
