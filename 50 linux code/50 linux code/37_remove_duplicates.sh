#!/bin/bash
file="$1"
if [[ ! -f "$file" ]]; then
  echo "Error: $file does not exist."
  exit 1
fi

# Ask for user confirmation before proceeding
echo "Are you sure you want to sort and remove duplicates from $file? (y/n)"
read answer

if [[ "$answer" == "y" ]]; then
  # Sort the file, remove duplicates, and overwrite it
  sort -u "$file" -o "$file"
  echo "The file has been sorted and duplicates removed."
else
  echo "Operation canceled. The file was not modified."
fi
