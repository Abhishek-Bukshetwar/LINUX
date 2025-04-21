#!/bin/bash
echo "Enter the filename:"
read filename

echo "Enter the text you want to write into the file:"
read text

echo "$text" > "$filename"

echo "Text has been written to $filename successfully."

