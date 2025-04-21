#!/bin/bash
echo "Enter a number:"
read num
fact=1
i=$num

while [ $i -gt 0 ]
do
    fact=$((fact * i))
    ((i--))
done

echo "Factorial of $num is: $fact"

