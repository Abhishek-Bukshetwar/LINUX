#!/bin/bash

# Check if the file exists
if [ ! -f urls.txt ]; then
  echo "urls.txt not found!"
  exit 1
fi

# Read and download each URL
while read -r url; do
  wget "$url"
done < urls.txt
