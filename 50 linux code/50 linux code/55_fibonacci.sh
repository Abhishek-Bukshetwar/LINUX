#!/bin/bash
echo "Enter the number of terms:"
read n

# First two terms
a=0
b=1

echo "Fibonacci Series:"
for (( i=0; i<n; i++ ))
do
    echo -n "$a "
    fn=$((a + b))  # Calculate next term
    a=$b
    b=$fn
done

echo ""

