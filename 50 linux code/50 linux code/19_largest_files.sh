#!/bin/bash
find /home -type f -exec du -h {} + | sort -rh | head -n 5
