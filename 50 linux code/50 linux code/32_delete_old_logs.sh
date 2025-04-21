#!/bin/bash
find /var/logs -type f -name "*.log" -mtime +7 -exec rm {} \;
