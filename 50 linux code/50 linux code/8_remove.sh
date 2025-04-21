#!/bin/bash

# Define an array
echo "Enter space-separated numbers for the array:"
read -a arr

echo "Enter the number to remove:"
read num_to_remove

# Create a new array without the specified number
new_arr=()
for i in "${arr[@]}"; do
    if [[ $i -ne $num_to_remove ]]; then
        new_arr+=("$i")
    fi
done

# Display the new array
echo "Array after removing $num_to_remove: ${new_arr[@]}"

