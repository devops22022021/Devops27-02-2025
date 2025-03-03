file_count=$(ls -1 | wc -l)

echo "Number of files: $file_count"

for ((i=1; i<=file_count; i++))
do
	echo "Iteration $i"
done	
