#!/bin/bash
threshold=80
usage=$(df / | tail -1 | awk '{print $5}' | sed 's/%//')

if [ "$usage" -gt "$threshold" ]; then
  echo "Warning: Disk usage is above $threshold%!"
fi

