#!/bin/bash
if ! command -v curl > /dev/null; then
  echo "curl not found. Installing..."
  sudo apt-get install curl -y
else
  echo "curl is already installed."
fi
