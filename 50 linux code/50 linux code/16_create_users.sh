#!/bin/bash
while read user; do
  sudo useradd "$user"
  echo "User $user created."
done < userlist.txt
