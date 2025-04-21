read -p "Enter file with similar name to delete " filename
for i in {1..50}; 
	do rm $filename"_"$i.sh; 
done
