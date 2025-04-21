#!/bin/bash
ping -c 3 google.com > /dev/null

if [ $? -eq 0 ]; then
  echo "Internet is working."
else
  echo "No internet connection."
fi

