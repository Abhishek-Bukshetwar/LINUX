#!/bin/bash
echo "Top 5 Memory-Consuming Processes:"
echo "----------------------------------"
ps aux --sort=-%mem | head -n 6
