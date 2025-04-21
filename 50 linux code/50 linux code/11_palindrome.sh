#!/bin/bash
echo "Enter a string:"
read str

# Reverse the string using rev command
rev_str=$(echo "$str" | rev)

# Check if the original and reversed strings are the same
if [[ "$str" == "$rev_str" ]]; then
    echo "The string '$str' is a palindrome."
else
    echo "The string '$str' is NOT a palindrome."
fi

