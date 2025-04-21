#!/bin/bash
read -p "Enter countdown time (seconds): " time
while [ "$time" -gt 0 ]; do
  echo "$time seconds remaining..."
  sleep 1
  time=$((time - 1))
done
echo "Time's up!"

