#!/bin/bash
ping -c 1 google.com &> /dev/null
if [ $? -eq 0 ]; then
  echo "Internet is connected."
else
  echo "Internet is down."
fi
