#!/bin/bash
while true; do
  cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print $2}')
  echo "Current CPU Usage: $cpu_usage%"
  sleep 5
done

