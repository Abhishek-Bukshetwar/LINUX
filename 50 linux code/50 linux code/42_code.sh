#!/bin/bash

read -p "Enter directory to sort: " dir
read -p "Enter the file format to delete (e.g., txt): " format

# Check if directory exists
if [[ ! -d "$dir" ]]; then
    echo "Error: Directory '$dir' does not exist."
    exit 1
fi

echo -e "\nFiles in $dir:"
ls "$dir"

echo -e "\n-----------------------------"
echo "Files matching *.$format:"
find "$dir" -maxdepth 1 -type f -name "*.$format"
echo "-----------------------------"

read -p "Are you sure you want to delete these files? (y/n): " confirm

if [[ "$confirm" == "y" || "$confirm" == "Y" ]]; then
    find "$dir" -maxdepth 1 -type f -name "*.$format" -exec rm {} \;
    echo "Files with format '$format' have been deleted."
else
    echo "Deletion cancelled."
fi

