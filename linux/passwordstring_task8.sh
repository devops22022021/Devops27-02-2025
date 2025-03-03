#!/bin/bash

echo -n "Enter a string: "
read input_string

length=${#input_string}
if [[ -z "$input_string" ]]; then
	echo "Error: Input cannot be empty."
	exit 1
fi

echo "total number of characters:$length"

input_string =$(echo "$input_string" | tr -d '')
declare -A char_count
for (( i=0; i<${#input_string}; i++ )); do
	char="${input_string:$i:1}"
	(( char_count["$char"]++ ))
done	
echo "Character counts:"
echo $char
for char in "${!char_count[@]}"; do
	echo "'$char' : ${char_count[$char]}"
done
