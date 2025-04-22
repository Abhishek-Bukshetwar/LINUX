read -p "Enter file base name to delete (e.g., script): " filename
for i in {1..50}; do
    file="${filename}_${i}.sh"
    if [ -f "$file" ]; then
        rm "$file"
        echo "Deleted: $file"
    else
        echo "Not found: $file"
    fi
done
