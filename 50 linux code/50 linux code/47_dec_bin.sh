#!/bin/bash

echo -n "Enter a decimal number: "
read num

# Convert to binary using bc
binary=$(echo "obase=2; $num" | bc)
echo "Binary equivalent: $binary"