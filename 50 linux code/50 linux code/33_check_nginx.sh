#!/bin/bash
if ! pgrep nginx > /dev/null; then
  echo "Nginx not running. Starting it now..."
  sudo systemctl start nginx
  
  # Check if nginx started successfully
  if systemctl is-active --quiet nginx; then
    echo "Nginx started successfully."
  else
    echo "Failed to start Nginx."
  fi
else
  echo "Nginx is running."
fi

