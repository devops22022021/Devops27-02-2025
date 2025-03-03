#!/bin/bash
read -p "Enter the filename: " filename

if [[ ! -f "$filename" ]]; then
	echo "Error:File '$filename' not found!"
	exit 1
fi 

lines=$(wc -l < "$filename")
words=$(wc -w < "$filename")
characters=$(wc -m < "$filename")

echo "File: $filename"
echo "No of lines: $lines"
echo "No of words: $words"
echo "no of characters: $characters"

