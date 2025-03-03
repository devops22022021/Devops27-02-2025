my_string="HelloWorld"

length=${#my_string}

echo "String: $my_string"
echo "Length: $length"

for ((i=0; i<length; i++))
do 
	char=${my_string:i:1}
	echo "Character $((i+1)): $char"
done	
