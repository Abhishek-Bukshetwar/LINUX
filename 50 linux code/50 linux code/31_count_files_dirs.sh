#!/bin/bash
files=$(find . -type f | wc -l)
dirs=$(find . -type d | wc -l)
echo "Files: $files"
echo "Directories: $dirs"
