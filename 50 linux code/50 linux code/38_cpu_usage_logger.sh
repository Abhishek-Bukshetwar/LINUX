#!/bin/bash
while true; do
  top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4"% CPU usage"}' >> cpu_log.txt
  sleep 10
done
