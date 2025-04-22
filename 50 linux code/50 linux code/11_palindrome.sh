#!/bin/bash

echo "Enter a string:"
read str

# Initialize an empty string for the reversed string
rev_str=""

# Loop through the string in reverse order and append each character to rev_str
for (( i=${#str}-1; i>=0; i-- )); do
    rev_str="$rev_str${str:i:1}"
done

# Check if the original and reversed strings are the same
if [[ "$str" == "$rev_str" ]]; then
    echo "The string '$str' is a palindrome."
else
    echo "The string '$str' is NOT a palindrome."
fi
