if ! command -v curl &> /dev/null; then
  echo "curl not found. Installing..."
  if sudo apt-get install curl -y; then
    echo "curl installed successfully."
  else
    echo "Installation failed."
  fi
else
  echo "curl is already installed."
fi
