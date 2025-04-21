#!/bin/bash
threshold=80
usage=$(df / | grep / | awk '{ print $5 }' | sed 's/%//')
if [ "$usage" -gt "$threshold" ]; then
  echo "Disk usage is above threshold! ($usage%)"
else
  echo "Disk usage is under control. ($usage%)"
fi
