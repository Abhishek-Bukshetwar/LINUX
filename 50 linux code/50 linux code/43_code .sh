# copy file with same format to their respective directory 
for file in *.*; do
    if [[ -f "$file" ]]; then 
        ext="${file##*.}"                     # extract extension
        dir="sorted_files/$ext"              # target directory
        mkdir -p "$dir"                      # create folder if not exists
        cp "$file" "$dir"/                   # copy file
    fi
done 
