#!/bin/bash
echo -n "Enter principal amount: "
read p
echo -n "Enter time period (years): "
read t
echo -n "Enter rate of interest: "
read r

si=$(( (p * t * r) / 100 ))

echo "Simple Interest: $si"

