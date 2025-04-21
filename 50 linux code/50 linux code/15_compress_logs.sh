#!/bin/bash
for file in *.log; do
  gzip "$file"
done
