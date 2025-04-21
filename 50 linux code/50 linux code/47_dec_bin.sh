#!/bin/bash
echo -n "Enter a decimal number: "
read num
echo "Binary equivalent: $(echo "obase=2; $num" | bc)"

