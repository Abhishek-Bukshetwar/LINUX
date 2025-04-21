#!/bin/bash
to="admin@example.com"
subject="System Summary Report"
body=$(top -b -n1 | head -n 10)
echo "$body" | mail -s "$subject" "$to"
