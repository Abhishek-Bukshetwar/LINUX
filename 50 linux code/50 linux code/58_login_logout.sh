#!/bin/bash

logfile="user_time.log"

echo -n "Enter username to monitor: "
read username

echo "$username has logged in."
echo "To logout, enter your username again and press Enter."

while true; do
    if who | grep -q "$username"; then
        echo "$(date) - $username logged in" >> "$logfile"
        echo "$username logged in at $(date)"
    fi

    # Check if user wants to stop monitoring
    read -t 60 -p "Enter username to stop monitoring: " input
    if [ "$input" == "$username" ]; then
        echo "$(date) - Monitoring stopped for $username" >> "$logfile"
        echo "$username has logged out."
        break
    fi
done

