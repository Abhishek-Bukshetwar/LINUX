#!/bin/bash
echo -n "Enter a string: "
read str
count=0

for ((i=0; i<${#str}; i++)); do
    char="${str:i:1}"
    if [[ $char == [aeiouAEIOU] ]]; then
        ((count++))
    fi
done

echo "Number of vowels: $count"

