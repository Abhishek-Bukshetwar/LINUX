#!/bin/bash

echo "Choose an option:"
echo "1. Create a directory"
echo "2. Delete a directory"
read choice

if [[ $choice -eq 1 ]]; then
    echo "Enter directory name to create:"
    read dirname
    mkdir -p "$dirname"
    echo "Directory '$dirname' created successfully."

elif [[ $choice -eq 2 ]]; then
    echo "Enter directory name to delete:"
    read dirname
    if [[ -d "$dirname" ]]; then
        rm -r "$dirname"
        echo "Directory '$dirname' deleted successfully."
    else
        echo "Directory '$dirname' does not exist!"
    fi

else
    echo "Invalid option! Please enter 1 or 2."
fi

