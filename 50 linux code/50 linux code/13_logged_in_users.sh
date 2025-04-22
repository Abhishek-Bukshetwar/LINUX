#!/bin/bash

# Script to display active users with login details

logfile="user_log_$(date +%F_%T).txt"

echo "--------------------------------------"
echo "   Active User Sessions (Detailed)    "
echo "--------------------------------------"
echo

# Check if anyone is logged in
if who -u | grep -q '.'; then
    echo "User    | Terminal | Login Time       | Idle   | PID   | From"
    echo "--------|----------|------------------|--------|-------|-------------"

    # Save and display the session info
    who -u | awk '{ printf "%-8s| %-8s| %-17s| %-6s| %-5s| %s\n", $1, $2, $3 " " $4, $5, $6, $7 }' | tee "$logfile"
else
    echo "No users currently logged in."
fi

echo
echo "Output also saved to $logfile"

