#!/bin/bash
md5sum file.txt > current.md5
diff current.md5 original.md5 && echo "File OK" || echo "File changed"
