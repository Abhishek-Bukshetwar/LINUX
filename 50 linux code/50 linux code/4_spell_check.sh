#!/bin/bash

# Check if a file is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

file=$1

# Check if aspell is installed
if ! command -v aspell &> /dev/null; then
    echo "Error: aspell is not installed. Install it using: sudo apt install aspell"
    exit 1
fi

echo "Checking spelling mistakes in $file..."
echo "---------------------------------------"

# Extract words from the file and check spelling
cat "$file" | tr -s ' ' '\n' | aspell list | sort -u | while read word; do
    grep --color=auto -w "$word" "$file"
done

