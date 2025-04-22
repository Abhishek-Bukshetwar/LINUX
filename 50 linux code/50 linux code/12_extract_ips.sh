#!/bin/bash

# Check if the input file is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 <file>"
    exit 1
fi

# Store the filename provided as an argument
file="$1"

# Check if the file exists
if [ ! -f "$file" ]; then
    echo "File '$file' not found!"
    exit 1
fi

# Run the grep command to extract IP addresses
grep -oE '\b([0-9]{1,3}\.){3}[0-9]{1,3}\b' "$file"