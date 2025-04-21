#!/bin/bash
echo -n "Enter temperature in Celsius: "
read celsius
fahrenheit=$(echo "scale=2; (9/5) * $celsius + 32" | bc)
echo "Temperature in Fahrenheit: $fahrenheit°F"

