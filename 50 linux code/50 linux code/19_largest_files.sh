#!/bin/bash
echo "Finding 5 largest files in /home..."
find /home -type f -exec du -h {} + | sort -rh | head -n 5
