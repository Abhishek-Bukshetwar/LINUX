#!/bin/bash

# Find log files older than 7 days
files_to_delete=$(find /var/logs -type f -name "*.log" -mtime +7)

# Check if there are any files to delete
if [ -z "$files_to_delete" ]; then
  echo "No files to delete."
  exit 0
fi

# Show the files that will be deleted
echo "The following files will be deleted:"
echo "$files_to_delete"

# Ask for user confirmation
read -p "Do you want to delete these files? (yes/no): " confirmation

if [[ "$confirmation" == "yes" ]]; then
  # Delete the files
  echo "$files_to_delete" | xargs rm
  echo "Files deleted."
else
  echo "No files were deleted."
fi

