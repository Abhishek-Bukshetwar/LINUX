#!/bin/bash
echo "Enter the value of N:"
read N

echo "Even numbers from 1 to $N:"
for (( i=2; i<=N; i+=2 ))
do
    echo -n "$i "
done

echo ""  # Print a new line

