#!/bin/bash
if ! pgrep nginx > /dev/null; then
  echo "Nginx not running. Starting it now..."
  sudo systemctl start nginx
else
  echo "Nginx is running."
fi
