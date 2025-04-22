#!/bin/bash
to="admin@example.com"
subject="System Summary Report - $(date '+%F %T')"
body=$(top -b -n1 | head -n 10)

echo "$body" | mail -s "$subject" "$to"

echo "System summary emailed to $to."