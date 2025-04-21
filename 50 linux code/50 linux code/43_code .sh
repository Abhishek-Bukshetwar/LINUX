# copy file with same format to their respective directory 
for file in *.*; do
	if [[ -f "$file" ]]; then 
		ext= "${file##*.}"
		mkdir -p sorted_files/"$ext"
		cp "$file ""$dir"/
	fi
done 
