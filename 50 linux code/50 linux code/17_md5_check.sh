#!/bin/bash
#!/bin/bash

file="file.txt"
original="original.md5"
current="current.md5"

md5sum "$file" > "$current"

if diff "$current" "$original" >/dev/null; then
  echo "File OK"
else
  echo "File changed"
fi