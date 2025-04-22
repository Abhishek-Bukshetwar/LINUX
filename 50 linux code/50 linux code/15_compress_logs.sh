#!/bin/bash

log_count=0

for file in *.log; do
  if [[ -f "$file" ]]; then
    echo "Compressing $file..."
    gzip "$file"
    ((log_count++))
  fi
done

echo "$log_count log file(s) compressed."
